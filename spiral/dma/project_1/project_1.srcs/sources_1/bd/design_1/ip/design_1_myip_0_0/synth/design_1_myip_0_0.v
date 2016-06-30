// (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: user.org:user:myip:1.0
// IP Revision: 3

(* X_CORE_INFO = "myip_v1_0,Vivado 2015.4" *)
(* CHECK_LICENSE_TYPE = "design_1_myip_0_0,myip_v1_0,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_myip_0_0 (
  m01_axi_awid,
  m01_axi_awaddr,
  m01_axi_awlen,
  m01_axi_awsize,
  m01_axi_awburst,
  m01_axi_awlock,
  m01_axi_awcache,
  m01_axi_awprot,
  m01_axi_awqos,
  m01_axi_awvalid,
  m01_axi_awready,
  m01_axi_wdata,
  m01_axi_wstrb,
  m01_axi_wlast,
  m01_axi_wvalid,
  m01_axi_wready,
  m01_axi_bid,
  m01_axi_bresp,
  m01_axi_bvalid,
  m01_axi_bready,
  m01_axi_arid,
  m01_axi_araddr,
  m01_axi_arlen,
  m01_axi_arsize,
  m01_axi_arburst,
  m01_axi_arlock,
  m01_axi_arcache,
  m01_axi_arprot,
  m01_axi_arqos,
  m01_axi_arvalid,
  m01_axi_arready,
  m01_axi_rid,
  m01_axi_rdata,
  m01_axi_rresp,
  m01_axi_rlast,
  m01_axi_rvalid,
  m01_axi_rready,
  m01_axi_aclk,
  m01_axi_aresetn,
  m01_axi_init_axi_txn,
  m01_axi_txn_done,
  m01_axi_error,
  m00_axi_lite_awaddr,
  m00_axi_lite_awprot,
  m00_axi_lite_awvalid,
  m00_axi_lite_awready,
  m00_axi_lite_wdata,
  m00_axi_lite_wstrb,
  m00_axi_lite_wvalid,
  m00_axi_lite_wready,
  m00_axi_lite_bresp,
  m00_axi_lite_bvalid,
  m00_axi_lite_bready,
  m00_axi_lite_araddr,
  m00_axi_lite_arprot,
  m00_axi_lite_arvalid,
  m00_axi_lite_arready,
  m00_axi_lite_rdata,
  m00_axi_lite_rresp,
  m00_axi_lite_rvalid,
  m00_axi_lite_rready,
  m00_axi_lite_aclk,
  m00_axi_lite_aresetn,
  m00_axi_lite_init_axi_txn,
  m00_axi_lite_error,
  m00_axi_lite_txn_done,
  s00_axi_lite_awaddr,
  s00_axi_lite_awprot,
  s00_axi_lite_awvalid,
  s00_axi_lite_awready,
  s00_axi_lite_wdata,
  s00_axi_lite_wstrb,
  s00_axi_lite_wvalid,
  s00_axi_lite_wready,
  s00_axi_lite_bresp,
  s00_axi_lite_bvalid,
  s00_axi_lite_bready,
  s00_axi_lite_araddr,
  s00_axi_lite_arprot,
  s00_axi_lite_arvalid,
  s00_axi_lite_arready,
  s00_axi_lite_rdata,
  s00_axi_lite_rresp,
  s00_axi_lite_rvalid,
  s00_axi_lite_rready,
  s00_axi_lite_aclk,
  s00_axi_lite_aresetn
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWID" *)
output wire [0 : 0] m01_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWADDR" *)
output wire [31 : 0] m01_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWLEN" *)
output wire [7 : 0] m01_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWSIZE" *)
output wire [2 : 0] m01_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWBURST" *)
output wire [1 : 0] m01_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWLOCK" *)
output wire m01_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWCACHE" *)
output wire [3 : 0] m01_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWPROT" *)
output wire [2 : 0] m01_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWQOS" *)
output wire [3 : 0] m01_axi_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWVALID" *)
output wire m01_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWREADY" *)
input wire m01_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WDATA" *)
output wire [31 : 0] m01_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WSTRB" *)
output wire [3 : 0] m01_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WLAST" *)
output wire m01_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WVALID" *)
output wire m01_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WREADY" *)
input wire m01_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BID" *)
input wire [0 : 0] m01_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BRESP" *)
input wire [1 : 0] m01_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BVALID" *)
input wire m01_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BREADY" *)
output wire m01_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARID" *)
output wire [0 : 0] m01_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARADDR" *)
output wire [31 : 0] m01_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARLEN" *)
output wire [7 : 0] m01_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARSIZE" *)
output wire [2 : 0] m01_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARBURST" *)
output wire [1 : 0] m01_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARLOCK" *)
output wire m01_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARCACHE" *)
output wire [3 : 0] m01_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARPROT" *)
output wire [2 : 0] m01_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARQOS" *)
output wire [3 : 0] m01_axi_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARVALID" *)
output wire m01_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARREADY" *)
input wire m01_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RID" *)
input wire [0 : 0] m01_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RDATA" *)
input wire [31 : 0] m01_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RRESP" *)
input wire [1 : 0] m01_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RLAST" *)
input wire m01_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RVALID" *)
input wire m01_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RREADY" *)
output wire m01_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M01_AXI_CLK CLK" *)
input wire m01_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M01_AXI_RST RST" *)
input wire m01_axi_aresetn;
input wire m01_axi_init_axi_txn;
output wire m01_axi_txn_done;
output wire m01_axi_error;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_LITE AWADDR" *)
output wire [31 : 0] m00_axi_lite_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_LITE AWPROT" *)
output wire [2 : 0] m00_axi_lite_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_LITE AWVALID" *)
output wire m00_axi_lite_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_LITE AWREADY" *)
input wire m00_axi_lite_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_LITE WDATA" *)
output wire [31 : 0] m00_axi_lite_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_LITE WSTRB" *)
output wire [3 : 0] m00_axi_lite_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_LITE WVALID" *)
output wire m00_axi_lite_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_LITE WREADY" *)
input wire m00_axi_lite_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_LITE BRESP" *)
input wire [1 : 0] m00_axi_lite_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_LITE BVALID" *)
input wire m00_axi_lite_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_LITE BREADY" *)
output wire m00_axi_lite_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_LITE ARADDR" *)
output wire [31 : 0] m00_axi_lite_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_LITE ARPROT" *)
output wire [2 : 0] m00_axi_lite_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_LITE ARVALID" *)
output wire m00_axi_lite_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_LITE ARREADY" *)
input wire m00_axi_lite_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_LITE RDATA" *)
input wire [31 : 0] m00_axi_lite_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_LITE RRESP" *)
input wire [1 : 0] m00_axi_lite_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_LITE RVALID" *)
input wire m00_axi_lite_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_LITE RREADY" *)
output wire m00_axi_lite_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXI_LITE_CLK CLK" *)
input wire m00_axi_lite_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXI_LITE_RST RST" *)
input wire m00_axi_lite_aresetn;
input wire m00_axi_lite_init_axi_txn;
output wire m00_axi_lite_error;
output wire m00_axi_lite_txn_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_LITE AWADDR" *)
input wire [6 : 0] s00_axi_lite_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_LITE AWPROT" *)
input wire [2 : 0] s00_axi_lite_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_LITE AWVALID" *)
input wire s00_axi_lite_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_LITE AWREADY" *)
output wire s00_axi_lite_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_LITE WDATA" *)
input wire [31 : 0] s00_axi_lite_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_LITE WSTRB" *)
input wire [3 : 0] s00_axi_lite_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_LITE WVALID" *)
input wire s00_axi_lite_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_LITE WREADY" *)
output wire s00_axi_lite_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_LITE BRESP" *)
output wire [1 : 0] s00_axi_lite_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_LITE BVALID" *)
output wire s00_axi_lite_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_LITE BREADY" *)
input wire s00_axi_lite_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_LITE ARADDR" *)
input wire [6 : 0] s00_axi_lite_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_LITE ARPROT" *)
input wire [2 : 0] s00_axi_lite_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_LITE ARVALID" *)
input wire s00_axi_lite_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_LITE ARREADY" *)
output wire s00_axi_lite_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_LITE RDATA" *)
output wire [31 : 0] s00_axi_lite_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_LITE RRESP" *)
output wire [1 : 0] s00_axi_lite_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_LITE RVALID" *)
output wire s00_axi_lite_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI_LITE RREADY" *)
input wire s00_axi_lite_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_LITE_CLK CLK" *)
input wire s00_axi_lite_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_LITE_RST RST" *)
input wire s00_axi_lite_aresetn;

  myip_v1_0 #(
    .C_M01_AXI_TARGET_SLAVE_BASE_ADDR(32'H40000000),  // Base address of targeted slave
    .C_M01_AXI_BURST_LEN(16),  // Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths
    .C_M01_AXI_ID_WIDTH(1),  // Thread ID Width
    .C_M01_AXI_ADDR_WIDTH(32),  // Width of Address Bus
    .C_M01_AXI_DATA_WIDTH(32),  // Width of Data Bus
    .C_M01_AXI_AWUSER_WIDTH(1),  // Width of User Write Address Bus
    .C_M01_AXI_ARUSER_WIDTH(1),  // Width of User Read Address Bus
    .C_M01_AXI_WUSER_WIDTH(1),  // Width of User Write Data Bus
    .C_M01_AXI_RUSER_WIDTH(1),  // Width of User Read Data Bus
    .C_M01_AXI_BUSER_WIDTH(1),  // Width of User Response Bus
    .C_M00_AXI_LITE_START_DATA_VALUE(32'HAA000000),  // The master will start generating data from the C_M_START_DATA_VALUE value
    .C_M00_AXI_LITE_TARGET_SLAVE_BASE_ADDR(32'H40000000),  // The master requires a target slave base address.
    // The master will initiate read and write transactions on the slave with base address specified here as a parameter.
    .C_M00_AXI_LITE_ADDR_WIDTH(32),  // Width of M_AXI address bus. 
    // The master generates the read and write addresses of width specified as C_M_AXI_ADDR_WIDTH.
    .C_M00_AXI_LITE_DATA_WIDTH(32),  // Width of M_AXI data bus. 
    // The master issues write data and accept read data where the width of the data bus is C_M_AXI_DATA_WIDTH
    .C_M00_AXI_LITE_TRANSACTIONS_NUM(4),  // Transaction number is the number of write 
    // and read transactions the master will perform as a part of this example memory test.
    .C_S00_AXI_LITE_DATA_WIDTH(32),  // Width of S_AXI data bus
    .C_S00_AXI_LITE_ADDR_WIDTH(7)  // Width of S_AXI address bus
  ) inst (
    .m01_axi_awid(m01_axi_awid),
    .m01_axi_awaddr(m01_axi_awaddr),
    .m01_axi_awlen(m01_axi_awlen),
    .m01_axi_awsize(m01_axi_awsize),
    .m01_axi_awburst(m01_axi_awburst),
    .m01_axi_awlock(m01_axi_awlock),
    .m01_axi_awcache(m01_axi_awcache),
    .m01_axi_awprot(m01_axi_awprot),
    .m01_axi_awqos(m01_axi_awqos),
    .m01_axi_awuser(),
    .m01_axi_awvalid(m01_axi_awvalid),
    .m01_axi_awready(m01_axi_awready),
    .m01_axi_wdata(m01_axi_wdata),
    .m01_axi_wstrb(m01_axi_wstrb),
    .m01_axi_wlast(m01_axi_wlast),
    .m01_axi_wuser(),
    .m01_axi_wvalid(m01_axi_wvalid),
    .m01_axi_wready(m01_axi_wready),
    .m01_axi_bid(m01_axi_bid),
    .m01_axi_bresp(m01_axi_bresp),
    .m01_axi_buser(1'B0),
    .m01_axi_bvalid(m01_axi_bvalid),
    .m01_axi_bready(m01_axi_bready),
    .m01_axi_arid(m01_axi_arid),
    .m01_axi_araddr(m01_axi_araddr),
    .m01_axi_arlen(m01_axi_arlen),
    .m01_axi_arsize(m01_axi_arsize),
    .m01_axi_arburst(m01_axi_arburst),
    .m01_axi_arlock(m01_axi_arlock),
    .m01_axi_arcache(m01_axi_arcache),
    .m01_axi_arprot(m01_axi_arprot),
    .m01_axi_arqos(m01_axi_arqos),
    .m01_axi_aruser(),
    .m01_axi_arvalid(m01_axi_arvalid),
    .m01_axi_arready(m01_axi_arready),
    .m01_axi_rid(m01_axi_rid),
    .m01_axi_rdata(m01_axi_rdata),
    .m01_axi_rresp(m01_axi_rresp),
    .m01_axi_rlast(m01_axi_rlast),
    .m01_axi_ruser(1'B0),
    .m01_axi_rvalid(m01_axi_rvalid),
    .m01_axi_rready(m01_axi_rready),
    .m01_axi_aclk(m01_axi_aclk),
    .m01_axi_aresetn(m01_axi_aresetn),
    .m01_axi_init_axi_txn(m01_axi_init_axi_txn),
    .m01_axi_txn_done(m01_axi_txn_done),
    .m01_axi_error(m01_axi_error),
    .m00_axi_lite_awaddr(m00_axi_lite_awaddr),
    .m00_axi_lite_awprot(m00_axi_lite_awprot),
    .m00_axi_lite_awvalid(m00_axi_lite_awvalid),
    .m00_axi_lite_awready(m00_axi_lite_awready),
    .m00_axi_lite_wdata(m00_axi_lite_wdata),
    .m00_axi_lite_wstrb(m00_axi_lite_wstrb),
    .m00_axi_lite_wvalid(m00_axi_lite_wvalid),
    .m00_axi_lite_wready(m00_axi_lite_wready),
    .m00_axi_lite_bresp(m00_axi_lite_bresp),
    .m00_axi_lite_bvalid(m00_axi_lite_bvalid),
    .m00_axi_lite_bready(m00_axi_lite_bready),
    .m00_axi_lite_araddr(m00_axi_lite_araddr),
    .m00_axi_lite_arprot(m00_axi_lite_arprot),
    .m00_axi_lite_arvalid(m00_axi_lite_arvalid),
    .m00_axi_lite_arready(m00_axi_lite_arready),
    .m00_axi_lite_rdata(m00_axi_lite_rdata),
    .m00_axi_lite_rresp(m00_axi_lite_rresp),
    .m00_axi_lite_rvalid(m00_axi_lite_rvalid),
    .m00_axi_lite_rready(m00_axi_lite_rready),
    .m00_axi_lite_aclk(m00_axi_lite_aclk),
    .m00_axi_lite_aresetn(m00_axi_lite_aresetn),
    .m00_axi_lite_init_axi_txn(m00_axi_lite_init_axi_txn),
    .m00_axi_lite_error(m00_axi_lite_error),
    .m00_axi_lite_txn_done(m00_axi_lite_txn_done),
    .s00_axi_lite_awaddr(s00_axi_lite_awaddr),
    .s00_axi_lite_awprot(s00_axi_lite_awprot),
    .s00_axi_lite_awvalid(s00_axi_lite_awvalid),
    .s00_axi_lite_awready(s00_axi_lite_awready),
    .s00_axi_lite_wdata(s00_axi_lite_wdata),
    .s00_axi_lite_wstrb(s00_axi_lite_wstrb),
    .s00_axi_lite_wvalid(s00_axi_lite_wvalid),
    .s00_axi_lite_wready(s00_axi_lite_wready),
    .s00_axi_lite_bresp(s00_axi_lite_bresp),
    .s00_axi_lite_bvalid(s00_axi_lite_bvalid),
    .s00_axi_lite_bready(s00_axi_lite_bready),
    .s00_axi_lite_araddr(s00_axi_lite_araddr),
    .s00_axi_lite_arprot(s00_axi_lite_arprot),
    .s00_axi_lite_arvalid(s00_axi_lite_arvalid),
    .s00_axi_lite_arready(s00_axi_lite_arready),
    .s00_axi_lite_rdata(s00_axi_lite_rdata),
    .s00_axi_lite_rresp(s00_axi_lite_rresp),
    .s00_axi_lite_rvalid(s00_axi_lite_rvalid),
    .s00_axi_lite_rready(s00_axi_lite_rready),
    .s00_axi_lite_aclk(s00_axi_lite_aclk),
    .s00_axi_lite_aresetn(s00_axi_lite_aresetn)
  );
endmodule
