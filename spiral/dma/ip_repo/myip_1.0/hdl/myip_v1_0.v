
`timescale 1 ns / 1 ps

    module myip_v1_0 #
    (
        // Users to add parameters here

        // User parameters ends
        // Do not modify the parameters beyond this line


        // Parameters of Axi Slave Bus Interface S00_AXI_LITE
        parameter integer C_S00_AXI_LITE_DATA_WIDTH    = 32,
        parameter integer C_S00_AXI_LITE_ADDR_WIDTH    = 7,

        // Parameters of Axi Master Bus Interface M00_AXI_LITE
        parameter  C_M00_AXI_LITE_START_DATA_VALUE    = 32'hAA000000,
        parameter  C_M00_AXI_LITE_TARGET_SLAVE_BASE_ADDR    = 32'h00000000,
        parameter integer C_M00_AXI_LITE_ADDR_WIDTH    = 32,
        parameter integer C_M00_AXI_LITE_DATA_WIDTH    = 32,
        parameter integer C_M00_AXI_LITE_TRANSACTIONS_NUM    = 4,

        // Parameters of Axi Master Bus Interface M01_AXI
        parameter  C_M01_AXI_TARGET_SLAVE_BASE_ADDR    = 32'h40000000,
        parameter integer C_M01_AXI_BURST_LEN    = 16,
        parameter integer C_M01_AXI_ID_WIDTH    = 1,
        parameter integer C_M01_AXI_ADDR_WIDTH    = 32,
        parameter integer C_M01_AXI_DATA_WIDTH    = 32,
        parameter integer C_M01_AXI_AWUSER_WIDTH    = 0,
        parameter integer C_M01_AXI_ARUSER_WIDTH    = 0,
        parameter integer C_M01_AXI_WUSER_WIDTH    = 0,
        parameter integer C_M01_AXI_RUSER_WIDTH    = 0,
        parameter integer C_M01_AXI_BUSER_WIDTH    = 0
    )
    (
        // Users to add ports here

        // User ports ends
        // Do not modify the ports beyond this line


        // Ports of Axi Slave Bus Interface S00_AXI_LITE
        input wire  s00_axi_lite_aclk,
        input wire  s00_axi_lite_aresetn,
        input wire [C_S00_AXI_LITE_ADDR_WIDTH-1 : 0] s00_axi_lite_awaddr,
        input wire [2 : 0] s00_axi_lite_awprot,
        input wire  s00_axi_lite_awvalid,
        output wire  s00_axi_lite_awready,
        input wire [C_S00_AXI_LITE_DATA_WIDTH-1 : 0] s00_axi_lite_wdata,
        input wire [(C_S00_AXI_LITE_DATA_WIDTH/8)-1 : 0] s00_axi_lite_wstrb,
        input wire  s00_axi_lite_wvalid,
        output wire  s00_axi_lite_wready,
        output wire [1 : 0] s00_axi_lite_bresp,
        output wire  s00_axi_lite_bvalid,
        input wire  s00_axi_lite_bready,
        input wire [C_S00_AXI_LITE_ADDR_WIDTH-1 : 0] s00_axi_lite_araddr,
        input wire [2 : 0] s00_axi_lite_arprot,
        input wire  s00_axi_lite_arvalid,
        output wire  s00_axi_lite_arready,
        output wire [C_S00_AXI_LITE_DATA_WIDTH-1 : 0] s00_axi_lite_rdata,
        output wire [1 : 0] s00_axi_lite_rresp,
        output wire  s00_axi_lite_rvalid,
        input wire  s00_axi_lite_rready,

        // Ports of Axi Master Bus Interface M00_AXI_LITE
        input wire  m00_axi_lite_init_axi_txn, // tie to constant. don't use
        output wire  m00_axi_lite_error,
        output wire  m00_axi_lite_txn_done,
        input wire  m00_axi_lite_aclk,
        input wire  m00_axi_lite_aresetn,
        output wire [C_M00_AXI_LITE_ADDR_WIDTH-1 : 0] m00_axi_lite_awaddr,
        output wire [2 : 0] m00_axi_lite_awprot,
        output wire  m00_axi_lite_awvalid,
        input wire  m00_axi_lite_awready,
        output wire [C_M00_AXI_LITE_DATA_WIDTH-1 : 0] m00_axi_lite_wdata,
        output wire [C_M00_AXI_LITE_DATA_WIDTH/8-1 : 0] m00_axi_lite_wstrb,
        output wire  m00_axi_lite_wvalid,
        input wire  m00_axi_lite_wready,
        input wire [1 : 0] m00_axi_lite_bresp,
        input wire  m00_axi_lite_bvalid,
        output wire  m00_axi_lite_bready,
        output wire [C_M00_AXI_LITE_ADDR_WIDTH-1 : 0] m00_axi_lite_araddr,
        output wire [2 : 0] m00_axi_lite_arprot,
        output wire  m00_axi_lite_arvalid,
        input wire  m00_axi_lite_arready,
        input wire [C_M00_AXI_LITE_DATA_WIDTH-1 : 0] m00_axi_lite_rdata,
        input wire [1 : 0] m00_axi_lite_rresp,
        input wire  m00_axi_lite_rvalid,
        output wire  m00_axi_lite_rready,

        // Ports of Axi Master Bus Interface M01_AXI
        input wire  m01_axi_init_axi_txn,      // tie to constant, don't use
        output wire  m01_axi_txn_done,
        output wire  m01_axi_error,
        input wire  m01_axi_aclk,
        input wire  m01_axi_aresetn,
        output wire [C_M01_AXI_ID_WIDTH-1 : 0] m01_axi_awid,
        output wire [C_M01_AXI_ADDR_WIDTH-1 : 0] m01_axi_awaddr,
        output wire [7 : 0] m01_axi_awlen,
        output wire [2 : 0] m01_axi_awsize,
        output wire [1 : 0] m01_axi_awburst,
        output wire  m01_axi_awlock,
        output wire [3 : 0] m01_axi_awcache,
        output wire [2 : 0] m01_axi_awprot,
        output wire [3 : 0] m01_axi_awqos,
        output wire [C_M01_AXI_AWUSER_WIDTH-1 : 0] m01_axi_awuser,
        output wire  m01_axi_awvalid,
        input wire  m01_axi_awready,
        output wire [C_M01_AXI_DATA_WIDTH-1 : 0] m01_axi_wdata,
        output wire [C_M01_AXI_DATA_WIDTH/8-1 : 0] m01_axi_wstrb,
        output wire  m01_axi_wlast,
        output wire [C_M01_AXI_WUSER_WIDTH-1 : 0] m01_axi_wuser,
        output wire  m01_axi_wvalid,
        input wire  m01_axi_wready,
        input wire [C_M01_AXI_ID_WIDTH-1 : 0] m01_axi_bid,
        input wire [1 : 0] m01_axi_bresp,
        input wire [C_M01_AXI_BUSER_WIDTH-1 : 0] m01_axi_buser,
        input wire  m01_axi_bvalid,
        output wire  m01_axi_bready,
        output wire [C_M01_AXI_ID_WIDTH-1 : 0] m01_axi_arid,
        output wire [C_M01_AXI_ADDR_WIDTH-1 : 0] m01_axi_araddr,
        output wire [7 : 0] m01_axi_arlen,
        output wire [2 : 0] m01_axi_arsize,
        output wire [1 : 0] m01_axi_arburst,
        output wire  m01_axi_arlock,
        output wire [3 : 0] m01_axi_arcache,
        output wire [2 : 0] m01_axi_arprot,
        output wire [3 : 0] m01_axi_arqos,
        output wire [C_M01_AXI_ARUSER_WIDTH-1 : 0] m01_axi_aruser,
        output wire  m01_axi_arvalid,
        input wire  m01_axi_arready,
        input wire [C_M01_AXI_ID_WIDTH-1 : 0] m01_axi_rid,
        input wire [C_M01_AXI_DATA_WIDTH-1 : 0] m01_axi_rdata,
        input wire [1 : 0] m01_axi_rresp,
        input wire  m01_axi_rlast,
        input wire [C_M01_AXI_RUSER_WIDTH-1 : 0] m01_axi_ruser,
        input wire  m01_axi_rvalid,
        output wire  m01_axi_rready
    );

        wire [C_S00_AXI_LITE_DATA_WIDTH-1:0] top_desc_ptr;
        wire [C_S00_AXI_LITE_DATA_WIDTH-1:0] bot_desc_ptr;

        wire desc_fetch_start; // pulse signal

        wire desc_fetch_halt;  // level signal, indicate stop fetch descriptor

        wire [C_S00_AXI_LITE_DATA_WIDTH-1:0] cur_src_ptr;
        wire                                 cur_src_ptr_valid;
        wire [1:0]                           cur_trans_type;

        wire                          dev_ready;
        wire                          dev_busy;

        wire [C_M01_AXI_DATA_WIDTH-1:0] dma2buf_data;
        wire                          dma2buf_data_valid;
        wire                          buf2dma_data_rd;

        wire [C_M01_AXI_DATA_WIDTH-1:0] buf2dma_data;

        wire [31:0]                     trans_cnt;

// Instantiation of Axi Bus Interface S00_AXI_LITE
    myip_v1_0_S00_AXI_LITE # ( 
        .C_S_AXI_DATA_WIDTH(C_S00_AXI_LITE_DATA_WIDTH),
        .C_S_AXI_ADDR_WIDTH(C_S00_AXI_LITE_ADDR_WIDTH)
    ) myip_v1_0_S00_AXI_LITE_inst (
        // User Signals
        .top_desc_ptr(top_desc_ptr),
        .bot_desc_ptr(bot_desc_ptr),
        .desc_fetch_start (desc_fetch_start),

        .trans_cnt          (trans_cnt),
        // End of User Signals

        .S_AXI_ACLK(s00_axi_lite_aclk),
        .S_AXI_ARESETN(s00_axi_lite_aresetn),
        .S_AXI_AWADDR(s00_axi_lite_awaddr),
        .S_AXI_AWPROT(s00_axi_lite_awprot),
        .S_AXI_AWVALID(s00_axi_lite_awvalid),
        .S_AXI_AWREADY(s00_axi_lite_awready),
        .S_AXI_WDATA(s00_axi_lite_wdata),
        .S_AXI_WSTRB(s00_axi_lite_wstrb),
        .S_AXI_WVALID(s00_axi_lite_wvalid),
        .S_AXI_WREADY(s00_axi_lite_wready),
        .S_AXI_BRESP(s00_axi_lite_bresp),
        .S_AXI_BVALID(s00_axi_lite_bvalid),
        .S_AXI_BREADY(s00_axi_lite_bready),
        .S_AXI_ARADDR(s00_axi_lite_araddr),
        .S_AXI_ARPROT(s00_axi_lite_arprot),
        .S_AXI_ARVALID(s00_axi_lite_arvalid),
        .S_AXI_ARREADY(s00_axi_lite_arready),
        .S_AXI_RDATA(s00_axi_lite_rdata),
        .S_AXI_RRESP(s00_axi_lite_rresp),
        .S_AXI_RVALID(s00_axi_lite_rvalid),
        .S_AXI_RREADY(s00_axi_lite_rready)
    );

// Instantiation of Axi Bus Interface M00_AXI_LITE
    myip_v1_0_M00_AXI_LITE # ( 
        .C_M_START_DATA_VALUE(C_M00_AXI_LITE_START_DATA_VALUE),
        .C_M_TARGET_SLAVE_BASE_ADDR(C_M00_AXI_LITE_TARGET_SLAVE_BASE_ADDR),
        .C_M_AXI_ADDR_WIDTH(C_M00_AXI_LITE_ADDR_WIDTH),
        .C_M_AXI_DATA_WIDTH(C_M00_AXI_LITE_DATA_WIDTH),
        .C_M_TRANSACTIONS_NUM(C_M00_AXI_LITE_TRANSACTIONS_NUM)
    ) myip_v1_0_M00_AXI_LITE_inst (
        .top_desc_ptr           (top_desc_ptr       ),
        .bot_desc_ptr           (bot_desc_ptr       ),
        .desc_fetch_start       (desc_fetch_start   ),


        .desc_fetch_halt        (desc_fetch_halt    ),
        .cur_src_ptr            (cur_src_ptr        ),
        .cur_src_ptr_valid      (cur_src_ptr_valid  ),

        .cur_trans_type         (cur_trans_type     ),

        .cur_dst_ptr            (                   ),

        .INIT_AXI_TXN(m00_axi_lite_init_axi_txn),
        .ERROR(m00_axi_lite_error),
        .TXN_DONE(m00_axi_lite_txn_done),
        .M_AXI_ACLK(m00_axi_lite_aclk),
        .M_AXI_ARESETN(m00_axi_lite_aresetn),
        .M_AXI_AWADDR(m00_axi_lite_awaddr),
        .M_AXI_AWPROT(m00_axi_lite_awprot),
        .M_AXI_AWVALID(m00_axi_lite_awvalid),
        .M_AXI_AWREADY(m00_axi_lite_awready),
        .M_AXI_WDATA(m00_axi_lite_wdata),
        .M_AXI_WSTRB(m00_axi_lite_wstrb),
        .M_AXI_WVALID(m00_axi_lite_wvalid),
        .M_AXI_WREADY(m00_axi_lite_wready),
        .M_AXI_BRESP(m00_axi_lite_bresp),
        .M_AXI_BVALID(m00_axi_lite_bvalid),
        .M_AXI_BREADY(m00_axi_lite_bready),
        .M_AXI_ARADDR(m00_axi_lite_araddr),
        .M_AXI_ARPROT(m00_axi_lite_arprot),
        .M_AXI_ARVALID(m00_axi_lite_arvalid),
        .M_AXI_ARREADY(m00_axi_lite_arready),
        .M_AXI_RDATA(m00_axi_lite_rdata),
        .M_AXI_RRESP(m00_axi_lite_rresp),
        .M_AXI_RVALID(m00_axi_lite_rvalid),
        .M_AXI_RREADY(m00_axi_lite_rready)
    );

// Instantiation of Axi Bus Interface M01_AXI
    myip_v1_0_M01_AXI # ( 
        .C_M_TARGET_SLAVE_BASE_ADDR(C_M01_AXI_TARGET_SLAVE_BASE_ADDR),
        .C_M_AXI_BURST_LEN(C_M01_AXI_BURST_LEN),
        .C_M_AXI_ID_WIDTH(C_M01_AXI_ID_WIDTH),
        .C_M_AXI_ADDR_WIDTH(C_M01_AXI_ADDR_WIDTH),
        .C_M_AXI_DATA_WIDTH(C_M01_AXI_DATA_WIDTH),
        .C_M_AXI_AWUSER_WIDTH(C_M01_AXI_AWUSER_WIDTH),
        .C_M_AXI_ARUSER_WIDTH(C_M01_AXI_ARUSER_WIDTH),
        .C_M_AXI_WUSER_WIDTH(C_M01_AXI_WUSER_WIDTH),
        .C_M_AXI_RUSER_WIDTH(C_M01_AXI_RUSER_WIDTH),
        .C_M_AXI_BUSER_WIDTH(C_M01_AXI_BUSER_WIDTH)
    ) myip_v1_0_M01_AXI_inst (

        .desc_fetch_halt       (desc_fetch_halt),
        .cur_src_ptr           (cur_src_ptr),
        .cur_trans_type        (cur_trans_type),
        .cur_src_ptr_valid     (cur_src_ptr_valid),

        .dma2buf_data           (dma2buf_data           ),
        .dma2buf_data_valid     (dma2buf_data_valid     ),
        .buf2dma_data_rd        (buf2dma_data_rd        ),
                                                        
        .buf2dma_data           (buf2dma_data           ),
                                                        
        .dev_ready              (dev_ready              ),
        .dev_busy               (dev_busy               ),
        .trans_cnt              (trans_cnt              ),


        .INIT_AXI_TXN(m01_axi_init_axi_txn),
        .TXN_DONE(m01_axi_txn_done),
        .ERROR(m01_axi_error),
        .M_AXI_ACLK(m01_axi_aclk),
        .M_AXI_ARESETN(m01_axi_aresetn),
        .M_AXI_AWID(m01_axi_awid),
        .M_AXI_AWADDR(m01_axi_awaddr),
        .M_AXI_AWLEN(m01_axi_awlen),
        .M_AXI_AWSIZE(m01_axi_awsize),
        .M_AXI_AWBURST(m01_axi_awburst),
        .M_AXI_AWLOCK(m01_axi_awlock),
        .M_AXI_AWCACHE(m01_axi_awcache),
        .M_AXI_AWPROT(m01_axi_awprot),
        .M_AXI_AWQOS(m01_axi_awqos),
        .M_AXI_AWUSER(m01_axi_awuser),
        .M_AXI_AWVALID(m01_axi_awvalid),
        .M_AXI_AWREADY(m01_axi_awready),
        .M_AXI_WDATA(m01_axi_wdata),
        .M_AXI_WSTRB(m01_axi_wstrb),
        .M_AXI_WLAST(m01_axi_wlast),
        .M_AXI_WUSER(m01_axi_wuser),
        .M_AXI_WVALID(m01_axi_wvalid),
        .M_AXI_WREADY(m01_axi_wready),
        .M_AXI_BID(m01_axi_bid),
        .M_AXI_BRESP(m01_axi_bresp),
        .M_AXI_BUSER(m01_axi_buser),
        .M_AXI_BVALID(m01_axi_bvalid),
        .M_AXI_BREADY(m01_axi_bready),
        .M_AXI_ARID(m01_axi_arid),
        .M_AXI_ARADDR(m01_axi_araddr),
        .M_AXI_ARLEN(m01_axi_arlen),
        .M_AXI_ARSIZE(m01_axi_arsize),
        .M_AXI_ARBURST(m01_axi_arburst),
        .M_AXI_ARLOCK(m01_axi_arlock),
        .M_AXI_ARCACHE(m01_axi_arcache),
        .M_AXI_ARPROT(m01_axi_arprot),
        .M_AXI_ARQOS(m01_axi_arqos),
        .M_AXI_ARUSER(m01_axi_aruser),
        .M_AXI_ARVALID(m01_axi_arvalid),
        .M_AXI_ARREADY(m01_axi_arready),
        .M_AXI_RID(m01_axi_rid),
        .M_AXI_RDATA(m01_axi_rdata),
        .M_AXI_RRESP(m01_axi_rresp),
        .M_AXI_RLAST(m01_axi_rlast),
        .M_AXI_RUSER(m01_axi_ruser),
        .M_AXI_RVALID(m01_axi_rvalid),
        .M_AXI_RREADY(m01_axi_rready)
    );

    // Add user logic here
    fft_wrapper fft_wrapper_inst(
        .clk                    (m01_axi_aclk           ),
        .rst                    (~m01_axi_aresetn        ),
                                                        
        .dma2buf_data           (dma2buf_data           ),
        .dma2buf_data_valid     (dma2buf_data_valid     ),
        .buf2dma_data_rd        (buf2dma_data_rd        ),
                                                        
        .buf2dma_data           (buf2dma_data           ),
                                                        
        .dev_ready              (dev_ready              ),
        .dev_busy               (dev_busy               )

    );

    // User logic ends

    endmodule
