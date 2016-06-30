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

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
design_1_myip_0_0 your_instance_name (
  .m01_axi_awid(m01_axi_awid),                            // output wire [0 : 0] m01_axi_awid
  .m01_axi_awaddr(m01_axi_awaddr),                        // output wire [31 : 0] m01_axi_awaddr
  .m01_axi_awlen(m01_axi_awlen),                          // output wire [7 : 0] m01_axi_awlen
  .m01_axi_awsize(m01_axi_awsize),                        // output wire [2 : 0] m01_axi_awsize
  .m01_axi_awburst(m01_axi_awburst),                      // output wire [1 : 0] m01_axi_awburst
  .m01_axi_awlock(m01_axi_awlock),                        // output wire m01_axi_awlock
  .m01_axi_awcache(m01_axi_awcache),                      // output wire [3 : 0] m01_axi_awcache
  .m01_axi_awprot(m01_axi_awprot),                        // output wire [2 : 0] m01_axi_awprot
  .m01_axi_awqos(m01_axi_awqos),                          // output wire [3 : 0] m01_axi_awqos
  .m01_axi_awvalid(m01_axi_awvalid),                      // output wire m01_axi_awvalid
  .m01_axi_awready(m01_axi_awready),                      // input wire m01_axi_awready
  .m01_axi_wdata(m01_axi_wdata),                          // output wire [31 : 0] m01_axi_wdata
  .m01_axi_wstrb(m01_axi_wstrb),                          // output wire [3 : 0] m01_axi_wstrb
  .m01_axi_wlast(m01_axi_wlast),                          // output wire m01_axi_wlast
  .m01_axi_wvalid(m01_axi_wvalid),                        // output wire m01_axi_wvalid
  .m01_axi_wready(m01_axi_wready),                        // input wire m01_axi_wready
  .m01_axi_bid(m01_axi_bid),                              // input wire [0 : 0] m01_axi_bid
  .m01_axi_bresp(m01_axi_bresp),                          // input wire [1 : 0] m01_axi_bresp
  .m01_axi_bvalid(m01_axi_bvalid),                        // input wire m01_axi_bvalid
  .m01_axi_bready(m01_axi_bready),                        // output wire m01_axi_bready
  .m01_axi_arid(m01_axi_arid),                            // output wire [0 : 0] m01_axi_arid
  .m01_axi_araddr(m01_axi_araddr),                        // output wire [31 : 0] m01_axi_araddr
  .m01_axi_arlen(m01_axi_arlen),                          // output wire [7 : 0] m01_axi_arlen
  .m01_axi_arsize(m01_axi_arsize),                        // output wire [2 : 0] m01_axi_arsize
  .m01_axi_arburst(m01_axi_arburst),                      // output wire [1 : 0] m01_axi_arburst
  .m01_axi_arlock(m01_axi_arlock),                        // output wire m01_axi_arlock
  .m01_axi_arcache(m01_axi_arcache),                      // output wire [3 : 0] m01_axi_arcache
  .m01_axi_arprot(m01_axi_arprot),                        // output wire [2 : 0] m01_axi_arprot
  .m01_axi_arqos(m01_axi_arqos),                          // output wire [3 : 0] m01_axi_arqos
  .m01_axi_arvalid(m01_axi_arvalid),                      // output wire m01_axi_arvalid
  .m01_axi_arready(m01_axi_arready),                      // input wire m01_axi_arready
  .m01_axi_rid(m01_axi_rid),                              // input wire [0 : 0] m01_axi_rid
  .m01_axi_rdata(m01_axi_rdata),                          // input wire [31 : 0] m01_axi_rdata
  .m01_axi_rresp(m01_axi_rresp),                          // input wire [1 : 0] m01_axi_rresp
  .m01_axi_rlast(m01_axi_rlast),                          // input wire m01_axi_rlast
  .m01_axi_rvalid(m01_axi_rvalid),                        // input wire m01_axi_rvalid
  .m01_axi_rready(m01_axi_rready),                        // output wire m01_axi_rready
  .m01_axi_aclk(m01_axi_aclk),                            // input wire m01_axi_aclk
  .m01_axi_aresetn(m01_axi_aresetn),                      // input wire m01_axi_aresetn
  .m01_axi_init_axi_txn(m01_axi_init_axi_txn),            // input wire m01_axi_init_axi_txn
  .m01_axi_txn_done(m01_axi_txn_done),                    // output wire m01_axi_txn_done
  .m01_axi_error(m01_axi_error),                          // output wire m01_axi_error
  .m00_axi_lite_awaddr(m00_axi_lite_awaddr),              // output wire [31 : 0] m00_axi_lite_awaddr
  .m00_axi_lite_awprot(m00_axi_lite_awprot),              // output wire [2 : 0] m00_axi_lite_awprot
  .m00_axi_lite_awvalid(m00_axi_lite_awvalid),            // output wire m00_axi_lite_awvalid
  .m00_axi_lite_awready(m00_axi_lite_awready),            // input wire m00_axi_lite_awready
  .m00_axi_lite_wdata(m00_axi_lite_wdata),                // output wire [31 : 0] m00_axi_lite_wdata
  .m00_axi_lite_wstrb(m00_axi_lite_wstrb),                // output wire [3 : 0] m00_axi_lite_wstrb
  .m00_axi_lite_wvalid(m00_axi_lite_wvalid),              // output wire m00_axi_lite_wvalid
  .m00_axi_lite_wready(m00_axi_lite_wready),              // input wire m00_axi_lite_wready
  .m00_axi_lite_bresp(m00_axi_lite_bresp),                // input wire [1 : 0] m00_axi_lite_bresp
  .m00_axi_lite_bvalid(m00_axi_lite_bvalid),              // input wire m00_axi_lite_bvalid
  .m00_axi_lite_bready(m00_axi_lite_bready),              // output wire m00_axi_lite_bready
  .m00_axi_lite_araddr(m00_axi_lite_araddr),              // output wire [31 : 0] m00_axi_lite_araddr
  .m00_axi_lite_arprot(m00_axi_lite_arprot),              // output wire [2 : 0] m00_axi_lite_arprot
  .m00_axi_lite_arvalid(m00_axi_lite_arvalid),            // output wire m00_axi_lite_arvalid
  .m00_axi_lite_arready(m00_axi_lite_arready),            // input wire m00_axi_lite_arready
  .m00_axi_lite_rdata(m00_axi_lite_rdata),                // input wire [31 : 0] m00_axi_lite_rdata
  .m00_axi_lite_rresp(m00_axi_lite_rresp),                // input wire [1 : 0] m00_axi_lite_rresp
  .m00_axi_lite_rvalid(m00_axi_lite_rvalid),              // input wire m00_axi_lite_rvalid
  .m00_axi_lite_rready(m00_axi_lite_rready),              // output wire m00_axi_lite_rready
  .m00_axi_lite_aclk(m00_axi_lite_aclk),                  // input wire m00_axi_lite_aclk
  .m00_axi_lite_aresetn(m00_axi_lite_aresetn),            // input wire m00_axi_lite_aresetn
  .m00_axi_lite_init_axi_txn(m00_axi_lite_init_axi_txn),  // input wire m00_axi_lite_init_axi_txn
  .m00_axi_lite_error(m00_axi_lite_error),                // output wire m00_axi_lite_error
  .m00_axi_lite_txn_done(m00_axi_lite_txn_done),          // output wire m00_axi_lite_txn_done
  .s00_axi_lite_awaddr(s00_axi_lite_awaddr),              // input wire [6 : 0] s00_axi_lite_awaddr
  .s00_axi_lite_awprot(s00_axi_lite_awprot),              // input wire [2 : 0] s00_axi_lite_awprot
  .s00_axi_lite_awvalid(s00_axi_lite_awvalid),            // input wire s00_axi_lite_awvalid
  .s00_axi_lite_awready(s00_axi_lite_awready),            // output wire s00_axi_lite_awready
  .s00_axi_lite_wdata(s00_axi_lite_wdata),                // input wire [31 : 0] s00_axi_lite_wdata
  .s00_axi_lite_wstrb(s00_axi_lite_wstrb),                // input wire [3 : 0] s00_axi_lite_wstrb
  .s00_axi_lite_wvalid(s00_axi_lite_wvalid),              // input wire s00_axi_lite_wvalid
  .s00_axi_lite_wready(s00_axi_lite_wready),              // output wire s00_axi_lite_wready
  .s00_axi_lite_bresp(s00_axi_lite_bresp),                // output wire [1 : 0] s00_axi_lite_bresp
  .s00_axi_lite_bvalid(s00_axi_lite_bvalid),              // output wire s00_axi_lite_bvalid
  .s00_axi_lite_bready(s00_axi_lite_bready),              // input wire s00_axi_lite_bready
  .s00_axi_lite_araddr(s00_axi_lite_araddr),              // input wire [6 : 0] s00_axi_lite_araddr
  .s00_axi_lite_arprot(s00_axi_lite_arprot),              // input wire [2 : 0] s00_axi_lite_arprot
  .s00_axi_lite_arvalid(s00_axi_lite_arvalid),            // input wire s00_axi_lite_arvalid
  .s00_axi_lite_arready(s00_axi_lite_arready),            // output wire s00_axi_lite_arready
  .s00_axi_lite_rdata(s00_axi_lite_rdata),                // output wire [31 : 0] s00_axi_lite_rdata
  .s00_axi_lite_rresp(s00_axi_lite_rresp),                // output wire [1 : 0] s00_axi_lite_rresp
  .s00_axi_lite_rvalid(s00_axi_lite_rvalid),              // output wire s00_axi_lite_rvalid
  .s00_axi_lite_rready(s00_axi_lite_rready),              // input wire s00_axi_lite_rready
  .s00_axi_lite_aclk(s00_axi_lite_aclk),                  // input wire s00_axi_lite_aclk
  .s00_axi_lite_aresetn(s00_axi_lite_aresetn)            // input wire s00_axi_lite_aresetn
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

