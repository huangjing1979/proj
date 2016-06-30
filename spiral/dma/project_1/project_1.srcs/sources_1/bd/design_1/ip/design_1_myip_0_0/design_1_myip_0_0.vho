-- (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: user.org:user:myip:1.0
-- IP Revision: 3

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT design_1_myip_0_0
  PORT (
    m01_axi_awid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m01_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m01_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m01_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m01_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m01_axi_awlock : OUT STD_LOGIC;
    m01_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m01_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m01_axi_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m01_axi_awvalid : OUT STD_LOGIC;
    m01_axi_awready : IN STD_LOGIC;
    m01_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m01_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m01_axi_wlast : OUT STD_LOGIC;
    m01_axi_wvalid : OUT STD_LOGIC;
    m01_axi_wready : IN STD_LOGIC;
    m01_axi_bid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m01_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m01_axi_bvalid : IN STD_LOGIC;
    m01_axi_bready : OUT STD_LOGIC;
    m01_axi_arid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m01_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m01_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m01_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m01_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m01_axi_arlock : OUT STD_LOGIC;
    m01_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m01_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m01_axi_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m01_axi_arvalid : OUT STD_LOGIC;
    m01_axi_arready : IN STD_LOGIC;
    m01_axi_rid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m01_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m01_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m01_axi_rlast : IN STD_LOGIC;
    m01_axi_rvalid : IN STD_LOGIC;
    m01_axi_rready : OUT STD_LOGIC;
    m01_axi_aclk : IN STD_LOGIC;
    m01_axi_aresetn : IN STD_LOGIC;
    m01_axi_init_axi_txn : IN STD_LOGIC;
    m01_axi_txn_done : OUT STD_LOGIC;
    m01_axi_error : OUT STD_LOGIC;
    m00_axi_lite_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_lite_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m00_axi_lite_awvalid : OUT STD_LOGIC;
    m00_axi_lite_awready : IN STD_LOGIC;
    m00_axi_lite_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_lite_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axi_lite_wvalid : OUT STD_LOGIC;
    m00_axi_lite_wready : IN STD_LOGIC;
    m00_axi_lite_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m00_axi_lite_bvalid : IN STD_LOGIC;
    m00_axi_lite_bready : OUT STD_LOGIC;
    m00_axi_lite_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_lite_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m00_axi_lite_arvalid : OUT STD_LOGIC;
    m00_axi_lite_arready : IN STD_LOGIC;
    m00_axi_lite_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_lite_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m00_axi_lite_rvalid : IN STD_LOGIC;
    m00_axi_lite_rready : OUT STD_LOGIC;
    m00_axi_lite_aclk : IN STD_LOGIC;
    m00_axi_lite_aresetn : IN STD_LOGIC;
    m00_axi_lite_init_axi_txn : IN STD_LOGIC;
    m00_axi_lite_error : OUT STD_LOGIC;
    m00_axi_lite_txn_done : OUT STD_LOGIC;
    s00_axi_lite_awaddr : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    s00_axi_lite_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_lite_awvalid : IN STD_LOGIC;
    s00_axi_lite_awready : OUT STD_LOGIC;
    s00_axi_lite_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_lite_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_lite_wvalid : IN STD_LOGIC;
    s00_axi_lite_wready : OUT STD_LOGIC;
    s00_axi_lite_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_lite_bvalid : OUT STD_LOGIC;
    s00_axi_lite_bready : IN STD_LOGIC;
    s00_axi_lite_araddr : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    s00_axi_lite_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_lite_arvalid : IN STD_LOGIC;
    s00_axi_lite_arready : OUT STD_LOGIC;
    s00_axi_lite_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_lite_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_lite_rvalid : OUT STD_LOGIC;
    s00_axi_lite_rready : IN STD_LOGIC;
    s00_axi_lite_aclk : IN STD_LOGIC;
    s00_axi_lite_aresetn : IN STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : design_1_myip_0_0
  PORT MAP (
    m01_axi_awid => m01_axi_awid,
    m01_axi_awaddr => m01_axi_awaddr,
    m01_axi_awlen => m01_axi_awlen,
    m01_axi_awsize => m01_axi_awsize,
    m01_axi_awburst => m01_axi_awburst,
    m01_axi_awlock => m01_axi_awlock,
    m01_axi_awcache => m01_axi_awcache,
    m01_axi_awprot => m01_axi_awprot,
    m01_axi_awqos => m01_axi_awqos,
    m01_axi_awvalid => m01_axi_awvalid,
    m01_axi_awready => m01_axi_awready,
    m01_axi_wdata => m01_axi_wdata,
    m01_axi_wstrb => m01_axi_wstrb,
    m01_axi_wlast => m01_axi_wlast,
    m01_axi_wvalid => m01_axi_wvalid,
    m01_axi_wready => m01_axi_wready,
    m01_axi_bid => m01_axi_bid,
    m01_axi_bresp => m01_axi_bresp,
    m01_axi_bvalid => m01_axi_bvalid,
    m01_axi_bready => m01_axi_bready,
    m01_axi_arid => m01_axi_arid,
    m01_axi_araddr => m01_axi_araddr,
    m01_axi_arlen => m01_axi_arlen,
    m01_axi_arsize => m01_axi_arsize,
    m01_axi_arburst => m01_axi_arburst,
    m01_axi_arlock => m01_axi_arlock,
    m01_axi_arcache => m01_axi_arcache,
    m01_axi_arprot => m01_axi_arprot,
    m01_axi_arqos => m01_axi_arqos,
    m01_axi_arvalid => m01_axi_arvalid,
    m01_axi_arready => m01_axi_arready,
    m01_axi_rid => m01_axi_rid,
    m01_axi_rdata => m01_axi_rdata,
    m01_axi_rresp => m01_axi_rresp,
    m01_axi_rlast => m01_axi_rlast,
    m01_axi_rvalid => m01_axi_rvalid,
    m01_axi_rready => m01_axi_rready,
    m01_axi_aclk => m01_axi_aclk,
    m01_axi_aresetn => m01_axi_aresetn,
    m01_axi_init_axi_txn => m01_axi_init_axi_txn,
    m01_axi_txn_done => m01_axi_txn_done,
    m01_axi_error => m01_axi_error,
    m00_axi_lite_awaddr => m00_axi_lite_awaddr,
    m00_axi_lite_awprot => m00_axi_lite_awprot,
    m00_axi_lite_awvalid => m00_axi_lite_awvalid,
    m00_axi_lite_awready => m00_axi_lite_awready,
    m00_axi_lite_wdata => m00_axi_lite_wdata,
    m00_axi_lite_wstrb => m00_axi_lite_wstrb,
    m00_axi_lite_wvalid => m00_axi_lite_wvalid,
    m00_axi_lite_wready => m00_axi_lite_wready,
    m00_axi_lite_bresp => m00_axi_lite_bresp,
    m00_axi_lite_bvalid => m00_axi_lite_bvalid,
    m00_axi_lite_bready => m00_axi_lite_bready,
    m00_axi_lite_araddr => m00_axi_lite_araddr,
    m00_axi_lite_arprot => m00_axi_lite_arprot,
    m00_axi_lite_arvalid => m00_axi_lite_arvalid,
    m00_axi_lite_arready => m00_axi_lite_arready,
    m00_axi_lite_rdata => m00_axi_lite_rdata,
    m00_axi_lite_rresp => m00_axi_lite_rresp,
    m00_axi_lite_rvalid => m00_axi_lite_rvalid,
    m00_axi_lite_rready => m00_axi_lite_rready,
    m00_axi_lite_aclk => m00_axi_lite_aclk,
    m00_axi_lite_aresetn => m00_axi_lite_aresetn,
    m00_axi_lite_init_axi_txn => m00_axi_lite_init_axi_txn,
    m00_axi_lite_error => m00_axi_lite_error,
    m00_axi_lite_txn_done => m00_axi_lite_txn_done,
    s00_axi_lite_awaddr => s00_axi_lite_awaddr,
    s00_axi_lite_awprot => s00_axi_lite_awprot,
    s00_axi_lite_awvalid => s00_axi_lite_awvalid,
    s00_axi_lite_awready => s00_axi_lite_awready,
    s00_axi_lite_wdata => s00_axi_lite_wdata,
    s00_axi_lite_wstrb => s00_axi_lite_wstrb,
    s00_axi_lite_wvalid => s00_axi_lite_wvalid,
    s00_axi_lite_wready => s00_axi_lite_wready,
    s00_axi_lite_bresp => s00_axi_lite_bresp,
    s00_axi_lite_bvalid => s00_axi_lite_bvalid,
    s00_axi_lite_bready => s00_axi_lite_bready,
    s00_axi_lite_araddr => s00_axi_lite_araddr,
    s00_axi_lite_arprot => s00_axi_lite_arprot,
    s00_axi_lite_arvalid => s00_axi_lite_arvalid,
    s00_axi_lite_arready => s00_axi_lite_arready,
    s00_axi_lite_rdata => s00_axi_lite_rdata,
    s00_axi_lite_rresp => s00_axi_lite_rresp,
    s00_axi_lite_rvalid => s00_axi_lite_rvalid,
    s00_axi_lite_rready => s00_axi_lite_rready,
    s00_axi_lite_aclk => s00_axi_lite_aclk,
    s00_axi_lite_aresetn => s00_axi_lite_aresetn
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

