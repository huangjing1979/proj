module tb;
reg clk;
reg rstn;

initial begin
    clk = 1'b0;
    rstn = 1'b0;
    fork
    begin
        forever clk = #5 ~clk;
    end
    join
    
    repeat (5) @ (posedge clk);
    rstn = 1'b1;
end



// axi full wire signal definition

wire [1-1 : 0] axi_full_awid;
wire [31 : 0]  axi_full_awaddr;
wire [7 : 0]   axi_full_awlen;
wire [2 : 0]   axi_full_awsize;
wire [1 : 0]   axi_full_awburst;
wire           axi_full_awlock;
wire [3 : 0]   axi_full_awcache;
wire [2 : 0]   axi_full_awprot;
wire [3 : 0]   axi_full_awqos;
wire [3 : 0]   axi_full_awregion;
wire           axi_full_awvalid;
wire           axi_full_awready;
wire [31: 0]   axi_full_wdata;
wire [3 : 0]   axi_full_wstrb;
wire           axi_full_wlast;
wire           axi_full_wvalid;
wire           axi_full_wready;
wire [1-1 : 0] axi_full_bid;
wire [1   : 0] axi_full_bresp;
wire           axi_full_bvalid;
wire           axi_full_bready;
wire [1-1 : 0] axi_full_arid;
wire [ 31 : 0] axi_full_araddr;
wire [  7 : 0] axi_full_arlen;
wire [  2 : 0] axi_full_arsize;
wire [1 : 0]   axi_full_arburst;
wire           axi_full_arlock;
wire [  3 : 0] axi_full_arcache;
wire [  2 : 0] axi_full_arprot;
wire [  3 : 0] axi_full_arqos;
wire [  3 : 0] axi_full_arregion;
wire           axi_full_arvalid;
wire           axi_full_arready;
wire [  1-1:0] axi_full_rid;
wire [   31:0] axi_full_rdata;
wire [1:0]     axi_full_rresp;
wire           axi_full_rlast;
wire           axi_full_rvalid;
wire           axi_full_rready;


// desc axi lite wire signals
wire [31:0] axi_desc_awaddr;
wire [ 2:0] axi_desc_awprot;
wire        axi_desc_awvalid;
wire        axi_desc_awready;
wire [31:0] axi_desc_wdata;
wire [3 :0] axi_desc_wstrb;
wire        axi_desc_wvalid;
wire        axi_desc_wready;
wire [1:0]  axi_desc_bresp;
wire        axi_desc_bvalid;
wire        axi_desc_bready;
wire [31:0] axi_desc_araddr;
wire [ 2:0] axi_desc_arprot;
wire        axi_desc_arvalid;
wire        axi_desc_arready;
wire [31:0] axi_desc_rdata;
wire [ 1:0] axi_desc_rresp;
wire        axi_desc_rvalid;
wire        axi_desc_rready;


// conf axi list wire signals
wire [6:0] axi_conf_awaddr;
wire [ 2:0] axi_conf_awprot;
wire        axi_conf_awvalid;
wire        axi_conf_awready;
wire [31:0] axi_conf_wdata;
wire [3 :0] axi_conf_wstrb;
wire        axi_conf_wvalid;
wire        axi_conf_wready;
wire [1:0]  axi_conf_bresp;
wire        axi_conf_bvalid;
wire        axi_conf_bready;
wire [6:0] axi_conf_araddr;
wire [ 2:0] axi_conf_arprot;
wire        axi_conf_arvalid;
wire        axi_conf_arready;
wire [31:0] axi_conf_rdata;
wire [ 1:0] axi_conf_rresp;
wire        axi_conf_rvalid;
wire        axi_conf_rready;



// dut declaration
myip_v1_0       dut(
        .s00_axi_lite_aclk       (clk                ),
        .s00_axi_lite_aresetn    (rstn               ),
        .s00_axi_lite_awaddr     (axi_conf_awaddr    ),
        .s00_axi_lite_awprot     (axi_conf_awprot    ),
        .s00_axi_lite_awvalid    (axi_conf_awvalid   ),
        .s00_axi_lite_awready    (axi_conf_awready   ),
        .s00_axi_lite_wdata      (axi_conf_wdata     ),
        .s00_axi_lite_wstrb      (axi_conf_wstrb     ),
        .s00_axi_lite_wvalid     (axi_conf_wvalid    ),
        .s00_axi_lite_wready     (axi_conf_wready    ),
        .s00_axi_lite_bresp      (axi_conf_bresp     ),
        .s00_axi_lite_bvalid     (axi_conf_bvalid    ),
        .s00_axi_lite_bready     (axi_conf_bready    ),
        .s00_axi_lite_araddr     (axi_conf_araddr    ),
        .s00_axi_lite_arprot     (axi_conf_arprot    ),
        .s00_axi_lite_arvalid    (axi_conf_arvalid   ),
        .s00_axi_lite_arready    (axi_conf_arready   ),
        .s00_axi_lite_rdata      (axi_conf_rdata     ),
        .s00_axi_lite_rresp      (axi_conf_rresp     ),
        .s00_axi_lite_rvalid     (axi_conf_rvalid    ),
        .s00_axi_lite_rready     (axi_conf_rready    ),

        .m00_axi_lite_init_axi_txn   (1'b1               ), // tie to constant. don't use
        .m00_axi_lite_error          (                   ),
        .m00_axi_lite_txn_done       (                   ),
        .m00_axi_lite_aclk           (clk                ),
        .m00_axi_lite_aresetn        (rstn               ),
        .m00_axi_lite_awaddr         (axi_desc_awaddr    ),
        .m00_axi_lite_awprot         (axi_desc_awprot    ),
        .m00_axi_lite_awvalid        (axi_desc_awvalid    ),
        .m00_axi_lite_awready        (axi_desc_awready    ),
        .m00_axi_lite_wdata          (axi_desc_wdata        ),
        .m00_axi_lite_wstrb          (axi_desc_wstrb        ),
        .m00_axi_lite_wvalid         (axi_desc_wvalid    ),
        .m00_axi_lite_wready         (axi_desc_wready    ),
        .m00_axi_lite_bresp          (axi_desc_bresp        ),
        .m00_axi_lite_bvalid         (axi_desc_bvalid    ),
        .m00_axi_lite_bready         (axi_desc_bready    ),
        .m00_axi_lite_araddr         (axi_desc_araddr    ),
        .m00_axi_lite_arprot         (axi_desc_arprot    ),
        .m00_axi_lite_arvalid        (axi_desc_arvalid    ),
        .m00_axi_lite_arready        (axi_desc_arready    ),
        .m00_axi_lite_rdata          (axi_desc_rdata        ),
        .m00_axi_lite_rresp          (axi_desc_rresp        ),
        .m00_axi_lite_rvalid         (axi_desc_rvalid    ),
        .m00_axi_lite_rready         (axi_desc_rready    ),

        .m01_axi_init_axi_txn    (1'b1               ),       // tie to constant, don't use
        .m01_axi_txn_done        (                   ),       // output float
        .m01_axi_error           (                   ),       // output float
        .m01_axi_aclk            (clk                ),
        .m01_axi_aresetn         (rstn               ),
        .m01_axi_awid            (axi_full_awid      ),
        .m01_axi_awaddr          (axi_full_awaddr    ),
        .m01_axi_awlen           (axi_full_awlen     ),
        .m01_axi_awsize          (axi_full_awsize    ),
        .m01_axi_awburst         (axi_full_awburst   ),
        .m01_axi_awlock          (axi_full_awlock    ),
        .m01_axi_awcache         (axi_full_awcache   ),
        .m01_axi_awprot          (axi_full_awprot    ),
        .m01_axi_awqos           (axi_full_awqos     ),
        .m01_axi_awuser          (                   ),
        .m01_axi_awvalid         (axi_full_awvalid   ),
        .m01_axi_awready         (axi_full_awready   ),
        .m01_axi_wdata           (axi_full_wdata     ),
        .m01_axi_wstrb           (axi_full_wstrb     ),
        .m01_axi_wlast           (axi_full_wlast     ),
        .m01_axi_wuser           (                   ),
        .m01_axi_wvalid          (axi_full_wvalid    ),
        .m01_axi_wready          (axi_full_wready    ),
        .m01_axi_bid             (axi_full_bid       ),
        .m01_axi_bresp           (axi_full_bresp     ),
        .m01_axi_buser           (                   ),
        .m01_axi_bvalid          (axi_full_bvalid    ),
        .m01_axi_bready          (axi_full_bready    ),
        .m01_axi_arid            (axi_full_arid      ),
        .m01_axi_araddr          (axi_full_araddr    ),
        .m01_axi_arlen           (axi_full_arlen     ),
        .m01_axi_arsize          (axi_full_arsize    ),
        .m01_axi_arburst         (axi_full_arburst   ),
        .m01_axi_arlock          (axi_full_arlock    ),
        .m01_axi_arcache         (axi_full_arcache   ),
        .m01_axi_arprot          (axi_full_arprot    ),
        .m01_axi_arqos           (axi_full_arqos     ),
        .m01_axi_aruser          (                   ),
        .m01_axi_arvalid         (axi_full_arvalid   ),
        .m01_axi_arready         (axi_full_arready   ),
        .m01_axi_rid             (axi_full_rid       ),
        .m01_axi_rdata           (axi_full_rdata     ),
        .m01_axi_rresp           (axi_full_rresp     ),
        .m01_axi_rlast           (axi_full_rlast     ),
        .m01_axi_ruser           (                   ),
        .m01_axi_rvalid          (axi_full_rvalid    ),
        .m01_axi_rready          (axi_full_rready    )
);


myip_test_v1_0_S01_AXI   axi_full_slave(
        .S_AXI_ACLK      (clk                ),
        .S_AXI_ARESETN   (rstn               ),
        .S_AXI_AWID      (axi_full_awid      ),
        .S_AXI_AWADDR    (axi_full_awaddr    ),
        .S_AXI_AWLEN     (axi_full_awlen     ),
        .S_AXI_AWSIZE    (axi_full_awsize    ),
        .S_AXI_AWBURST   (axi_full_awburst   ),
        .S_AXI_AWLOCK    (axi_full_awlock    ),
        .S_AXI_AWCACHE   (axi_full_awcache   ),
        .S_AXI_AWPROT    (axi_full_awprot    ),
        .S_AXI_AWQOS     (axi_full_awqos     ),
        .S_AXI_AWREGION  (axi_full_awregion  ),
        .S_AXI_AWUSER    (                   ), // empty
        .S_AXI_AWVALID   (axi_full_awvalid   ),
        .S_AXI_AWREADY   (axi_full_awready   ),
        .S_AXI_WDATA     (axi_full_wdata     ),
        .S_AXI_WSTRB     (axi_full_wstrb     ),
        .S_AXI_WLAST     (axi_full_wlast     ),
        .S_AXI_WUSER     (                   ), // empty
        .S_AXI_WVALID    (axi_full_wvalid    ),
        .S_AXI_WREADY    (axi_full_wready    ),
        .S_AXI_BID       (axi_full_bid       ),
        .S_AXI_BRESP     (axi_full_bresp     ),
        .S_AXI_BUSER     (                   ), // empty
        .S_AXI_BVALID    (axi_full_bvalid    ),
        .S_AXI_BREADY    (axi_full_bready    ),
        .S_AXI_ARID      (axi_full_arid      ),
        .S_AXI_ARADDR    (axi_full_araddr    ),
        .S_AXI_ARLEN     (axi_full_arlen     ),
        .S_AXI_ARSIZE    (axi_full_arsize    ),
        .S_AXI_ARBURST   (axi_full_arburst   ),
        .S_AXI_ARLOCK    (axi_full_arlock    ),
        .S_AXI_ARCACHE   (axi_full_arcache   ),
        .S_AXI_ARPROT    (axi_full_arprot    ),
        .S_AXI_ARQOS     (axi_full_arqos     ),
        .S_AXI_ARREGION  (axi_full_arregion  ),
        .S_AXI_ARUSER    (                   ), // empty
        .S_AXI_ARVALID   (axi_full_arvalid   ),
        .S_AXI_ARREADY   (axi_full_arready   ),
        .S_AXI_RID       (axi_full_rid       ),
        .S_AXI_RDATA     (axi_full_rdata     ),
        .S_AXI_RRESP     (axi_full_rresp     ),
        .S_AXI_RLAST     (axi_full_rlast     ),
        .S_AXI_RUSER     (                   ), // empty
        .S_AXI_RVALID    (axi_full_rvalid    ),
        .S_AXI_RREADY    (axi_full_rready    )
);


myip_test_v1_0_S00_AXI  axi_lite_slave(
        .S_AXI_ACLK          (clk                ),
        .S_AXI_ARESETN       (rstn               ),
        .S_AXI_AWADDR        (axi_desc_awaddr    ),
        .S_AXI_AWPROT        (axi_desc_awprot    ),
        .S_AXI_AWVALID       (axi_desc_awvalid   ),
        .S_AXI_AWREADY       (axi_desc_awready   ),
        .S_AXI_WDATA         (axi_desc_wdata     ),
        .S_AXI_WSTRB         (axi_desc_wstrb     ),
        .S_AXI_WVALID        (axi_desc_wvalid    ),
        .S_AXI_WREADY        (axi_desc_wready    ),
        .S_AXI_BRESP         (axi_desc_bresp     ),
        .S_AXI_BVALID        (axi_desc_bvalid    ),
        .S_AXI_BREADY        (axi_desc_bready    ),
        .S_AXI_ARADDR        (axi_desc_araddr    ),
        .S_AXI_ARPROT        (axi_desc_arprot    ),
        .S_AXI_ARVALID       (axi_desc_arvalid   ),
        .S_AXI_ARREADY       (axi_desc_arready   ),
        .S_AXI_RDATA         (axi_desc_rdata     ),
        .S_AXI_RRESP         (axi_desc_rresp     ),
        .S_AXI_RVALID        (axi_desc_rvalid    ),
        .S_AXI_RREADY        (axi_desc_rready    )
);

myip_test_v1_0_M00_AXI  axi_conf_master(
        .INIT_AXI_TXN      (1'b1             ),
        .ERROR             (                 ),
        .TXN_DONE          (                 ),
        .M_AXI_ACLK        (clk              ),
        .M_AXI_ARESETN     (rstn             ),
        .M_AXI_AWADDR      (axi_conf_awaddr  ),
        .M_AXI_AWPROT      (axi_conf_awprot  ),
        .M_AXI_AWVALID     (axi_conf_awvalid ),
        .M_AXI_AWREADY     (axi_conf_awready ),
        .M_AXI_WDATA       (axi_conf_wdata   ),
        .M_AXI_WSTRB       (axi_conf_wstrb   ),
        .M_AXI_WVALID      (axi_conf_wvalid  ),
        .M_AXI_WREADY      (axi_conf_wready  ),
        .M_AXI_BRESP       (axi_conf_bresp   ),
        .M_AXI_BVALID      (axi_conf_bvalid  ),
        .M_AXI_BREADY      (axi_conf_bready  ),
        .M_AXI_ARADDR      (axi_conf_araddr  ),
        .M_AXI_ARPROT      (axi_conf_arprot  ),
        .M_AXI_ARVALID     (axi_conf_arvalid ),
        .M_AXI_ARREADY     (axi_conf_arready ),
        .M_AXI_RDATA       (axi_conf_rdata   ),
        .M_AXI_RRESP       (axi_conf_rresp   ),
        .M_AXI_RVALID      (axi_conf_rvalid  ),
        .M_AXI_RREADY      (axi_conf_rready  )
);


endmodule
