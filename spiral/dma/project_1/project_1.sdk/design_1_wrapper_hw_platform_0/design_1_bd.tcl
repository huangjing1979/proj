
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z045ffg900-2
#    set_property BOARD_PART xilinx.com:zc706:part0:1.2 [current_project]

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]

  # Create ports

  # Create instance: axi_mem_intercon, and set properties
  set axi_mem_intercon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
 ] $axi_mem_intercon

  # Create instance: axi_mem_intercon_1, and set properties
  set axi_mem_intercon_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon_1 ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
 ] $axi_mem_intercon_1

  # Create instance: myip_0, and set properties
  set myip_0 [ create_bd_cell -type ip -vlnv user.org:user:myip:1.0 myip_0 ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
CONFIG.PCW_USE_S_AXI_GP0 {1} \
CONFIG.PCW_USE_S_AXI_HP0 {1} \
CONFIG.preset {ZC706} \
 ] $processing_system7_0

  # Create instance: processing_system7_0_axi_periph, and set properties
  set processing_system7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 processing_system7_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
 ] $processing_system7_0_axi_periph

  # Create instance: rst_processing_system7_0_50M, and set properties
  set rst_processing_system7_0_50M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_processing_system7_0_50M ]

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_mem_intercon_1_M00_AXI [get_bd_intf_pins axi_mem_intercon_1/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_GP0]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins axi_mem_intercon/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
  connect_bd_intf_net -intf_net myip_0_M00_AXI_LITE [get_bd_intf_pins axi_mem_intercon_1/S00_AXI] [get_bd_intf_pins myip_0/M00_AXI_LITE]
  connect_bd_intf_net -intf_net myip_0_M01_AXI [get_bd_intf_pins axi_mem_intercon/S00_AXI] [get_bd_intf_pins myip_0/M01_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins processing_system7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M00_AXI [get_bd_intf_pins myip_0/S00_AXI_LITE] [get_bd_intf_pins processing_system7_0_axi_periph/M00_AXI]

  # Create port connections
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins axi_mem_intercon/ACLK] [get_bd_pins axi_mem_intercon/M00_ACLK] [get_bd_pins axi_mem_intercon/S00_ACLK] [get_bd_pins axi_mem_intercon_1/ACLK] [get_bd_pins axi_mem_intercon_1/M00_ACLK] [get_bd_pins axi_mem_intercon_1/S00_ACLK] [get_bd_pins myip_0/m00_axi_lite_aclk] [get_bd_pins myip_0/m01_axi_aclk] [get_bd_pins myip_0/s00_axi_lite_aclk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins processing_system7_0_axi_periph/ACLK] [get_bd_pins processing_system7_0_axi_periph/M00_ACLK] [get_bd_pins processing_system7_0_axi_periph/S00_ACLK] [get_bd_pins rst_processing_system7_0_50M/slowest_sync_clk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_processing_system7_0_50M/ext_reset_in]
  connect_bd_net -net rst_processing_system7_0_50M_interconnect_aresetn [get_bd_pins axi_mem_intercon/ARESETN] [get_bd_pins axi_mem_intercon_1/ARESETN] [get_bd_pins processing_system7_0_axi_periph/ARESETN] [get_bd_pins rst_processing_system7_0_50M/interconnect_aresetn]
  connect_bd_net -net rst_processing_system7_0_50M_peripheral_aresetn [get_bd_pins axi_mem_intercon/M00_ARESETN] [get_bd_pins axi_mem_intercon/S00_ARESETN] [get_bd_pins axi_mem_intercon_1/M00_ARESETN] [get_bd_pins axi_mem_intercon_1/S00_ARESETN] [get_bd_pins myip_0/m00_axi_lite_aresetn] [get_bd_pins myip_0/m01_axi_aresetn] [get_bd_pins myip_0/s00_axi_lite_aresetn] [get_bd_pins processing_system7_0_axi_periph/M00_ARESETN] [get_bd_pins processing_system7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_processing_system7_0_50M/peripheral_aresetn]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins myip_0/m01_axi_init_axi_txn] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins myip_0/m00_axi_lite_init_axi_txn] [get_bd_pins xlconstant_1/dout]

  # Create address segments
  create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces myip_0/M00_AXI_LITE] [get_bd_addr_segs processing_system7_0/S_AXI_GP0/GP0_DDR_LOWOCM] SEG_processing_system7_0_GP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x400000 -offset 0xE0000000 [get_bd_addr_spaces myip_0/M00_AXI_LITE] [get_bd_addr_segs processing_system7_0/S_AXI_GP0/GP0_IOP] SEG_processing_system7_0_GP0_IOP
  create_bd_addr_seg -range 0x40000000 -offset 0x40000000 [get_bd_addr_spaces myip_0/M00_AXI_LITE] [get_bd_addr_segs processing_system7_0/S_AXI_GP0/GP0_M_AXI_GP0] SEG_processing_system7_0_GP0_M_AXI_GP0
  create_bd_addr_seg -range 0x2000000 -offset 0xFC000000 [get_bd_addr_spaces myip_0/M00_AXI_LITE] [get_bd_addr_segs processing_system7_0/S_AXI_GP0/GP0_QSPI_LINEAR] SEG_processing_system7_0_GP0_QSPI_LINEAR
  create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces myip_0/M01_AXI] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x10000 -offset 0x4FFF0000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs myip_0/S00_AXI_LITE/S00_AXI_LITE_reg] SEG_myip_0_S00_AXI_LITE_reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port DDR -pg 1 -y -410 -defaultsOSRD
preplace port FIXED_IO -pg 1 -y -390 -defaultsOSRD
preplace inst xlconstant_0 -pg 1 -lvl 2 -y -770 -defaultsOSRD
preplace inst axi_mem_intercon_1 -pg 1 -lvl 6 -y -360 -defaultsOSRD
preplace inst xlconstant_1 -pg 1 -lvl 2 -y -680 -defaultsOSRD
preplace inst myip_0 -pg 1 -lvl 3 -y -460 -defaultsOSRD
preplace inst rst_processing_system7_0_50M -pg 1 -lvl 5 -y -90 -defaultsOSRD
preplace inst axi_mem_intercon -pg 1 -lvl 6 -y -100 -defaultsOSRD
preplace inst processing_system7_0_axi_periph -pg 1 -lvl 6 -y -620 -defaultsOSRD
preplace inst processing_system7_0 -pg 1 -lvl 4 -y -330 -defaultsOSRD
preplace netloc processing_system7_0_DDR 1 4 3 NJ -500 NJ -500 NJ
preplace netloc xlconstant_1_dout 1 2 1 NJ
preplace netloc processing_system7_0_axi_periph_M00_AXI 1 2 5 NJ -740 NJ -740 NJ -740 NJ -740 2340
preplace netloc rst_processing_system7_0_50M_interconnect_aresetn 1 5 1 1980
preplace netloc axi_mem_intercon_1_M00_AXI 1 3 4 1100 -520 NJ -520 NJ -490 2320
preplace netloc processing_system7_0_M_AXI_GP0 1 4 2 NJ -680 NJ
preplace netloc processing_system7_0_FCLK_RESET0_N 1 4 1 1580
preplace netloc axi_mem_intercon_M00_AXI 1 3 4 1100 -200 NJ -220 NJ -220 2320
preplace netloc myip_0_M01_AXI 1 3 3 NJ -490 NJ -490 1970
preplace netloc rst_processing_system7_0_50M_peripheral_aresetn 1 2 4 650 -190 NJ -190 NJ -190 2010
preplace netloc xlconstant_0_dout 1 2 1 NJ
preplace netloc processing_system7_0_FIXED_IO 1 4 3 NJ -480 NJ -480 NJ
preplace netloc processing_system7_0_FCLK_CLK0 1 2 4 640 -320 1090 -180 1590 -270 2000
preplace netloc myip_0_M00_AXI_LITE 1 3 3 NJ -510 NJ -510 1990
levelinfo -pg 1 -30 150 550 910 1360 1800 2170 2360 -top -1280 -bot 240
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


