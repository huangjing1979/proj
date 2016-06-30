module fft_wrapper(
    input wire clk,
    input wire rst,

    input wire [31:0]  dma2buf_data,
    input wire         dma2buf_data_valid,
    input wire         buf2dma_data_rd,

    output wire [31:0] buf2dma_data,

    output wire        dev_ready,
    output wire        dev_busy

);

wire in_fifo_full;
wire out_fifo_full;
wire out_fifo_empty;
reg  in_fifo_rd;
wire next_out;

wire [31:0] in_fifo_data_out;
wire in_fifo_empty;

parameter IDLE        = 3'b000;
parameter FILL_IN     = 3'b001;
parameter COMPUTE     = 3'b010;
parameter FILL_OUT    = 3'b011;
parameter FLUSH_OUT   = 3'b100;

reg [2:0] cur_state, next_state;

always @ (posedge clk)
    if(rst) begin
        cur_state <= IDLE;
    end
    else begin
        cur_state <= next_state;
    end

always @ (*)
begin
    next_state = cur_state;
    case(cur_state)
        IDLE: 
           if(dma2buf_data_valid)
                next_state = FILL_IN;
        FILL_IN:
            if(in_fifo_full)
                next_state = COMPUTE;
        COMPUTE:
            if(next_out)
                next_state = FILL_OUT;
        FILL_OUT:
            if(out_fifo_full)
                next_state = FLUSH_OUT;
        FLUSH_OUT:
            if(out_fifo_empty)
                next_state = IDLE;
    endcase
end

assign dev_ready = (cur_state == IDLE) || (cur_state == FILL_IN);
assign dev_busy = (cur_state == COMPUTE) || (cur_state == FILL_OUT) || (cur_state == FILL_IN);

fifo_buffer  #(
            .stack_width        (32),
            .stack_height       (32),
            .AE_level           (2),
            .AF_level           (30),
            .HF_level           (16)
        ) in_fifo(
            .clk                (clk                ),
            .rst                (rst                ),
            .stack_full         (in_fifo_full       ),
            .stack_almost_full  (),
            .stack_half_full    (),
            .stack_almost_empty (),
            .stack_empty        (in_fifo_empty),
                                                   
            .data_in            (dma2buf_data    ),
            .write_to_stack     (dma2buf_data_valid),

            .read_from_stack    (in_fifo_rd),
            .data_out           (in_fifo_data_out           )
        );

wire [7:0] X0, X1, X2, X3;
wire [7:0] Y0, Y1, Y2, Y3;

assign {X3, X2, X1, X0} =  in_fifo_data_out;

reg in_fifo_full_d;

always @ (posedge clk)
    if(rst)
        in_fifo_full_d <= 0;
    else
        in_fifo_full_d <= in_fifo_full;

wire next = in_fifo_full & ~in_fifo_full_d;

always @ (posedge clk)
    if(rst)
        in_fifo_rd <= 1'b0;
    else if(next)
        in_fifo_rd <= 1'b1;
    else if(in_fifo_empty)
        in_fifo_rd <= 1'b0;


        

dft_top    dft_top_inst(
    .clk (clk),
    .reset(rst),
    .next(next),
    .next_out(next_out),

    .X0 (X0),
    .X1 (X1),
    .X2 (X2),
    .X3 (X3),

    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

reg out_fifo_wr;

wire out_fifo_am_full;

always @ (posedge clk)
    if(rst)
        out_fifo_wr <= 'h0;
    else if(next_out)
        out_fifo_wr <= 'h1;
    else if(out_fifo_am_full)
        out_fifo_wr <= 'h0;
        

fifo_buffer  #(
            .stack_width        (32),
            .stack_height       (32),
            .AE_level           (1),
            .AF_level           (31),
            .HF_level           (16)
        ) out_fifo(
            .clk                (clk                ),
            .rst                (rst                ),
            .stack_full         (out_fifo_full      ),
            .stack_almost_full  (out_fifo_am_full),
            .stack_half_full    (),
            .stack_almost_empty (),
            .stack_empty        (out_fifo_empty),
                                                   
            .data_in            ({Y3, Y2, Y1, Y0}),
            .write_to_stack     (out_fifo_wr ),

            .read_from_stack    (buf2dma_data_rd),
            .data_out           (buf2dma_data)
        );

endmodule
