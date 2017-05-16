
################################################################
# This is a generated script based on design: xcl_design
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2016.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   common::send_msg_id "BD_TCL-1002" "WARNING" "This script was generated using Vivado <$scripts_vivado_version> without IP versions in the create_bd_cell commands, but is now being run in <$current_vivado_version> of Vivado. There may have been major IP version changes between Vivado <$scripts_vivado_version> and <$current_vivado_version>, which could impact the parameter settings of the IPs."

}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source xcl_design_script.tcl


# The design that will be created by this Tcl script contains the following
# module references:
# iob_static, startup_wrapper

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku115-flvb2104-2-e
   set_property BOARD_PART xilinx.com:xil-accel-rd-ku115:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name xcl_design

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

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES:
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: pr_support_expanded
proc create_hier_cell_pr_support_expanded { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_pr_support_expanded() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_axilite_M00_AXI

  # Create pins
  create_bd_pin -dir O -from 31 -to 0 bscanid
  create_bd_pin -dir I capture
  create_bd_pin -dir I -type clk clkwiz_sysclks_clk_out2
  create_bd_pin -dir O -from 3 -to 0 concast_flash_tri_dout
  create_bd_pin -dir O -from 3 -to 0 concat_flash_dq_o_dout
  create_bd_pin -dir I -type clk ddrmem_0_c0_ddr4_ui_clk
  create_bd_pin -dir I debug_bridge_xsdbm_update
  create_bd_pin -dir I drck
  create_bd_pin -dir O flash_programmer_io0_o
  create_bd_pin -dir O flash_programmer_io0_t
  create_bd_pin -dir O flash_programmer_io1_o
  create_bd_pin -dir O flash_programmer_io1_t
  create_bd_pin -dir O flash_programmer_io2_o
  create_bd_pin -dir O flash_programmer_io2_t
  create_bd_pin -dir O flash_programmer_io3_o
  create_bd_pin -dir O flash_programmer_io3_t
  create_bd_pin -dir O flash_programmer_sck_o
  create_bd_pin -dir O flash_programmer_ss_t
  create_bd_pin -dir I -type clk iob_static_emc_clk_out
  create_bd_pin -dir I iob_static_io0_i
  create_bd_pin -dir I iob_static_io1_i
  create_bd_pin -dir I iob_static_io2_i
  create_bd_pin -dir I iob_static_io3_i
  create_bd_pin -dir I -from 0 -to 0 -type rst psreset_gate_pr_control_interconnect_aresetn
  create_bd_pin -dir I reset
  create_bd_pin -dir I runtest
  create_bd_pin -dir I sel
  create_bd_pin -dir I shift
  create_bd_pin -dir O -from 0 -to 0 slice_ss_0_Dout
  create_bd_pin -dir O -from 0 -to 0 slice_ss_1_Dout
  create_bd_pin -dir I tck
  create_bd_pin -dir I tdi
  create_bd_pin -dir O tdo
  create_bd_pin -dir I tms

  # Create instance: concat_flash_dq_o, and set properties
  set concat_flash_dq_o [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat concat_flash_dq_o ]
  set_property -dict [ list \
CONFIG.NUM_PORTS {4} \
 ] $concat_flash_dq_o

  # Create instance: concat_flash_tri, and set properties
  set concat_flash_tri [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat concat_flash_tri ]
  set_property -dict [ list \
CONFIG.NUM_PORTS {4} \
 ] $concat_flash_tri

  # Create instance: debug_bridge_xsdbm, and set properties
  set debug_bridge_xsdbm [ create_bd_cell -type ip -vlnv xilinx.com:ip:debug_bridge debug_bridge_xsdbm ]
  set_property -dict [ list \
CONFIG.C_DEBUG_MODE {1} \
CONFIG.C_ENABLE_CLK_DIVIDER {true} \
 ] $debug_bridge_xsdbm

  # Create instance: flash_programmer, and set properties
  set flash_programmer [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi flash_programmer ]
  set_property -dict [ list \
CONFIG.C_FIFO_DEPTH {256} \
CONFIG.C_NUM_SS_BITS {2} \
CONFIG.C_SCK_RATIO {2} \
CONFIG.C_SPI_MEMORY {2} \
CONFIG.C_SPI_MODE {2} \
CONFIG.C_TYPE_OF_AXI4_INTERFACE {0} \
CONFIG.C_USE_STARTUP {1} \
CONFIG.C_USE_STARTUP_INT {0} \
 ] $flash_programmer

  # Create instance: slice_ss_0, and set properties
  set slice_ss_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice slice_ss_0 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {0} \
CONFIG.DIN_TO {0} \
CONFIG.DIN_WIDTH {2} \
 ] $slice_ss_0

  # Create instance: slice_ss_1, and set properties
  set slice_ss_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice slice_ss_1 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {1} \
CONFIG.DIN_TO {1} \
CONFIG.DIN_WIDTH {2} \
 ] $slice_ss_1

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins interconnect_axilite_M00_AXI] [get_bd_intf_pins flash_programmer/AXI_LITE]

  # Create port connections
  connect_bd_net -net capture_1 [get_bd_pins capture] [get_bd_pins debug_bridge_xsdbm/capture]
  connect_bd_net -net clk_1 [get_bd_pins ddrmem_0_c0_ddr4_ui_clk] [get_bd_pins debug_bridge_xsdbm/clk]
  connect_bd_net -net concat_flash_dq_o_dout [get_bd_pins concat_flash_dq_o_dout] [get_bd_pins concat_flash_dq_o/dout]
  connect_bd_net -net concat_flash_tri_dout [get_bd_pins concast_flash_tri_dout] [get_bd_pins concat_flash_tri/dout]
  connect_bd_net -net debug_bridge_xsdbm_bscanid [get_bd_pins bscanid] [get_bd_pins debug_bridge_xsdbm/bscanid]
  connect_bd_net -net debug_bridge_xsdbm_tdo [get_bd_pins tdo] [get_bd_pins debug_bridge_xsdbm/tdo]
  connect_bd_net -net drck_1 [get_bd_pins drck] [get_bd_pins debug_bridge_xsdbm/drck]
  connect_bd_net -net ext_spi_clk_1 [get_bd_pins iob_static_emc_clk_out] [get_bd_pins flash_programmer/ext_spi_clk]
  connect_bd_net -net flash_programmer_io0_o [get_bd_pins flash_programmer_io0_o] [get_bd_pins concat_flash_dq_o/In0] [get_bd_pins flash_programmer/io0_o]
  connect_bd_net -net flash_programmer_io0_t [get_bd_pins flash_programmer_io0_t] [get_bd_pins concat_flash_tri/In0] [get_bd_pins flash_programmer/io0_t]
  connect_bd_net -net flash_programmer_io1_o [get_bd_pins flash_programmer_io1_o] [get_bd_pins concat_flash_dq_o/In1] [get_bd_pins flash_programmer/io1_o]
  connect_bd_net -net flash_programmer_io1_t [get_bd_pins flash_programmer_io1_t] [get_bd_pins concat_flash_tri/In1] [get_bd_pins flash_programmer/io1_t]
  connect_bd_net -net flash_programmer_io2_o [get_bd_pins flash_programmer_io2_o] [get_bd_pins concat_flash_dq_o/In2] [get_bd_pins flash_programmer/io2_o]
  connect_bd_net -net flash_programmer_io2_t [get_bd_pins flash_programmer_io2_t] [get_bd_pins concat_flash_tri/In2] [get_bd_pins flash_programmer/io2_t]
  connect_bd_net -net flash_programmer_io3_o [get_bd_pins flash_programmer_io3_o] [get_bd_pins concat_flash_dq_o/In3] [get_bd_pins flash_programmer/io3_o]
  connect_bd_net -net flash_programmer_io3_t [get_bd_pins flash_programmer_io3_t] [get_bd_pins concat_flash_tri/In3] [get_bd_pins flash_programmer/io3_t]
  connect_bd_net -net flash_programmer_sck_o [get_bd_pins flash_programmer_sck_o] [get_bd_pins flash_programmer/sck_o]
  connect_bd_net -net flash_programmer_ss_o [get_bd_pins flash_programmer/ss_o] [get_bd_pins slice_ss_0/Din] [get_bd_pins slice_ss_1/Din]
  connect_bd_net -net flash_programmer_ss_t [get_bd_pins flash_programmer_ss_t] [get_bd_pins flash_programmer/ss_t]
  connect_bd_net -net io0_i_1 [get_bd_pins iob_static_io0_i] [get_bd_pins flash_programmer/io0_i]
  connect_bd_net -net io1_i_1 [get_bd_pins iob_static_io1_i] [get_bd_pins flash_programmer/io1_i]
  connect_bd_net -net io2_i_1 [get_bd_pins iob_static_io2_i] [get_bd_pins flash_programmer/io2_i]
  connect_bd_net -net io3_i_1 [get_bd_pins iob_static_io3_i] [get_bd_pins flash_programmer/io3_i]
  connect_bd_net -net reset_1 [get_bd_pins reset] [get_bd_pins debug_bridge_xsdbm/reset]
  connect_bd_net -net runtest_1 [get_bd_pins runtest] [get_bd_pins debug_bridge_xsdbm/runtest]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins clkwiz_sysclks_clk_out2] [get_bd_pins flash_programmer/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins psreset_gate_pr_control_interconnect_aresetn] [get_bd_pins flash_programmer/s_axi_aresetn]
  connect_bd_net -net sel_1 [get_bd_pins sel] [get_bd_pins debug_bridge_xsdbm/sel]
  connect_bd_net -net shift_1 [get_bd_pins shift] [get_bd_pins debug_bridge_xsdbm/shift]
  connect_bd_net -net slice_ss_0_Dout [get_bd_pins slice_ss_0_Dout] [get_bd_pins slice_ss_0/Dout]
  connect_bd_net -net slice_ss_1_Dout [get_bd_pins slice_ss_1_Dout] [get_bd_pins slice_ss_1/Dout]
  connect_bd_net -net tck_1 [get_bd_pins tck] [get_bd_pins debug_bridge_xsdbm/tck]
  connect_bd_net -net tdi_1 [get_bd_pins tdi] [get_bd_pins debug_bridge_xsdbm/tdi]
  connect_bd_net -net tms_1 [get_bd_pins tms] [get_bd_pins debug_bridge_xsdbm/tms]
  connect_bd_net -net update_1 [get_bd_pins debug_bridge_xsdbm_update] [get_bd_pins debug_bridge_xsdbm/update]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: memc
proc create_hier_cell_memc { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_memc() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 c0_sys
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 c1_sys
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 c2_sys
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 c3_sys
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 ddrmem_0_C0_DDR4
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 ddrmem_1_C0_DDR4
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 ddrmem_2_C0_DDR4
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 ddrmem_3_C0_DDR4
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_axilite_M03_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_axilite_M04_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_axilite_M05_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_aximm_ddrmem0_M00_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_aximm_ddrmem1_M00_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_aximm_ddrmem2_M00_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_aximm_ddrmem3_M00_AXI

  # Create pins
  create_bd_pin -dir I -type clk clkwiz_sysclks_clk_out2
  create_bd_pin -dir O -type clk ddrmem_0_c0_ddr4_ui_clk
  create_bd_pin -dir O -type rst ddrmem_0_c0_ddr4_ui_clk_sync_rst
  create_bd_pin -dir O -type clk ddrmem_1_c0_ddr4_ui_clk
  create_bd_pin -dir O -type rst ddrmem_1_c0_ddr4_ui_clk_sync_rst
  create_bd_pin -dir O -type clk ddrmem_2_c0_ddr4_ui_clk
  create_bd_pin -dir O -type rst ddrmem_2_c0_ddr4_ui_clk_sync_rst
  create_bd_pin -dir O -type clk ddrmem_3_c0_ddr4_ui_clk
  create_bd_pin -dir O -type rst ddrmem_3_c0_ddr4_ui_clk_sync_rst
  create_bd_pin -dir O logic_ddrcalib_op_Res
  create_bd_pin -dir I -from 0 -to 0 -type rst logic_reset_op_Res
  create_bd_pin -dir I -from 0 -to 0 -type rst psreset_ddrmem_n_2_interconnect_aresetn
  create_bd_pin -dir I -from 0 -to 0 -type rst psreset_ddrmem_n_3_interconnect_aresetn
  create_bd_pin -dir I -from 0 -to 0 -type rst psreset_ddrmem_n_4_interconnect_aresetn
  create_bd_pin -dir I -from 0 -to 0 -type rst psreset_ddrmem_n_interconnect_aresetn
  create_bd_pin -dir I -from 0 -to 0 -type rst psreset_gate_pr_control_interconnect_aresetn

  # Create instance: axicc_ddrmem_2_ctrl, and set properties
  set axicc_ddrmem_2_ctrl [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_clock_converter axicc_ddrmem_2_ctrl ]

  # Create instance: axicc_ddrmem_3_ctrl, and set properties
  set axicc_ddrmem_3_ctrl [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_clock_converter axicc_ddrmem_3_ctrl ]

  # Create instance: concat_ddrcalib, and set properties
  set concat_ddrcalib [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat concat_ddrcalib ]
  set_property -dict [ list \
CONFIG.NUM_PORTS {4} \
 ] $concat_ddrcalib

  # Create instance: ddrmem_0, and set properties
  set ddrmem_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ddr4 ddrmem_0 ]
  set_property -dict [ list \
CONFIG.C0.ControllerType {DDR4_SDRAM} \
CONFIG.C0.DDR4_AxiAddressWidth {32} \
CONFIG.C0.DDR4_AxiDataWidth {512} \
CONFIG.C0.DDR4_AxiSelection {true} \
CONFIG.C0.DDR4_CasLatency {16} \
CONFIG.C0.DDR4_CasWriteLatency {12} \
CONFIG.C0.DDR4_CustomParts {no_file_loaded} \
CONFIG.C0.DDR4_DataWidth {72} \
CONFIG.C0.DDR4_Ecc {true} \
CONFIG.C0.DDR4_InputClockPeriod {3332} \
CONFIG.C0.DDR4_MemoryPart {MT40A512M16HA-083E} \
CONFIG.C0.DDR4_MemoryType {Components} \
CONFIG.C0.DDR4_TimePeriod {833} \
CONFIG.C0.DDR4_isCustom {false} \
 ] $ddrmem_0

  # Create instance: ddrmem_1, and set properties
  set ddrmem_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ddr4 ddrmem_1 ]
  set_property -dict [ list \
CONFIG.C0.ControllerType {DDR4_SDRAM} \
CONFIG.C0.DDR4_AxiAddressWidth {32} \
CONFIG.C0.DDR4_AxiDataWidth {512} \
CONFIG.C0.DDR4_AxiSelection {true} \
CONFIG.C0.DDR4_CasLatency {16} \
CONFIG.C0.DDR4_CasWriteLatency {12} \
CONFIG.C0.DDR4_CustomParts {no_file_loaded} \
CONFIG.C0.DDR4_DataWidth {64} \
CONFIG.C0.DDR4_Ecc {false} \
CONFIG.C0.DDR4_InputClockPeriod {3332} \
CONFIG.C0.DDR4_MemoryPart {MT40A512M16HA-083E} \
CONFIG.C0.DDR4_MemoryType {Components} \
CONFIG.C0.DDR4_TimePeriod {833} \
CONFIG.C0.DDR4_isCustom {false} \
 ] $ddrmem_1

  # Create instance: ddrmem_2, and set properties
  set ddrmem_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ddr4 ddrmem_2 ]
  set_property -dict [ list \
CONFIG.C0.ControllerType {DDR4_SDRAM} \
CONFIG.C0.DDR4_AxiAddressWidth {32} \
CONFIG.C0.DDR4_AxiDataWidth {512} \
CONFIG.C0.DDR4_AxiSelection {true} \
CONFIG.C0.DDR4_CasLatency {16} \
CONFIG.C0.DDR4_CasWriteLatency {12} \
CONFIG.C0.DDR4_CustomParts {no_file_loaded} \
CONFIG.C0.DDR4_DataWidth {72} \
CONFIG.C0.DDR4_Ecc {true} \
CONFIG.C0.DDR4_InputClockPeriod {3332} \
CONFIG.C0.DDR4_MemoryPart {MT40A512M16HA-083E} \
CONFIG.C0.DDR4_MemoryType {Components} \
CONFIG.C0.DDR4_TimePeriod {833} \
CONFIG.C0.DDR4_isCustom {false} \
 ] $ddrmem_2

  # Create instance: ddrmem_3, and set properties
  set ddrmem_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ddr4 ddrmem_3 ]
  set_property -dict [ list \
CONFIG.C0.ControllerType {DDR4_SDRAM} \
CONFIG.C0.DDR4_AxiAddressWidth {32} \
CONFIG.C0.DDR4_AxiDataWidth {512} \
CONFIG.C0.DDR4_AxiSelection {true} \
CONFIG.C0.DDR4_CasLatency {16} \
CONFIG.C0.DDR4_CasWriteLatency {12} \
CONFIG.C0.DDR4_CustomParts {no_file_loaded} \
CONFIG.C0.DDR4_DataWidth {72} \
CONFIG.C0.DDR4_Ecc {true} \
CONFIG.C0.DDR4_InputClockPeriod {3332} \
CONFIG.C0.DDR4_MemoryPart {MT40A512M16HA-083E} \
CONFIG.C0.DDR4_MemoryType {Components} \
CONFIG.C0.DDR4_TimePeriod {833} \
CONFIG.C0.DDR4_isCustom {false} \
 ] $ddrmem_3

  # Create instance: logic_ddrcalib_op, and set properties
  set logic_ddrcalib_op [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic logic_ddrcalib_op ]
  set_property -dict [ list \
CONFIG.C_OPERATION {and} \
CONFIG.C_SIZE {4} \
 ] $logic_ddrcalib_op

  # Create interface connections
  connect_bd_intf_net -intf_net C0_DDR4_S_AXI1_1 [get_bd_intf_pins interconnect_aximm_ddrmem1_M00_AXI] [get_bd_intf_pins ddrmem_1/C0_DDR4_S_AXI]
  connect_bd_intf_net -intf_net C0_DDR4_S_AXI2_1 [get_bd_intf_pins interconnect_aximm_ddrmem2_M00_AXI] [get_bd_intf_pins ddrmem_2/C0_DDR4_S_AXI]
  connect_bd_intf_net -intf_net C0_DDR4_S_AXI3_1 [get_bd_intf_pins interconnect_aximm_ddrmem3_M00_AXI] [get_bd_intf_pins ddrmem_3/C0_DDR4_S_AXI]
  connect_bd_intf_net -intf_net C0_DDR4_S_AXI_1 [get_bd_intf_pins interconnect_aximm_ddrmem0_M00_AXI] [get_bd_intf_pins ddrmem_0/C0_DDR4_S_AXI]
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins c1_sys] [get_bd_intf_pins ddrmem_0/C0_SYS_CLK]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins ddrmem_0_C0_DDR4] [get_bd_intf_pins ddrmem_0/C0_DDR4]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins c0_sys] [get_bd_intf_pins ddrmem_1/C0_SYS_CLK]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins ddrmem_1_C0_DDR4] [get_bd_intf_pins ddrmem_1/C0_DDR4]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins c2_sys] [get_bd_intf_pins ddrmem_2/C0_SYS_CLK]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins ddrmem_2_C0_DDR4] [get_bd_intf_pins ddrmem_2/C0_DDR4]
  connect_bd_intf_net -intf_net Conn7 [get_bd_intf_pins c3_sys] [get_bd_intf_pins ddrmem_3/C0_SYS_CLK]
  connect_bd_intf_net -intf_net Conn8 [get_bd_intf_pins ddrmem_3_C0_DDR4] [get_bd_intf_pins ddrmem_3/C0_DDR4]
  connect_bd_intf_net -intf_net Conn9 [get_bd_intf_pins interconnect_axilite_M03_AXI] [get_bd_intf_pins ddrmem_0/C0_DDR4_S_AXI_CTRL]
  connect_bd_intf_net -intf_net axi_clock_converter_0_M_AXI [get_bd_intf_pins axicc_ddrmem_2_ctrl/M_AXI] [get_bd_intf_pins ddrmem_2/C0_DDR4_S_AXI_CTRL]
  connect_bd_intf_net -intf_net axi_clock_converter_0_M_AXI1 [get_bd_intf_pins axicc_ddrmem_3_ctrl/M_AXI] [get_bd_intf_pins ddrmem_3/C0_DDR4_S_AXI_CTRL]
  connect_bd_intf_net -intf_net interconnect_axilite_M04_AXI_1 [get_bd_intf_pins interconnect_axilite_M04_AXI] [get_bd_intf_pins axicc_ddrmem_2_ctrl/S_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_M05_AXI_1 [get_bd_intf_pins interconnect_axilite_M05_AXI] [get_bd_intf_pins axicc_ddrmem_3_ctrl/S_AXI]

  # Create port connections
  connect_bd_net -net c0_ddr4_aresetn1_1 [get_bd_pins psreset_ddrmem_n_2_interconnect_aresetn] [get_bd_pins ddrmem_1/c0_ddr4_aresetn]
  connect_bd_net -net c0_ddr4_aresetn2_1 [get_bd_pins psreset_ddrmem_n_3_interconnect_aresetn] [get_bd_pins axicc_ddrmem_2_ctrl/m_axi_aresetn] [get_bd_pins ddrmem_2/c0_ddr4_aresetn]
  connect_bd_net -net c0_ddr4_aresetn3_1 [get_bd_pins psreset_ddrmem_n_4_interconnect_aresetn] [get_bd_pins axicc_ddrmem_3_ctrl/m_axi_aresetn] [get_bd_pins ddrmem_3/c0_ddr4_aresetn]
  connect_bd_net -net c0_ddr4_aresetn_1 [get_bd_pins psreset_ddrmem_n_interconnect_aresetn] [get_bd_pins ddrmem_0/c0_ddr4_aresetn]
  connect_bd_net -net concat_ddrcalib_dout [get_bd_pins concat_ddrcalib/dout] [get_bd_pins logic_ddrcalib_op/Op1]
  connect_bd_net -net ddrmem_2_c0_ddr4_ui_clk [get_bd_pins ddrmem_1_c0_ddr4_ui_clk] [get_bd_pins ddrmem_1/c0_ddr4_ui_clk]
  connect_bd_net -net ddrmem_2_c0_ddr4_ui_clk_sync_rst [get_bd_pins ddrmem_1_c0_ddr4_ui_clk_sync_rst] [get_bd_pins ddrmem_1/c0_ddr4_ui_clk_sync_rst]
  connect_bd_net -net ddrmem_2_c0_init_calib_complete [get_bd_pins concat_ddrcalib/In1] [get_bd_pins ddrmem_1/c0_init_calib_complete]
  connect_bd_net -net ddrmem_3_c0_ddr4_ui_clk [get_bd_pins ddrmem_2_c0_ddr4_ui_clk] [get_bd_pins axicc_ddrmem_2_ctrl/m_axi_aclk] [get_bd_pins ddrmem_2/c0_ddr4_ui_clk]
  connect_bd_net -net ddrmem_3_c0_ddr4_ui_clk_sync_rst [get_bd_pins ddrmem_2_c0_ddr4_ui_clk_sync_rst] [get_bd_pins ddrmem_2/c0_ddr4_ui_clk_sync_rst]
  connect_bd_net -net ddrmem_3_c0_init_calib_complete [get_bd_pins concat_ddrcalib/In2] [get_bd_pins ddrmem_2/c0_init_calib_complete]
  connect_bd_net -net ddrmem_4_c0_ddr4_ui_clk [get_bd_pins ddrmem_3_c0_ddr4_ui_clk] [get_bd_pins axicc_ddrmem_3_ctrl/m_axi_aclk] [get_bd_pins ddrmem_3/c0_ddr4_ui_clk]
  connect_bd_net -net ddrmem_4_c0_ddr4_ui_clk_sync_rst [get_bd_pins ddrmem_3_c0_ddr4_ui_clk_sync_rst] [get_bd_pins ddrmem_3/c0_ddr4_ui_clk_sync_rst]
  connect_bd_net -net ddrmem_4_c0_init_calib_complete [get_bd_pins concat_ddrcalib/In3] [get_bd_pins ddrmem_3/c0_init_calib_complete]
  connect_bd_net -net ddrmem_c0_ddr4_ui_clk [get_bd_pins ddrmem_0_c0_ddr4_ui_clk] [get_bd_pins ddrmem_0/c0_ddr4_ui_clk]
  connect_bd_net -net ddrmem_c0_ddr4_ui_clk_sync_rst [get_bd_pins ddrmem_0_c0_ddr4_ui_clk_sync_rst] [get_bd_pins ddrmem_0/c0_ddr4_ui_clk_sync_rst]
  connect_bd_net -net ddrmem_c0_init_calib_complete [get_bd_pins concat_ddrcalib/In0] [get_bd_pins ddrmem_0/c0_init_calib_complete]
  connect_bd_net -net logic_ddrcalib_op_Res [get_bd_pins logic_ddrcalib_op_Res] [get_bd_pins logic_ddrcalib_op/Res]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins clkwiz_sysclks_clk_out2] [get_bd_pins axicc_ddrmem_2_ctrl/s_axi_aclk] [get_bd_pins axicc_ddrmem_3_ctrl/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins psreset_gate_pr_control_interconnect_aresetn] [get_bd_pins axicc_ddrmem_2_ctrl/s_axi_aresetn] [get_bd_pins axicc_ddrmem_3_ctrl/s_axi_aresetn]
  connect_bd_net -net sys_rst_1 [get_bd_pins logic_reset_op_Res] [get_bd_pins ddrmem_0/sys_rst] [get_bd_pins ddrmem_1/sys_rst] [get_bd_pins ddrmem_2/sys_rst] [get_bd_pins ddrmem_3/sys_rst]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: interconnect
proc create_hier_cell_interconnect { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_interconnect() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_aximm_ddrmem0_M00_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_aximm_ddrmem1_M00_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_aximm_ddrmem2_M00_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_aximm_ddrmem3_M00_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_aximm_host_M04_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 regslice_data_M_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 u_ocl_region_M00_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 u_ocl_region_M01_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 u_ocl_region_M02_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 u_ocl_region_M03_AXI

  # Create pins
  create_bd_pin -dir I -type clk clkwiz_kernel_clk_out1
  create_bd_pin -dir I -type clk clkwiz_sysclks_clk_out1
  create_bd_pin -dir I -type clk ddrmem_0_c0_ddr4_ui_clk
  create_bd_pin -dir I -type clk ddrmem_1_c0_ddr4_ui_clk
  create_bd_pin -dir I -type clk ddrmem_2_c0_ddr4_ui_clk
  create_bd_pin -dir I -type clk ddrmem_3_c0_ddr4_ui_clk
  create_bd_pin -dir I -type clk dma_pcie_axi_aclk
  create_bd_pin -dir I -from 0 -to 0 -type rst psreset_gate_pr_data_interconnect_aresetn

  # Create instance: interconnect_aximm_ddrmem0, and set properties
  set interconnect_aximm_ddrmem0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect interconnect_aximm_ddrmem0 ]
  set_property -dict [ list \
CONFIG.ADVANCED_PROPERTIES { subcore_assignments { s*_entry_pipeline/s*_mmu { CONFIG.ENABLE_PIPELINING 0x0 CONFIG.SUPPORTS_WRITE_DECERR 0 CONFIG.SUPPORTS_READ_DECERR 0 } m*_exit_pipeline/m*_exit { CONFIG.ENABLE_PIPELINING 0x0 } s00_nodes/s00_r_node { CONFIG.FIFO_TYPE 1 CONFIG.FIFO_SIZE 9 } s00_nodes/s00_w_node { CONFIG.FIFO_TYPE 1 CONFIG.FIFO_SIZE 9 } s01_entry_pipeline/s01_si_converter { CONFIG.READ_WATERMARK 0 CONFIG.WRITE_WATERMARK 0 } s01_nodes/s01_ar_node { CONFIG.ENABLE_PIPELINING 0x07 } s01_nodes/s01_r_node { CONFIG.ENABLE_PIPELINING 0x06 CONFIG.FIFO_TYPE 1 CONFIG.FIFO_SIZE 9 } s01_nodes/s01_aw_node { CONFIG.ENABLE_PIPELINING 0x07 } s01_nodes/s01_w_node { CONFIG.ENABLE_PIPELINING 0x07 CONFIG.FIFO_TYPE 1 CONFIG.FIFO_SIZE 9 } s01_nodes/s01_b_node { CONFIG.ENABLE_PIPELINING 0x06 } m00_nodes/m00_r_node { CONFIG.ENABLE_PIPELINING 0x03 } } } \
CONFIG.NUM_CLKS {3} \
 ] $interconnect_aximm_ddrmem0

  # Create instance: interconnect_aximm_ddrmem1, and set properties
  set interconnect_aximm_ddrmem1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect interconnect_aximm_ddrmem1 ]
  set_property -dict [ list \
CONFIG.ADVANCED_PROPERTIES { subcore_assignments { s*_entry_pipeline/s*_mmu { CONFIG.ENABLE_PIPELINING 0x0 CONFIG.SUPPORTS_WRITE_DECERR 0 CONFIG.SUPPORTS_READ_DECERR 0 } m*_exit_pipeline/m*_exit { CONFIG.ENABLE_PIPELINING 0x0 } s00_nodes/s00_r_node { CONFIG.FIFO_TYPE 1 CONFIG.FIFO_SIZE 9 } s00_nodes/s00_w_node { CONFIG.FIFO_TYPE 1 CONFIG.FIFO_SIZE 9 } s01_entry_pipeline/s01_si_converter { CONFIG.READ_WATERMARK 0 CONFIG.WRITE_WATERMARK 0 } s01_nodes/s01_ar_node { CONFIG.ENABLE_PIPELINING 0x07 } s01_nodes/s01_r_node { CONFIG.ENABLE_PIPELINING 0x06 CONFIG.FIFO_TYPE 1 CONFIG.FIFO_SIZE 9 } s01_nodes/s01_aw_node { CONFIG.ENABLE_PIPELINING 0x07 } s01_nodes/s01_w_node { CONFIG.ENABLE_PIPELINING 0x07 CONFIG.FIFO_TYPE 1 CONFIG.FIFO_SIZE 9 } s01_nodes/s01_b_node { CONFIG.ENABLE_PIPELINING 0x06 } m00_nodes/m00_r_node { CONFIG.ENABLE_PIPELINING 0x03 } } } \
CONFIG.NUM_CLKS {3} \
 ] $interconnect_aximm_ddrmem1

  # Create instance: interconnect_aximm_ddrmem2, and set properties
  set interconnect_aximm_ddrmem2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect interconnect_aximm_ddrmem2 ]
  set_property -dict [ list \
CONFIG.ADVANCED_PROPERTIES { subcore_assignments { s*_entry_pipeline/s*_mmu { CONFIG.ENABLE_PIPELINING 0x0 CONFIG.SUPPORTS_WRITE_DECERR 0 CONFIG.SUPPORTS_READ_DECERR 0 } m*_exit_pipeline/m*_exit { CONFIG.ENABLE_PIPELINING 0x0 } s00_nodes/s00_ar_node { CONFIG.ENABLE_PIPELINING 0x07 } s00_nodes/s00_r_node { CONFIG.ENABLE_PIPELINING 0x06 CONFIG.FIFO_TYPE 1 CONFIG.FIFO_SIZE 9 } s00_nodes/s00_aw_node { CONFIG.ENABLE_PIPELINING 0x07 } s00_nodes/s00_w_node { CONFIG.ENABLE_PIPELINING 0x07 CONFIG.FIFO_TYPE 1 CONFIG.FIFO_SIZE 9 } s00_nodes/s00_b_node { CONFIG.ENABLE_PIPELINING 0x06 } s01_nodes/s01_ar_node { CONFIG.ENABLE_PIPELINING 0x07 } s01_entry_pipeline/s01_si_converter { CONFIG.READ_WATERMARK 0 CONFIG.WRITE_WATERMARK 0 } s01_nodes/s01_r_node { CONFIG.ENABLE_PIPELINING 0x06 CONFIG.FIFO_TYPE 1 CONFIG.FIFO_SIZE 9 } s01_nodes/s01_aw_node { CONFIG.ENABLE_PIPELINING 0x07 } s01_nodes/s01_w_node { CONFIG.ENABLE_PIPELINING 0x07 CONFIG.FIFO_TYPE 1 CONFIG.FIFO_SIZE 9 } s01_nodes/s01_b_node { CONFIG.ENABLE_PIPELINING 0x06 } m00_nodes/m00_r_node { CONFIG.ENABLE_PIPELINING 0x03 } } } \
CONFIG.NUM_CLKS {3} \
 ] $interconnect_aximm_ddrmem2

  # Create instance: interconnect_aximm_ddrmem3, and set properties
  set interconnect_aximm_ddrmem3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect interconnect_aximm_ddrmem3 ]
  set_property -dict [ list \
CONFIG.ADVANCED_PROPERTIES { subcore_assignments { s*_entry_pipeline/s*_mmu { CONFIG.ENABLE_PIPELINING 0x0 CONFIG.SUPPORTS_WRITE_DECERR 0 CONFIG.SUPPORTS_READ_DECERR 0 } m*_exit_pipeline/m*_exit { CONFIG.ENABLE_PIPELINING 0x0 } s00_nodes/s00_ar_node { CONFIG.ENABLE_PIPELINING 0x07 } s00_nodes/s00_r_node { CONFIG.ENABLE_PIPELINING 0x06 CONFIG.FIFO_TYPE 1 CONFIG.FIFO_SIZE 9 } s00_nodes/s00_aw_node { CONFIG.ENABLE_PIPELINING 0x07 } s00_nodes/s00_w_node { CONFIG.ENABLE_PIPELINING 0x07 CONFIG.FIFO_TYPE 1 CONFIG.FIFO_SIZE 9 } s00_nodes/s00_b_node { CONFIG.ENABLE_PIPELINING 0x06 } s01_nodes/s01_ar_node { CONFIG.ENABLE_PIPELINING 0x07 } s01_entry_pipeline/s01_si_converter { CONFIG.READ_WATERMARK 0 CONFIG.WRITE_WATERMARK 0 } s01_nodes/s01_r_node { CONFIG.ENABLE_PIPELINING 0x06 CONFIG.FIFO_TYPE 1 CONFIG.FIFO_SIZE 9 } s01_nodes/s01_aw_node { CONFIG.ENABLE_PIPELINING 0x07 } s01_nodes/s01_w_node { CONFIG.ENABLE_PIPELINING 0x07 CONFIG.FIFO_TYPE 1 CONFIG.FIFO_SIZE 9 } s01_nodes/s01_b_node { CONFIG.ENABLE_PIPELINING 0x06 } m00_nodes/m00_r_node { CONFIG.ENABLE_PIPELINING 0x03 } } } \
CONFIG.NUM_CLKS {3} \
 ] $interconnect_aximm_ddrmem3

  # Create instance: interconnect_aximm_host, and set properties
  set interconnect_aximm_host [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect interconnect_aximm_host ]
  set_property -dict [ list \
CONFIG.ADVANCED_PROPERTIES { _sc_override_ { mi_properties { M00_AXI { CONFIG.DATA_WIDTH 256 } M01_AXI { CONFIG.DATA_WIDTH 256 } M02_AXI { CONFIG.DATA_WIDTH 256 } M03_AXI { CONFIG.DATA_WIDTH 256 } M04_AXI { CONFIG.DATA_WIDTH 256 } } } subcore_assignments { s00_entry_pipeline/s00_si_converter { CONFIG.READ_WATERMARK 0 CONFIG.WRITE_WATERMARK 0 } s*_entry_pipeline/s*_mmu { CONFIG.ENABLE_PIPELINING 0x1 } m*_exit_pipeline/m*_exit { CONFIG.ENABLE_PIPELINING 0x0 } m04_nodes/m04_ar_node { CONFIG.ENABLE_PIPELINING 0x07 } m04_nodes/m04_r_node { CONFIG.ENABLE_PIPELINING 0x06 } m04_nodes/m04_aw_node { CONFIG.ENABLE_PIPELINING 0x07 } m04_nodes/m04_w_node { CONFIG.ENABLE_PIPELINING 0x07 } m04_nodes/m04_b_node { CONFIG.ENABLE_PIPELINING 0x06 } } } \
CONFIG.NUM_CLKS {2} \
CONFIG.NUM_MI {5} \
CONFIG.NUM_SI {1} \
 ] $interconnect_aximm_host

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins regslice_data_M_AXI] [get_bd_intf_pins interconnect_aximm_host/S00_AXI]
  connect_bd_intf_net -intf_net S01_AXI1_1 [get_bd_intf_pins u_ocl_region_M01_AXI] [get_bd_intf_pins interconnect_aximm_ddrmem1/S01_AXI]
  connect_bd_intf_net -intf_net S01_AXI2_1 [get_bd_intf_pins u_ocl_region_M02_AXI] [get_bd_intf_pins interconnect_aximm_ddrmem2/S01_AXI]
  connect_bd_intf_net -intf_net S01_AXI3_1 [get_bd_intf_pins u_ocl_region_M03_AXI] [get_bd_intf_pins interconnect_aximm_ddrmem3/S01_AXI]
  connect_bd_intf_net -intf_net S01_AXI_1 [get_bd_intf_pins u_ocl_region_M00_AXI] [get_bd_intf_pins interconnect_aximm_ddrmem0/S01_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M00_AXI [get_bd_intf_pins interconnect_aximm_ddrmem0_M00_AXI] [get_bd_intf_pins interconnect_aximm_ddrmem0/M00_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M00_AXI1 [get_bd_intf_pins interconnect_aximm_ddrmem0/S00_AXI] [get_bd_intf_pins interconnect_aximm_host/M00_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M01_AXI [get_bd_intf_pins interconnect_aximm_ddrmem1/S00_AXI] [get_bd_intf_pins interconnect_aximm_host/M01_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M02_AXI [get_bd_intf_pins interconnect_aximm_ddrmem2/S00_AXI] [get_bd_intf_pins interconnect_aximm_host/M02_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M03_AXI [get_bd_intf_pins interconnect_aximm_ddrmem3/S00_AXI] [get_bd_intf_pins interconnect_aximm_host/M03_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M04_AXI [get_bd_intf_pins interconnect_aximm_host_M04_AXI] [get_bd_intf_pins interconnect_aximm_host/M04_AXI]
  connect_bd_intf_net -intf_net smartconnect_1_M00_AXI [get_bd_intf_pins interconnect_aximm_ddrmem1_M00_AXI] [get_bd_intf_pins interconnect_aximm_ddrmem1/M00_AXI]
  connect_bd_intf_net -intf_net smartconnect_2_M00_AXI [get_bd_intf_pins interconnect_aximm_ddrmem2_M00_AXI] [get_bd_intf_pins interconnect_aximm_ddrmem2/M00_AXI]
  connect_bd_intf_net -intf_net smartconnect_3_M00_AXI [get_bd_intf_pins interconnect_aximm_ddrmem3_M00_AXI] [get_bd_intf_pins interconnect_aximm_ddrmem3/M00_AXI]

  # Create port connections
  connect_bd_net -net ACLK1_1 [get_bd_pins ddrmem_0_c0_ddr4_ui_clk] [get_bd_pins interconnect_aximm_ddrmem0/aclk]
  connect_bd_net -net ACLK2_1 [get_bd_pins ddrmem_1_c0_ddr4_ui_clk] [get_bd_pins interconnect_aximm_ddrmem1/aclk]
  connect_bd_net -net ACLK3_1 [get_bd_pins ddrmem_2_c0_ddr4_ui_clk] [get_bd_pins interconnect_aximm_ddrmem2/aclk]
  connect_bd_net -net ACLK4_1 [get_bd_pins ddrmem_3_c0_ddr4_ui_clk] [get_bd_pins interconnect_aximm_ddrmem3/aclk]
  connect_bd_net -net ACLK_1 [get_bd_pins dma_pcie_axi_aclk] [get_bd_pins interconnect_aximm_ddrmem0/aclk1] [get_bd_pins interconnect_aximm_ddrmem1/aclk1] [get_bd_pins interconnect_aximm_ddrmem2/aclk1] [get_bd_pins interconnect_aximm_ddrmem3/aclk1] [get_bd_pins interconnect_aximm_host/aclk]
  connect_bd_net -net aclk1_2 [get_bd_pins clkwiz_sysclks_clk_out1] [get_bd_pins interconnect_aximm_host/aclk1]
  connect_bd_net -net aresetn_1 [get_bd_pins psreset_gate_pr_data_interconnect_aresetn] [get_bd_pins interconnect_aximm_ddrmem0/aresetn] [get_bd_pins interconnect_aximm_ddrmem1/aresetn] [get_bd_pins interconnect_aximm_ddrmem2/aresetn] [get_bd_pins interconnect_aximm_ddrmem3/aresetn] [get_bd_pins interconnect_aximm_host/aresetn]
  connect_bd_net -net clkwiz_kernel_clk_out1_1 [get_bd_pins clkwiz_kernel_clk_out1] [get_bd_pins interconnect_aximm_ddrmem0/aclk2] [get_bd_pins interconnect_aximm_ddrmem1/aclk2] [get_bd_pins interconnect_aximm_ddrmem2/aclk2] [get_bd_pins interconnect_aximm_ddrmem3/aclk2]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: expanded_resets
proc create_hier_cell_expanded_resets { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_expanded_resets() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -type clk clkwiz_kernel2_clk_out1
  create_bd_pin -dir I clkwiz_kernel2_locked
  create_bd_pin -dir I -type clk clkwiz_kernel_clk_out1
  create_bd_pin -dir I clkwiz_kernel_locked
  create_bd_pin -dir I -type clk clkwiz_sysclks_clk_out1
  create_bd_pin -dir I -type clk clkwiz_sysclks_clk_out2
  create_bd_pin -dir I clkwiz_sysclks_locked
  create_bd_pin -dir I -type clk ddrmem_0_c0_ddr4_ui_clk
  create_bd_pin -dir I -type rst ddrmem_0_c0_ddr4_ui_clk_sync_rst
  create_bd_pin -dir I -type clk ddrmem_1_c0_ddr4_ui_clk
  create_bd_pin -dir I -type rst ddrmem_1_c0_ddr4_ui_clk_sync_rst
  create_bd_pin -dir I -type clk ddrmem_2_c0_ddr4_ui_clk
  create_bd_pin -dir I -type rst ddrmem_2_c0_ddr4_ui_clk_sync_rst
  create_bd_pin -dir I -type clk ddrmem_3_c0_ddr4_ui_clk
  create_bd_pin -dir I -type rst ddrmem_3_c0_ddr4_ui_clk_sync_rst
  create_bd_pin -dir I -type clk dma_pcie_axi_aclk
  create_bd_pin -dir I dma_pcie_user_lnk_up
  create_bd_pin -dir I -from 0 -to 0 iob_static_perst_n_out
  create_bd_pin -dir O -from 0 -to 0 logic_reset_op_Res
  create_bd_pin -dir O -from 0 -to 0 -type rst psreset_ddrmem_n_2_interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst psreset_ddrmem_n_3_interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst psreset_ddrmem_n_4_interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst psreset_ddrmem_n_interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst psreset_gate_pr_apmclk_interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst psreset_gate_pr_control_interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst psreset_gate_pr_data_interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst psreset_gate_pr_kernel2_interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst psreset_gate_pr_kernel_interconnect_aresetn
  create_bd_pin -dir I -from 0 -to 0 -type rst slice_reset_kernel_pr_Dout

  # Create instance: logic_reset_op, and set properties
  set logic_reset_op [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic logic_reset_op ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {1} \
CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $logic_reset_op

  # Create instance: psreset_ddrmem_n, and set properties
  set psreset_ddrmem_n [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset psreset_ddrmem_n ]
  set_property -dict [ list \
CONFIG.C_AUX_RST_WIDTH {1} \
CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_ddrmem_n

  # Create instance: psreset_ddrmem_n_2, and set properties
  set psreset_ddrmem_n_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset psreset_ddrmem_n_2 ]
  set_property -dict [ list \
CONFIG.C_AUX_RST_WIDTH {1} \
CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_ddrmem_n_2

  # Create instance: psreset_ddrmem_n_3, and set properties
  set psreset_ddrmem_n_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset psreset_ddrmem_n_3 ]
  set_property -dict [ list \
CONFIG.C_AUX_RST_WIDTH {1} \
CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_ddrmem_n_3

  # Create instance: psreset_ddrmem_n_4, and set properties
  set psreset_ddrmem_n_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset psreset_ddrmem_n_4 ]
  set_property -dict [ list \
CONFIG.C_AUX_RST_WIDTH {1} \
CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_ddrmem_n_4

  # Create instance: psreset_gate_pr_apmclk, and set properties
  set psreset_gate_pr_apmclk [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset psreset_gate_pr_apmclk ]

  # Create instance: psreset_gate_pr_control, and set properties
  set psreset_gate_pr_control [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset psreset_gate_pr_control ]
  set_property -dict [ list \
CONFIG.C_AUX_RST_WIDTH {1} \
CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_gate_pr_control

  # Create instance: psreset_gate_pr_data, and set properties
  set psreset_gate_pr_data [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset psreset_gate_pr_data ]
  set_property -dict [ list \
CONFIG.C_AUX_RST_WIDTH {1} \
CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_gate_pr_data

  # Create instance: psreset_gate_pr_kernel, and set properties
  set psreset_gate_pr_kernel [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset psreset_gate_pr_kernel ]
  set_property -dict [ list \
CONFIG.C_AUX_RST_WIDTH {1} \
CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_gate_pr_kernel

  # Create instance: psreset_gate_pr_kernel2, and set properties
  set psreset_gate_pr_kernel2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset psreset_gate_pr_kernel2 ]
  set_property -dict [ list \
CONFIG.C_AUX_RST_WIDTH {1} \
CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_gate_pr_kernel2

  # Create port connections
  connect_bd_net -net Op1_1 [get_bd_pins iob_static_perst_n_out] [get_bd_pins logic_reset_op/Op1]
  connect_bd_net -net aux_reset_in1_1 [get_bd_pins ddrmem_2_c0_ddr4_ui_clk_sync_rst] [get_bd_pins psreset_ddrmem_n_2/aux_reset_in] [get_bd_pins psreset_ddrmem_n_3/ext_reset_in]
  connect_bd_net -net aux_reset_in_1 [get_bd_pins ddrmem_1_c0_ddr4_ui_clk_sync_rst] [get_bd_pins psreset_ddrmem_n/aux_reset_in] [get_bd_pins psreset_ddrmem_n_2/ext_reset_in]
  connect_bd_net -net clkwiz_kernel_clk_out1 [get_bd_pins clkwiz_kernel_clk_out1] [get_bd_pins psreset_gate_pr_kernel/slowest_sync_clk]
  connect_bd_net -net dcm_locked_1 [get_bd_pins clkwiz_kernel_locked] [get_bd_pins psreset_gate_pr_kernel/dcm_locked]
  connect_bd_net -net dcm_locked_2 [get_bd_pins clkwiz_sysclks_locked] [get_bd_pins psreset_gate_pr_apmclk/dcm_locked] [get_bd_pins psreset_gate_pr_control/dcm_locked]
  connect_bd_net -net dcm_locked_3 [get_bd_pins dma_pcie_user_lnk_up] [get_bd_pins psreset_gate_pr_data/dcm_locked]
  connect_bd_net -net dcm_locked_4 [get_bd_pins clkwiz_kernel2_locked] [get_bd_pins psreset_gate_pr_kernel2/dcm_locked]
  connect_bd_net -net ext_reset_in1_1 [get_bd_pins ddrmem_0_c0_ddr4_ui_clk_sync_rst] [get_bd_pins psreset_ddrmem_n/ext_reset_in]
  connect_bd_net -net ext_reset_in4_1 [get_bd_pins ddrmem_3_c0_ddr4_ui_clk_sync_rst] [get_bd_pins psreset_ddrmem_n_3/aux_reset_in] [get_bd_pins psreset_ddrmem_n_4/ext_reset_in]
  connect_bd_net -net ext_reset_in_1 [get_bd_pins slice_reset_kernel_pr_Dout] [get_bd_pins psreset_gate_pr_apmclk/ext_reset_in] [get_bd_pins psreset_gate_pr_control/ext_reset_in] [get_bd_pins psreset_gate_pr_data/ext_reset_in] [get_bd_pins psreset_gate_pr_kernel/ext_reset_in] [get_bd_pins psreset_gate_pr_kernel2/ext_reset_in]
  connect_bd_net -net logic_reset_op_Res [get_bd_pins logic_reset_op_Res] [get_bd_pins logic_reset_op/Res]
  connect_bd_net -net psreset_ddrmem_n_2_interconnect_aresetn [get_bd_pins psreset_ddrmem_n_2_interconnect_aresetn] [get_bd_pins psreset_ddrmem_n_2/interconnect_aresetn]
  connect_bd_net -net psreset_ddrmem_n_3_interconnect_aresetn [get_bd_pins psreset_ddrmem_n_3_interconnect_aresetn] [get_bd_pins psreset_ddrmem_n_3/interconnect_aresetn]
  connect_bd_net -net psreset_ddrmem_n_4_interconnect_aresetn [get_bd_pins psreset_ddrmem_n_4_interconnect_aresetn] [get_bd_pins psreset_ddrmem_n_4/interconnect_aresetn]
  connect_bd_net -net psreset_ddrmem_n_interconnect_aresetn [get_bd_pins psreset_ddrmem_n_interconnect_aresetn] [get_bd_pins psreset_ddrmem_n/interconnect_aresetn]
  connect_bd_net -net psreset_gate_pr_apmclk_interconnect_aresetn [get_bd_pins psreset_gate_pr_apmclk_interconnect_aresetn] [get_bd_pins psreset_gate_pr_apmclk/interconnect_aresetn]
  connect_bd_net -net psreset_gate_pr_data_interconnect_aresetn1 [get_bd_pins psreset_gate_pr_data_interconnect_aresetn] [get_bd_pins psreset_gate_pr_data/interconnect_aresetn]
  connect_bd_net -net psreset_gate_pr_interconnect_aresetn [get_bd_pins psreset_gate_pr_control_interconnect_aresetn] [get_bd_pins psreset_gate_pr_control/interconnect_aresetn]
  connect_bd_net -net psreset_gate_pr_kernel2_interconnect_aresetn [get_bd_pins psreset_gate_pr_kernel2_interconnect_aresetn] [get_bd_pins psreset_gate_pr_kernel2/interconnect_aresetn]
  connect_bd_net -net psreset_gate_pr_kernel_interconnect_aresetn [get_bd_pins psreset_gate_pr_kernel_interconnect_aresetn] [get_bd_pins psreset_gate_pr_kernel/interconnect_aresetn]
  connect_bd_net -net slowest_sync_clk2_1 [get_bd_pins ddrmem_0_c0_ddr4_ui_clk] [get_bd_pins psreset_ddrmem_n/slowest_sync_clk]
  connect_bd_net -net slowest_sync_clk3_1 [get_bd_pins ddrmem_1_c0_ddr4_ui_clk] [get_bd_pins psreset_ddrmem_n_2/slowest_sync_clk]
  connect_bd_net -net slowest_sync_clk4_1 [get_bd_pins ddrmem_2_c0_ddr4_ui_clk] [get_bd_pins psreset_ddrmem_n_3/slowest_sync_clk]
  connect_bd_net -net slowest_sync_clk5_1 [get_bd_pins ddrmem_3_c0_ddr4_ui_clk] [get_bd_pins psreset_ddrmem_n_4/slowest_sync_clk]
  connect_bd_net -net slowest_sync_clk_1 [get_bd_pins clkwiz_sysclks_clk_out2] [get_bd_pins psreset_gate_pr_control/slowest_sync_clk]
  connect_bd_net -net slowest_sync_clk_2 [get_bd_pins clkwiz_sysclks_clk_out1] [get_bd_pins psreset_gate_pr_apmclk/slowest_sync_clk]
  connect_bd_net -net slowest_sync_clk_3 [get_bd_pins dma_pcie_axi_aclk] [get_bd_pins psreset_gate_pr_data/slowest_sync_clk]
  connect_bd_net -net slowest_sync_clk_4 [get_bd_pins clkwiz_kernel2_clk_out1] [get_bd_pins psreset_gate_pr_kernel2/slowest_sync_clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: apm_sys
proc create_hier_cell_apm_sys { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_apm_sys() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_axilite_M01_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_axilite_M02_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_aximm_host_M04_AXI
  create_bd_intf_pin -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 regslice_data_M_AXI
  create_bd_intf_pin -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 u_ocl_region_M00_AXI
  create_bd_intf_pin -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 u_ocl_region_M01_AXI
  create_bd_intf_pin -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 u_ocl_region_M02_AXI
  create_bd_intf_pin -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 u_ocl_region_M03_AXI

  # Create pins
  create_bd_pin -dir I -type clk clkwiz_kernel_clk_out1
  create_bd_pin -dir I -type clk clkwiz_sysclks_clk_out1
  create_bd_pin -dir I -type clk clkwiz_sysclks_clk_out2
  create_bd_pin -dir I -type clk dma_pcie_axi_aclk
  create_bd_pin -dir I -from 0 -to 0 -type rst psreset_gate_pr_apmclk_interconnect_aresetn
  create_bd_pin -dir I -from 0 -to 0 -type rst psreset_gate_pr_control_interconnect_aresetn
  create_bd_pin -dir I -from 0 -to 0 -type rst psreset_gate_pr_data_interconnect_aresetn
  create_bd_pin -dir I -from 0 -to 0 -type rst psreset_gate_pr_kernel_interconnect_axiresetn

  # Create instance: regslice_apm_a, and set properties
  set regslice_apm_a [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice regslice_apm_a ]

  # Create instance: regslice_apm_b, and set properties
  set regslice_apm_b [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice regslice_apm_b ]

  # Create instance: regslice_fifo_a, and set properties
  set regslice_fifo_a [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice regslice_fifo_a ]

  # Create instance: regslice_fifo_b, and set properties
  set regslice_fifo_b [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice regslice_fifo_b ]

  # Create instance: xilmonitor_apm, and set properties
  set xilmonitor_apm [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_perf_mon xilmonitor_apm ]
  set_property -dict [ list \
CONFIG.C_ENABLE_ADVANCED {0} \
CONFIG.C_ENABLE_EVENT_COUNT {0} \
CONFIG.C_ENABLE_PROFILE {1} \
CONFIG.C_ENABLE_TRACE {1} \
CONFIG.C_EN_EXT_EVENTS_FLAG {1} \
CONFIG.C_EN_FIRST_READ_FLAG {0} \
CONFIG.C_EN_FIRST_WRITE_FLAG {0} \
CONFIG.C_EN_LAST_READ_FLAG {1} \
CONFIG.C_EN_LAST_WRITE_FLAG {1} \
CONFIG.C_EN_RD_ADD_FLAG {1} \
CONFIG.C_EN_RESPONSE_FLAG {0} \
CONFIG.C_EN_SW_REG_WR_FLAG {1} \
CONFIG.C_EN_WR_ADD_FLAG {1} \
CONFIG.C_FIFO_AXIS_DEPTH {16} \
CONFIG.C_NUM_MONITOR_SLOTS {5} \
CONFIG.C_REG_ALL_MONITOR_SIGNALS {1} \
CONFIG.C_SHOW_AXI_IDS {0} \
CONFIG.C_SHOW_AXI_LEN {1} \
 ] $xilmonitor_apm

  # Create instance: xilmonitor_fifo0, and set properties
  set xilmonitor_fifo0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_fifo_mm_s xilmonitor_fifo0 ]
  set_property -dict [ list \
CONFIG.C_AXI4_BASEADDR {0x80001000} \
CONFIG.C_AXI4_HIGHADDR {0x80002FFF} \
CONFIG.C_AXIS_TUSER_WIDTH {32} \
CONFIG.C_DATA_INTERFACE_TYPE {1} \
CONFIG.C_RX_FIFO_DEPTH {4096} \
CONFIG.C_RX_FIFO_PF_THRESHOLD {4091} \
CONFIG.C_S_AXI4_DATA_WIDTH {256} \
CONFIG.C_USE_RX_CUT_THROUGH {true} \
CONFIG.C_USE_TX_CTRL {0} \
CONFIG.C_USE_TX_DATA {0} \
 ] $xilmonitor_fifo0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.C_AXI4_BASEADDR.VALUE_SRC {DEFAULT} \
CONFIG.C_AXI4_HIGHADDR.VALUE_SRC {DEFAULT} \
CONFIG.C_USE_TX_CTRL.VALUE_SRC {DEFAULT} \
 ] $xilmonitor_fifo0

  # Create instance: xilmonitor_subset0, and set properties
  set xilmonitor_subset0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter xilmonitor_subset0 ]
  set_property -dict [ list \
CONFIG.M_TDATA_NUM_BYTES {32} \
CONFIG.S_TDATA_NUM_BYTES {19} \
CONFIG.TDATA_REMAP {104'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,tdata[151:0]} \
 ] $xilmonitor_subset0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins u_ocl_region_M00_AXI] [get_bd_intf_pins xilmonitor_apm/SLOT_0_AXI]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins u_ocl_region_M01_AXI] [get_bd_intf_pins xilmonitor_apm/SLOT_2_AXI]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins u_ocl_region_M02_AXI] [get_bd_intf_pins xilmonitor_apm/SLOT_3_AXI]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins u_ocl_region_M03_AXI] [get_bd_intf_pins xilmonitor_apm/SLOT_4_AXI]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins regslice_data_M_AXI] [get_bd_intf_pins xilmonitor_apm/SLOT_1_AXI]
  connect_bd_intf_net -intf_net S_AXI_FULL_1 [get_bd_intf_pins interconnect_aximm_host_M04_AXI] [get_bd_intf_pins xilmonitor_fifo0/S_AXI_FULL]
  connect_bd_intf_net -intf_net axi_register_slice_0_M_AXI [get_bd_intf_pins regslice_apm_b/M_AXI] [get_bd_intf_pins xilmonitor_apm/S_AXI]
  connect_bd_intf_net -intf_net axi_register_slice_0_M_AXI1 [get_bd_intf_pins regslice_fifo_a/M_AXI] [get_bd_intf_pins regslice_fifo_b/S_AXI]
  connect_bd_intf_net -intf_net axi_register_slice_1_M_AXI [get_bd_intf_pins regslice_fifo_b/M_AXI] [get_bd_intf_pins xilmonitor_fifo0/S_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_M01_AXI_1 [get_bd_intf_pins interconnect_axilite_M01_AXI] [get_bd_intf_pins regslice_apm_a/S_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_M02_AXI_1 [get_bd_intf_pins interconnect_axilite_M02_AXI] [get_bd_intf_pins regslice_fifo_a/S_AXI]
  connect_bd_intf_net -intf_net regslice_apm_a_M_AXI [get_bd_intf_pins regslice_apm_a/M_AXI] [get_bd_intf_pins regslice_apm_b/S_AXI]
  connect_bd_intf_net -intf_net xilmonitor_apm_M_AXIS [get_bd_intf_pins xilmonitor_apm/M_AXIS] [get_bd_intf_pins xilmonitor_subset0/S_AXIS]
  connect_bd_intf_net -intf_net xilmonitor_subset0_M_AXIS [get_bd_intf_pins xilmonitor_fifo0/AXI_STR_RXD] [get_bd_intf_pins xilmonitor_subset0/M_AXIS]

  # Create port connections
  connect_bd_net -net core_aclk_1 [get_bd_pins clkwiz_kernel_clk_out1] [get_bd_pins xilmonitor_apm/ext_clk_0] [get_bd_pins xilmonitor_apm/ext_clk_2] [get_bd_pins xilmonitor_apm/ext_clk_3] [get_bd_pins xilmonitor_apm/ext_clk_4] [get_bd_pins xilmonitor_apm/slot_0_axi_aclk] [get_bd_pins xilmonitor_apm/slot_2_axi_aclk] [get_bd_pins xilmonitor_apm/slot_3_axi_aclk] [get_bd_pins xilmonitor_apm/slot_4_axi_aclk]
  connect_bd_net -net ext_clk_1_1 [get_bd_pins dma_pcie_axi_aclk] [get_bd_pins xilmonitor_apm/ext_clk_1] [get_bd_pins xilmonitor_apm/slot_1_axi_aclk]
  connect_bd_net -net m_axis_aresetn_1 [get_bd_pins psreset_gate_pr_kernel_interconnect_axiresetn] [get_bd_pins xilmonitor_apm/ext_rstn_0] [get_bd_pins xilmonitor_apm/ext_rstn_2] [get_bd_pins xilmonitor_apm/ext_rstn_3] [get_bd_pins xilmonitor_apm/ext_rstn_4] [get_bd_pins xilmonitor_apm/slot_0_axi_aresetn] [get_bd_pins xilmonitor_apm/slot_2_axi_aresetn] [get_bd_pins xilmonitor_apm/slot_3_axi_aresetn] [get_bd_pins xilmonitor_apm/slot_4_axi_aresetn]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins clkwiz_sysclks_clk_out1] [get_bd_pins regslice_fifo_a/aclk] [get_bd_pins regslice_fifo_b/aclk] [get_bd_pins xilmonitor_apm/core_aclk] [get_bd_pins xilmonitor_apm/m_axis_aclk] [get_bd_pins xilmonitor_fifo0/s_axi_aclk] [get_bd_pins xilmonitor_subset0/aclk]
  connect_bd_net -net s_axi_aclk_2 [get_bd_pins clkwiz_sysclks_clk_out2] [get_bd_pins regslice_apm_a/aclk] [get_bd_pins regslice_apm_b/aclk] [get_bd_pins xilmonitor_apm/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins psreset_gate_pr_apmclk_interconnect_aresetn] [get_bd_pins regslice_fifo_a/aresetn] [get_bd_pins regslice_fifo_b/aresetn] [get_bd_pins xilmonitor_apm/core_aresetn] [get_bd_pins xilmonitor_apm/m_axis_aresetn] [get_bd_pins xilmonitor_fifo0/s_axi_aresetn] [get_bd_pins xilmonitor_subset0/aresetn]
  connect_bd_net -net slot_1_axi_aresetn_1 [get_bd_pins psreset_gate_pr_control_interconnect_aresetn] [get_bd_pins regslice_apm_a/aresetn] [get_bd_pins regslice_apm_b/aresetn] [get_bd_pins xilmonitor_apm/s_axi_aresetn]
  connect_bd_net -net slot_1_axi_aresetn_2 [get_bd_pins psreset_gate_pr_data_interconnect_aresetn] [get_bd_pins xilmonitor_apm/ext_rstn_1] [get_bd_pins xilmonitor_apm/slot_1_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: pr_isolation_expanded
proc create_hier_cell_pr_isolation_expanded { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_pr_isolation_expanded() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 dma_pcie_M_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 dma_pcie_M_AXI_LITE
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_axilite_static_M02_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_axilite_static_M03_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_axilite_static_M05_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_axilite_static_M06_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_axilite_static_M07_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 regslice_control_M_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 regslice_data_M_AXI

  # Create pins
  create_bd_pin -dir I -type clk clkwiz_sysclks_clk_out2
  create_bd_pin -dir I clkwiz_sysclks_locked
  create_bd_pin -dir I -from 3 -to 0 concat_flash_dq_o_dout
  create_bd_pin -dir I -from 3 -to 0 concat_flash_tri_dout
  create_bd_pin -dir I -type clk dma_pcie_axi_aclk
  create_bd_pin -dir I -type rst dma_pcie_axi_aresetn
  create_bd_pin -dir I dma_pcie_user_lnk_up
  create_bd_pin -dir I emc_clk
  create_bd_pin -dir I flash_programmer_io0_o
  create_bd_pin -dir I flash_programmer_io0_t
  create_bd_pin -dir I flash_programmer_io1_o
  create_bd_pin -dir I flash_programmer_io1_t
  create_bd_pin -dir I flash_programmer_io2_o
  create_bd_pin -dir I flash_programmer_io2_t
  create_bd_pin -dir I flash_programmer_io3_o
  create_bd_pin -dir I flash_programmer_io3_t
  create_bd_pin -dir I -type clk flash_programmer_sck_o
  create_bd_pin -dir I flash_programmer_ss_t
  create_bd_pin -dir O iob_static_emc_clk_out
  create_bd_pin -dir O iob_static_init_calib_complete_out
  create_bd_pin -dir IO iob_static_io0
  create_bd_pin -dir O iob_static_io0_i
  create_bd_pin -dir IO iob_static_io1
  create_bd_pin -dir O iob_static_io1_i
  create_bd_pin -dir IO iob_static_io2
  create_bd_pin -dir O iob_static_io2_i
  create_bd_pin -dir IO iob_static_io3
  create_bd_pin -dir O iob_static_io3_i
  create_bd_pin -dir O iob_static_led_0_out
  create_bd_pin -dir O iob_static_perst_n_out
  create_bd_pin -dir IO iob_static_ss
  create_bd_pin -dir I -from 0 -to 0 logic_ddrcalib_op_Res
  create_bd_pin -dir I perst_n
  create_bd_pin -dir I -from 0 -to 0 -type rst psreset_ctrlclk_interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 slice_reset_kernel_pr_Dout
  create_bd_pin -dir I -from 0 -to 0 slice_ss0_Dout
  create_bd_pin -dir I -from 0 -to 0 slice_ss_1_Dout

  # Create instance: ddr_calib_status, and set properties
  set ddr_calib_status [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio ddr_calib_status ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_GPIO_WIDTH {1} \
 ] $ddr_calib_status

  # Create instance: gate_pr, and set properties
  set gate_pr [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio gate_pr ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS_2 {1} \
CONFIG.C_ALL_OUTPUTS {1} \
CONFIG.C_DOUT_DEFAULT {0xFFFFFFFF} \
CONFIG.C_GPIO2_WIDTH {2} \
CONFIG.C_GPIO_WIDTH {2} \
CONFIG.C_IS_DUAL {1} \
 ] $gate_pr

  # Create instance: interconnect_axilite_static, and set properties
  set interconnect_axilite_static [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect interconnect_axilite_static ]
  set_property -dict [ list \
CONFIG.NUM_MI {8} \
CONFIG.S00_HAS_REGSLICE {4} \
 ] $interconnect_axilite_static

  # Create instance: iob_static, and set properties
  set block_name iob_static
  set block_cell_name iob_static
  if { [catch {set iob_static [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $iob_static eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }

  # Create instance: psreset_regslice_ctrl_pr, and set properties
  set psreset_regslice_ctrl_pr [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset psreset_regslice_ctrl_pr ]
  set_property -dict [ list \
CONFIG.C_AUX_RST_WIDTH {1} \
CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_regslice_ctrl_pr

  # Create instance: psreset_regslice_data_pr, and set properties
  set psreset_regslice_data_pr [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset psreset_regslice_data_pr ]
  set_property -dict [ list \
CONFIG.C_AUX_RST_WIDTH {1} \
CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_regslice_data_pr

  # Create instance: regslice_control, and set properties
  set regslice_control [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice regslice_control ]

  # Create instance: regslice_data, and set properties
  set regslice_data [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice regslice_data ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {38} \
CONFIG.DATA_WIDTH {256} \
CONFIG.ID_WIDTH {4} \
CONFIG.PROTOCOL {AXI4} \
CONFIG.READ_WRITE_MODE {READ_WRITE} \
 ] $regslice_data

  # Create instance: slice_reset_kernel_pr, and set properties
  set slice_reset_kernel_pr [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice slice_reset_kernel_pr ]
  set_property -dict [ list \
CONFIG.DIN_FROM {1} \
CONFIG.DIN_TO {1} \
CONFIG.DIN_WIDTH {2} \
 ] $slice_reset_kernel_pr

  # Create instance: slice_reset_system_pr, and set properties
  set slice_reset_system_pr [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice slice_reset_system_pr ]
  set_property -dict [ list \
CONFIG.DIN_FROM {0} \
CONFIG.DIN_TO {0} \
CONFIG.DIN_WIDTH {2} \
 ] $slice_reset_system_pr

  # Create instance: startup_primitive, and set properties
  set block_name startup_wrapper
  set block_cell_name startup_primitive
  if { [catch {set startup_primitive [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $startup_primitive eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins dma_pcie_M_AXI_LITE] [get_bd_intf_pins interconnect_axilite_static/S00_AXI]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins dma_pcie_M_AXI] [get_bd_intf_pins regslice_data/S_AXI]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins regslice_control_M_AXI] [get_bd_intf_pins regslice_control/M_AXI]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins regslice_data_M_AXI] [get_bd_intf_pins regslice_data/M_AXI]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins interconnect_axilite_static_M05_AXI] [get_bd_intf_pins interconnect_axilite_static/M05_AXI]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins interconnect_axilite_static_M07_AXI] [get_bd_intf_pins interconnect_axilite_static/M07_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_static_M00_AXI [get_bd_intf_pins interconnect_axilite_static/M00_AXI] [get_bd_intf_pins regslice_control/S_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_static_M01_AXI [get_bd_intf_pins gate_pr/S_AXI] [get_bd_intf_pins interconnect_axilite_static/M01_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_static_M02_AXI [get_bd_intf_pins interconnect_axilite_static_M02_AXI] [get_bd_intf_pins interconnect_axilite_static/M02_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_static_M03_AXI [get_bd_intf_pins interconnect_axilite_static_M03_AXI] [get_bd_intf_pins interconnect_axilite_static/M03_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_static_M04_AXI [get_bd_intf_pins ddr_calib_status/S_AXI] [get_bd_intf_pins interconnect_axilite_static/M04_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_static_M06_AXI [get_bd_intf_pins interconnect_axilite_static_M06_AXI] [get_bd_intf_pins interconnect_axilite_static/M06_AXI]

  # Create port connections
  connect_bd_net -net ARESETN_1 [get_bd_pins dma_pcie_axi_aresetn] [get_bd_pins interconnect_axilite_static/S00_ARESETN] [get_bd_pins psreset_regslice_data_pr/ext_reset_in]
  connect_bd_net -net M00_ACLK_1 [get_bd_pins clkwiz_sysclks_clk_out2] [get_bd_pins ddr_calib_status/s_axi_aclk] [get_bd_pins gate_pr/s_axi_aclk] [get_bd_pins interconnect_axilite_static/ACLK] [get_bd_pins interconnect_axilite_static/M00_ACLK] [get_bd_pins interconnect_axilite_static/M01_ACLK] [get_bd_pins interconnect_axilite_static/M02_ACLK] [get_bd_pins interconnect_axilite_static/M03_ACLK] [get_bd_pins interconnect_axilite_static/M04_ACLK] [get_bd_pins interconnect_axilite_static/M05_ACLK] [get_bd_pins interconnect_axilite_static/M06_ACLK] [get_bd_pins interconnect_axilite_static/M07_ACLK] [get_bd_pins psreset_regslice_ctrl_pr/slowest_sync_clk] [get_bd_pins regslice_control/aclk]
  connect_bd_net -net M00_ARESETN_1 [get_bd_pins psreset_ctrlclk_interconnect_aresetn] [get_bd_pins ddr_calib_status/s_axi_aresetn] [get_bd_pins gate_pr/s_axi_aresetn] [get_bd_pins interconnect_axilite_static/ARESETN] [get_bd_pins interconnect_axilite_static/M00_ARESETN] [get_bd_pins interconnect_axilite_static/M01_ARESETN] [get_bd_pins interconnect_axilite_static/M02_ARESETN] [get_bd_pins interconnect_axilite_static/M03_ARESETN] [get_bd_pins interconnect_axilite_static/M04_ARESETN] [get_bd_pins interconnect_axilite_static/M05_ARESETN] [get_bd_pins interconnect_axilite_static/M06_ARESETN] [get_bd_pins interconnect_axilite_static/M07_ARESETN] [get_bd_pins psreset_regslice_ctrl_pr/ext_reset_in]
  connect_bd_net -net Net [get_bd_pins iob_static_ss] [get_bd_pins iob_static/ss]
  connect_bd_net -net Net1 [get_bd_pins iob_static_io0] [get_bd_pins iob_static/io0]
  connect_bd_net -net Net2 [get_bd_pins iob_static_io1] [get_bd_pins iob_static/io1]
  connect_bd_net -net Net3 [get_bd_pins iob_static_io2] [get_bd_pins iob_static/io2]
  connect_bd_net -net Net4 [get_bd_pins iob_static_io3] [get_bd_pins iob_static/io3]
  connect_bd_net -net dcm_locked_1 [get_bd_pins dma_pcie_user_lnk_up] [get_bd_pins iob_static/led_0_in] [get_bd_pins psreset_regslice_data_pr/dcm_locked]
  connect_bd_net -net dcm_locked_2 [get_bd_pins clkwiz_sysclks_locked] [get_bd_pins psreset_regslice_ctrl_pr/dcm_locked]
  connect_bd_net -net emc_clk_in_1 [get_bd_pins emc_clk] [get_bd_pins iob_static/emc_clk_in]
  connect_bd_net -net flash_CS_N_1 [get_bd_pins slice_ss0_Dout] [get_bd_pins startup_primitive/flash_CS_N]
  connect_bd_net -net flash_CS_N_tri_ctrl_1 [get_bd_pins flash_programmer_ss_t] [get_bd_pins iob_static/ss_t] [get_bd_pins startup_primitive/flash_CS_N_tri_ctrl]
  connect_bd_net -net flash_DQ_O_1 [get_bd_pins concat_flash_dq_o_dout] [get_bd_pins startup_primitive/flash_DQ_O]
  connect_bd_net -net flash_DQ_tri_ctrl_1 [get_bd_pins concat_flash_tri_dout] [get_bd_pins startup_primitive/flash_DQ_tri_ctrl]
  connect_bd_net -net flash_clk_1 [get_bd_pins flash_programmer_sck_o] [get_bd_pins startup_primitive/flash_clk]
  connect_bd_net -net gate_pr_gpio_io_o [get_bd_pins gate_pr/gpio2_io_i] [get_bd_pins gate_pr/gpio_io_o] [get_bd_pins slice_reset_kernel_pr/Din] [get_bd_pins slice_reset_system_pr/Din]
  connect_bd_net -net gpio_io_i_1 [get_bd_pins logic_ddrcalib_op_Res] [get_bd_pins ddr_calib_status/gpio_io_i] [get_bd_pins iob_static/init_calib_complete_in]
  connect_bd_net -net io0_o_1 [get_bd_pins flash_programmer_io0_o] [get_bd_pins iob_static/io0_o]
  connect_bd_net -net io0_t_1 [get_bd_pins flash_programmer_io0_t] [get_bd_pins iob_static/io0_t]
  connect_bd_net -net io1_o_1 [get_bd_pins flash_programmer_io1_o] [get_bd_pins iob_static/io1_o]
  connect_bd_net -net io1_t_1 [get_bd_pins flash_programmer_io1_t] [get_bd_pins iob_static/io1_t]
  connect_bd_net -net io2_o_1 [get_bd_pins flash_programmer_io2_o] [get_bd_pins iob_static/io2_o]
  connect_bd_net -net io2_t_1 [get_bd_pins flash_programmer_io2_t] [get_bd_pins iob_static/io2_t]
  connect_bd_net -net io3_o_1 [get_bd_pins flash_programmer_io3_o] [get_bd_pins iob_static/io3_o]
  connect_bd_net -net io3_t_1 [get_bd_pins flash_programmer_io3_t] [get_bd_pins iob_static/io3_t]
  connect_bd_net -net iob_static_emc_clk_out [get_bd_pins iob_static_emc_clk_out] [get_bd_pins iob_static/emc_clk_out]
  connect_bd_net -net iob_static_init_calib_complete_out [get_bd_pins iob_static_init_calib_complete_out] [get_bd_pins iob_static/init_calib_complete_out]
  connect_bd_net -net iob_static_io0_i [get_bd_pins iob_static_io0_i] [get_bd_pins iob_static/io0_i]
  connect_bd_net -net iob_static_io1_i [get_bd_pins iob_static_io1_i] [get_bd_pins iob_static/io1_i]
  connect_bd_net -net iob_static_io2_i [get_bd_pins iob_static_io2_i] [get_bd_pins iob_static/io2_i]
  connect_bd_net -net iob_static_io3_i [get_bd_pins iob_static_io3_i] [get_bd_pins iob_static/io3_i]
  connect_bd_net -net iob_static_led_0_out [get_bd_pins iob_static_led_0_out] [get_bd_pins iob_static/led_0_out]
  connect_bd_net -net iob_static_perst_n_out [get_bd_pins iob_static_perst_n_out] [get_bd_pins iob_static/perst_n_out]
  connect_bd_net -net perst_n_in_1 [get_bd_pins perst_n] [get_bd_pins iob_static/perst_n_in]
  connect_bd_net -net psreset_regslice_data_pr_interconnect_aresetn [get_bd_pins psreset_regslice_data_pr/interconnect_aresetn] [get_bd_pins regslice_data/aresetn]
  connect_bd_net -net psreset_regslice_pr_interconnect_aresetn [get_bd_pins psreset_regslice_ctrl_pr/interconnect_aresetn] [get_bd_pins regslice_control/aresetn]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins dma_pcie_axi_aclk] [get_bd_pins interconnect_axilite_static/S00_ACLK] [get_bd_pins psreset_regslice_data_pr/slowest_sync_clk] [get_bd_pins regslice_data/aclk]
  connect_bd_net -net slice_reset_kernel_pr_Dout [get_bd_pins slice_reset_kernel_pr_Dout] [get_bd_pins slice_reset_kernel_pr/Dout]
  connect_bd_net -net slice_reset_system_pr_Dout [get_bd_pins psreset_regslice_ctrl_pr/aux_reset_in] [get_bd_pins psreset_regslice_data_pr/aux_reset_in] [get_bd_pins slice_reset_system_pr/Dout]
  connect_bd_net -net ss_o_1 [get_bd_pins slice_ss_1_Dout] [get_bd_pins iob_static/ss_o]
  connect_bd_net -net startup_primitive_flash_DQ_I [get_bd_pins iob_static/flash_DQ_I] [get_bd_pins startup_primitive/flash_DQ_I]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: featureid
proc create_hier_cell_featureid { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_featureid() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_axilite_static_M02_AXI

  # Create pins
  create_bd_pin -dir I -type clk clkwiz_sysclks_clk_out2
  create_bd_pin -dir I -from 0 -to 0 -type rst psreset_ctrlclk_interconnect_aresetn

  # Create instance: const_featureid_high, and set properties
  set const_featureid_high [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant const_featureid_high ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {32} \
 ] $const_featureid_high

  # Create instance: const_featureid_low, and set properties
  set const_featureid_low [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant const_featureid_low ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {32} \
 ] $const_featureid_low

  # Create instance: gpio_featureid, and set properties
  set gpio_featureid [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio gpio_featureid ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_ALL_INPUTS_2 {1} \
CONFIG.C_IS_DUAL {1} \
 ] $gpio_featureid

  # Create interface connections
  connect_bd_intf_net -intf_net S_AXI_1 [get_bd_intf_pins interconnect_axilite_static_M02_AXI] [get_bd_intf_pins gpio_featureid/S_AXI]

  # Create port connections
  connect_bd_net -net const_featureid_high_dout [get_bd_pins const_featureid_high/dout] [get_bd_pins gpio_featureid/gpio2_io_i]
  connect_bd_net -net const_featureid_low_dout [get_bd_pins const_featureid_low/dout] [get_bd_pins gpio_featureid/gpio_io_i]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins clkwiz_sysclks_clk_out2] [get_bd_pins gpio_featureid/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins psreset_ctrlclk_interconnect_aresetn] [get_bd_pins gpio_featureid/s_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: base_tieoffs
proc create_hier_cell_base_tieoffs { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_base_tieoffs() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 0 -to 0 const_gnd_1_dout
  create_bd_pin -dir O -from 2 -to 0 const_gnd_3_dout
  create_bd_pin -dir O -from 0 -to 0 const_vcc_1_dout

  # Create instance: const_gnd_1, and set properties
  set const_gnd_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant const_gnd_1 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $const_gnd_1

  # Create instance: const_gnd_3, and set properties
  set const_gnd_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant const_gnd_3 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {3} \
 ] $const_gnd_3

  # Create instance: const_vcc_1, and set properties
  set const_vcc_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant const_vcc_1 ]

  # Create port connections
  connect_bd_net -net const_gnd_1_dout [get_bd_pins const_gnd_1_dout] [get_bd_pins const_gnd_1/dout]
  connect_bd_net -net const_gnd_3_dout [get_bd_pins const_gnd_3_dout] [get_bd_pins const_gnd_3/dout]
  connect_bd_net -net const_vcc_1_dout [get_bd_pins const_vcc_1_dout] [get_bd_pins const_vcc_1/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: base_clocking
proc create_hier_cell_base_clocking { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_base_clocking() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_axilite_static_M03_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 interconnect_axilite_static_M06_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 ref_clk

  # Create pins
  create_bd_pin -dir O -from 0 -to 0 -type clk buf_refclk_ibuf_IBUF_DS_ODIV2
  create_bd_pin -dir O -from 0 -to 0 -type clk buf_refclk_ibuf_IBUF_OUT
  create_bd_pin -dir O -type clk clkwiz_kernel2_clk_out1
  create_bd_pin -dir O clkwiz_kernel2_locked
  create_bd_pin -dir O -type clk clkwiz_kernel_clk_out1
  create_bd_pin -dir O clkwiz_kernel_locked
  create_bd_pin -dir O -type clk clkwiz_sysclks_clk_out1
  create_bd_pin -dir O -type clk clkwiz_sysclks_clk_out2
  create_bd_pin -dir O clkwiz_sysclks_locked
  create_bd_pin -dir I -from 0 -to 0 const_gnd_1_dout
  create_bd_pin -dir I -from 2 -to 0 const_gnd_3_dout
  create_bd_pin -dir I -from 0 -to 0 const_vcc_1_dout
  create_bd_pin -dir I -type rst iob_static_perst_n_out
  create_bd_pin -dir O -from 0 -to 0 -type rst psreset_ctrlclk_interconnect_aresetn

  # Create instance: buf_refclk_bufg, and set properties
  set buf_refclk_bufg [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf buf_refclk_bufg ]
  set_property -dict [ list \
CONFIG.C_BUF_TYPE {BUFG_GT} \
 ] $buf_refclk_bufg

  # Create instance: buf_refclk_ibuf, and set properties
  set buf_refclk_ibuf [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf buf_refclk_ibuf ]
  set_property -dict [ list \
CONFIG.C_BUF_TYPE {IBUFDSGTE} \
 ] $buf_refclk_ibuf

  # Create instance: clkwiz_kernel, and set properties
  set clkwiz_kernel [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz clkwiz_kernel ]
  set_property -dict [ list \
CONFIG.CLKOUT1_DRIVES {Buffer} \
CONFIG.CLKOUT1_JITTER {105.610} \
CONFIG.CLKOUT1_PHASE_ERROR {97.646} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {300.000} \
CONFIG.CLKOUT2_DRIVES {Buffer} \
CONFIG.CLKOUT3_DRIVES {Buffer} \
CONFIG.CLKOUT4_DRIVES {Buffer} \
CONFIG.CLKOUT5_DRIVES {Buffer} \
CONFIG.CLKOUT6_DRIVES {Buffer} \
CONFIG.CLKOUT7_DRIVES {Buffer} \
CONFIG.MMCM_CLKFBOUT_MULT_F {10.125} \
CONFIG.MMCM_CLKIN1_PERIOD {10.0} \
CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {3.375} \
CONFIG.USE_DYN_RECONFIG {true} \
 ] $clkwiz_kernel

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.CLKOUT1_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT1_JITTER.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT1_PHASE_ERROR.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT2_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT3_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT4_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT5_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT6_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT7_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKFBOUT_MULT_F.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN1_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN2_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F.VALUE_SRC {DEFAULT} \
 ] $clkwiz_kernel

  # Create instance: clkwiz_kernel2, and set properties
  set clkwiz_kernel2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz clkwiz_kernel2 ]
  set_property -dict [ list \
CONFIG.CLKOUT1_DRIVES {Buffer} \
CONFIG.CLKOUT1_JITTER {97.082} \
CONFIG.CLKOUT1_PHASE_ERROR {98.575} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {500.000} \
CONFIG.CLKOUT2_DRIVES {Buffer} \
CONFIG.CLKOUT3_DRIVES {Buffer} \
CONFIG.CLKOUT4_DRIVES {Buffer} \
CONFIG.CLKOUT5_DRIVES {Buffer} \
CONFIG.CLKOUT6_DRIVES {Buffer} \
CONFIG.CLKOUT7_DRIVES {Buffer} \
CONFIG.MMCM_CLKFBOUT_MULT_F {10.000} \
CONFIG.MMCM_CLKIN1_PERIOD {10.0} \
CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {2.000} \
CONFIG.MMCM_DIVCLK_DIVIDE {1} \
CONFIG.USE_DYN_RECONFIG {true} \
 ] $clkwiz_kernel2

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.CLKOUT1_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT1_PHASE_ERROR.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT2_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT3_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT4_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT5_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT6_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT7_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKFBOUT_MULT_F.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN1_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN2_PERIOD.VALUE_SRC {DEFAULT} \
 ] $clkwiz_kernel2

  # Create instance: clkwiz_sysclks, and set properties
  set clkwiz_sysclks [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz clkwiz_sysclks ]
  set_property -dict [ list \
CONFIG.CLKOUT1_DRIVES {Buffer} \
CONFIG.CLKOUT1_JITTER {122.522} \
CONFIG.CLKOUT1_PHASE_ERROR {132.063} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {300.000} \
CONFIG.CLKOUT2_DRIVES {Buffer} \
CONFIG.CLKOUT2_JITTER {174.353} \
CONFIG.CLKOUT2_PHASE_ERROR {132.063} \
CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {50.000} \
CONFIG.CLKOUT2_USED {true} \
CONFIG.CLKOUT3_DRIVES {Buffer} \
CONFIG.CLKOUT4_DRIVES {Buffer} \
CONFIG.CLKOUT5_DRIVES {Buffer} \
CONFIG.CLKOUT6_DRIVES {Buffer} \
CONFIG.CLKOUT7_DRIVES {Buffer} \
CONFIG.MMCM_CLKFBOUT_MULT_F {6} \
CONFIG.MMCM_CLKIN1_PERIOD {10.0} \
CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {2} \
CONFIG.MMCM_CLKOUT1_DIVIDE {12} \
CONFIG.MMCM_COMPENSATION {AUTO} \
CONFIG.MMCM_DIVCLK_DIVIDE {1} \
CONFIG.NUM_OUT_CLKS {2} \
CONFIG.PRIMITIVE {PLL} \
CONFIG.PRIM_SOURCE {Single_ended_clock_capable_pin} \
CONFIG.RESET_PORT {resetn} \
CONFIG.RESET_TYPE {ACTIVE_LOW} \
CONFIG.SECONDARY_SOURCE {Single_ended_clock_capable_pin} \
CONFIG.USE_PHASE_ALIGNMENT {false} \
 ] $clkwiz_sysclks

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.MMCM_CLKIN1_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN2_PERIOD.VALUE_SRC {DEFAULT} \
 ] $clkwiz_sysclks

  # Create instance: psreset_ctrlclk, and set properties
  set psreset_ctrlclk [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset psreset_ctrlclk ]
  set_property -dict [ list \
CONFIG.C_AUX_RST_WIDTH {1} \
CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_ctrlclk

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins ref_clk] [get_bd_intf_pins buf_refclk_ibuf/CLK_IN_D]
  connect_bd_intf_net -intf_net interconnect_axilite_static_M03_AXI_1 [get_bd_intf_pins interconnect_axilite_static_M03_AXI] [get_bd_intf_pins clkwiz_kernel/s_axi_lite]
  connect_bd_intf_net -intf_net s_axi_lite_1 [get_bd_intf_pins interconnect_axilite_static_M06_AXI] [get_bd_intf_pins clkwiz_kernel2/s_axi_lite]

  # Create port connections
  connect_bd_net -net BUFG_GT_CEMASK_1 [get_bd_pins const_gnd_1_dout] [get_bd_pins buf_refclk_bufg/BUFG_GT_CEMASK] [get_bd_pins buf_refclk_bufg/BUFG_GT_CLR] [get_bd_pins buf_refclk_bufg/BUFG_GT_CLRMASK]
  connect_bd_net -net BUFG_GT_CE_1 [get_bd_pins const_vcc_1_dout] [get_bd_pins buf_refclk_bufg/BUFG_GT_CE]
  connect_bd_net -net BUFG_GT_DIV_1 [get_bd_pins const_gnd_3_dout] [get_bd_pins buf_refclk_bufg/BUFG_GT_DIV]
  connect_bd_net -net buf_refclk_bufg_BUFG_GT_O [get_bd_pins buf_refclk_bufg/BUFG_GT_O] [get_bd_pins clkwiz_kernel/clk_in1] [get_bd_pins clkwiz_kernel2/clk_in1] [get_bd_pins clkwiz_sysclks/clk_in1]
  connect_bd_net -net buf_refclk_ibuf_IBUF_DS_ODIV2 [get_bd_pins buf_refclk_ibuf_IBUF_DS_ODIV2] [get_bd_pins buf_refclk_bufg/BUFG_GT_I] [get_bd_pins buf_refclk_ibuf/IBUF_DS_ODIV2]
  connect_bd_net -net buf_refclk_ibuf_IBUF_OUT [get_bd_pins buf_refclk_ibuf_IBUF_OUT] [get_bd_pins buf_refclk_ibuf/IBUF_OUT]
  connect_bd_net -net clkwiz_kernel2_clk_out1 [get_bd_pins clkwiz_kernel2_clk_out1] [get_bd_pins clkwiz_kernel2/clk_out1]
  connect_bd_net -net clkwiz_kernel2_locked [get_bd_pins clkwiz_kernel2_locked] [get_bd_pins clkwiz_kernel2/locked]
  connect_bd_net -net clkwiz_kernel_clk_out1 [get_bd_pins clkwiz_kernel_clk_out1] [get_bd_pins clkwiz_kernel/clk_out1]
  connect_bd_net -net clkwiz_kernel_locked [get_bd_pins clkwiz_kernel_locked] [get_bd_pins clkwiz_kernel/locked]
  connect_bd_net -net clkwiz_sysclks_clk_out1 [get_bd_pins clkwiz_sysclks_clk_out1] [get_bd_pins clkwiz_sysclks/clk_out1]
  connect_bd_net -net clkwiz_sysclks_clk_out2 [get_bd_pins clkwiz_sysclks_clk_out2] [get_bd_pins clkwiz_kernel/s_axi_aclk] [get_bd_pins clkwiz_kernel2/s_axi_aclk] [get_bd_pins clkwiz_sysclks/clk_out2] [get_bd_pins psreset_ctrlclk/slowest_sync_clk]
  connect_bd_net -net clkwiz_sysclks_locked [get_bd_pins clkwiz_sysclks_locked] [get_bd_pins clkwiz_sysclks/locked] [get_bd_pins psreset_ctrlclk/dcm_locked]
  connect_bd_net -net iob_static_perst_n_out_1 [get_bd_pins iob_static_perst_n_out] [get_bd_pins clkwiz_sysclks/resetn] [get_bd_pins psreset_ctrlclk/ext_reset_in]
  connect_bd_net -net proc_sys_reset_0_interconnect_aresetn [get_bd_pins psreset_ctrlclk_interconnect_aresetn] [get_bd_pins clkwiz_kernel/s_axi_aresetn] [get_bd_pins clkwiz_kernel2/s_axi_aresetn] [get_bd_pins psreset_ctrlclk/interconnect_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: expanded_region
proc create_hier_cell_expanded_region { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_expanded_region() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 c0_sys
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 c1_sys
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 c2_sys
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 c3_sys
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 ddrmem_0_C0_DDR4
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 ddrmem_1_C0_DDR4
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 ddrmem_2_C0_DDR4
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 ddrmem_3_C0_DDR4
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 regslice_control_M_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 regslice_data_M_AXI

  # Create pins
  create_bd_pin -dir O -from 31 -to 0 bscanid
  create_bd_pin -dir I capture
  create_bd_pin -dir I -type clk clkwiz_kernel2_clk_out1
  create_bd_pin -dir I clkwiz_kernel2_locked
  create_bd_pin -dir I -type clk clkwiz_kernel_clk_out1
  create_bd_pin -dir I clkwiz_kernel_locked
  create_bd_pin -dir I -type clk clkwiz_sysclks_clk_out1
  create_bd_pin -dir I -type clk clkwiz_sysclks_clk_out2
  create_bd_pin -dir I -type rst clkwiz_sysclks_locked
  create_bd_pin -dir O -from 3 -to 0 concat_flash_dq_o_dout
  create_bd_pin -dir O -from 3 -to 0 concat_flash_tri_dout
  create_bd_pin -dir I -type clk dma_pcie_axi_aclk
  create_bd_pin -dir I dma_pcie_user_lnk_up
  create_bd_pin -dir I drck
  create_bd_pin -dir O flash_programmer_io0_o
  create_bd_pin -dir O flash_programmer_io0_t
  create_bd_pin -dir O flash_programmer_io1_o
  create_bd_pin -dir O flash_programmer_io1_t
  create_bd_pin -dir O flash_programmer_io2_o
  create_bd_pin -dir O flash_programmer_io2_t
  create_bd_pin -dir O flash_programmer_io3_o
  create_bd_pin -dir O flash_programmer_io3_t
  create_bd_pin -dir O flash_programmer_sck_o
  create_bd_pin -dir O flash_programmer_ss_t
  create_bd_pin -dir I -type clk iob_static_emc_clk_out
  create_bd_pin -dir I iob_static_io0_i
  create_bd_pin -dir I iob_static_io1_i
  create_bd_pin -dir I iob_static_io2_i
  create_bd_pin -dir I iob_static_io3_i
  create_bd_pin -dir I iob_static_perst_n_out
  create_bd_pin -dir O logic_ddrcalib_op_Res
  create_bd_pin -dir I reset
  create_bd_pin -dir I runtest
  create_bd_pin -dir I sel
  create_bd_pin -dir I shift
  create_bd_pin -dir I -from 0 -to 0 -type rst slice_reset_kernel_pr_Dout
  create_bd_pin -dir O -from 0 -to 0 slice_ss_0_Dout
  create_bd_pin -dir O -from 0 -to 0 slice_ss_1_Dout
  create_bd_pin -dir I tck
  create_bd_pin -dir I tdi
  create_bd_pin -dir O tdo
  create_bd_pin -dir I tms
  create_bd_pin -dir I update

  # Create instance: apm_sys
  create_hier_cell_apm_sys $hier_obj apm_sys

  # Create instance: expanded_resets
  create_hier_cell_expanded_resets $hier_obj expanded_resets

  # Create instance: interconnect
  create_hier_cell_interconnect $hier_obj interconnect

  # Create instance: interconnect_axilite, and set properties
  set interconnect_axilite [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect interconnect_axilite ]
  set_property -dict [ list \
CONFIG.M00_HAS_REGSLICE {4} \
CONFIG.M01_HAS_REGSLICE {4} \
CONFIG.M02_HAS_REGSLICE {4} \
CONFIG.M03_HAS_REGSLICE {4} \
CONFIG.M04_HAS_REGSLICE {4} \
CONFIG.M05_HAS_REGSLICE {4} \
CONFIG.M06_HAS_REGSLICE {4} \
CONFIG.NUM_MI {7} \
CONFIG.S00_HAS_REGSLICE {4} \
 ] $interconnect_axilite

  # Create instance: memc
  create_hier_cell_memc $hier_obj memc

  # Create instance: pr_support_expanded
  create_hier_cell_pr_support_expanded $hier_obj pr_support_expanded

  # Create instance: u_ocl_region, and set properties
  set u_ocl_region [ create_bd_cell -type ip -vlnv xilinx.com:ip:ocl_block u_ocl_region ]
  set_property -dict [ list \
CONFIG.BOUNDARY_VERSION {2} \
CONFIG.ENABLE_SMARTCONNECT {false} \
CONFIG.HAS_CONTROL_CLOCK {true} \
CONFIG.HAS_KERNEL_CLOCK2 {true} \
CONFIG.HAS_S_MEM {false} \
CONFIG.KERNEL_TYPE {ADD_ONE} \
CONFIG.M00_AXIS_RX_TDATA_NUM_BYTES {8} \
CONFIG.M00_AXIS_RX_TUSER_WIDTH {8} \
CONFIG.M_ADDR_WIDTH {34} \
CONFIG.M_DATA_WIDTH {512} \
CONFIG.M_HAS_REGSLICE {4} \
CONFIG.M_ID_WIDTH {4} \
CONFIG.NUM_KERNELS {4} \
CONFIG.NUM_MI {4} \
CONFIG.NUM_M_AXIS_RX {0} \
CONFIG.NUM_S_AXIS_TX {0} \
CONFIG.S00_AXIS_TX_TDATA_NUM_BYTES {8} \
CONFIG.S00_AXIS_TX_TUSER_WIDTH {8} \
CONFIG.SYNC_RESET {true} \
CONFIG.S_ADDR_WIDTH {17} \
CONFIG.S_HAS_REGSLICE {4} \
CONFIG.S_MEM_ADDR_WIDTH {16} \
CONFIG.S_MEM_DATA_WIDTH {32} \
CONFIG.S_MEM_ID_WIDTH {1} \
CONFIG.USE_PR {false} \
 ] $u_ocl_region

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins c1_sys] [get_bd_intf_pins memc/c1_sys]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins ddrmem_0_C0_DDR4] [get_bd_intf_pins memc/ddrmem_0_C0_DDR4]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins c0_sys] [get_bd_intf_pins memc/c0_sys]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins ddrmem_1_C0_DDR4] [get_bd_intf_pins memc/ddrmem_1_C0_DDR4]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins c2_sys] [get_bd_intf_pins memc/c2_sys]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins ddrmem_2_C0_DDR4] [get_bd_intf_pins memc/ddrmem_2_C0_DDR4]
  connect_bd_intf_net -intf_net Conn7 [get_bd_intf_pins c3_sys] [get_bd_intf_pins memc/c3_sys]
  connect_bd_intf_net -intf_net Conn8 [get_bd_intf_pins ddrmem_3_C0_DDR4] [get_bd_intf_pins memc/ddrmem_3_C0_DDR4]
  connect_bd_intf_net -intf_net S00_AXI1_1 [get_bd_intf_pins regslice_data_M_AXI] [get_bd_intf_pins interconnect/regslice_data_M_AXI]
  connect_bd_intf_net -intf_net [get_bd_intf_nets S00_AXI1_1] [get_bd_intf_pins regslice_data_M_AXI] [get_bd_intf_pins apm_sys/regslice_data_M_AXI]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins regslice_control_M_AXI] [get_bd_intf_pins interconnect_axilite/S00_AXI]
  connect_bd_intf_net -intf_net interconnect_M00_AXI [get_bd_intf_pins interconnect/interconnect_aximm_ddrmem0_M00_AXI] [get_bd_intf_pins memc/interconnect_aximm_ddrmem0_M00_AXI]
  connect_bd_intf_net -intf_net interconnect_M00_AXI1 [get_bd_intf_pins interconnect/interconnect_aximm_ddrmem1_M00_AXI] [get_bd_intf_pins memc/interconnect_aximm_ddrmem1_M00_AXI]
  connect_bd_intf_net -intf_net interconnect_M00_AXI2 [get_bd_intf_pins interconnect/interconnect_aximm_ddrmem2_M00_AXI] [get_bd_intf_pins memc/interconnect_aximm_ddrmem2_M00_AXI]
  connect_bd_intf_net -intf_net interconnect_M00_AXI3 [get_bd_intf_pins interconnect/interconnect_aximm_ddrmem3_M00_AXI] [get_bd_intf_pins memc/interconnect_aximm_ddrmem3_M00_AXI]
  connect_bd_intf_net -intf_net interconnect_M04_AXI [get_bd_intf_pins apm_sys/interconnect_aximm_host_M04_AXI] [get_bd_intf_pins interconnect/interconnect_aximm_host_M04_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_M00_AXI [get_bd_intf_pins interconnect_axilite/M00_AXI] [get_bd_intf_pins pr_support_expanded/interconnect_axilite_M00_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_M01_AXI [get_bd_intf_pins apm_sys/interconnect_axilite_M01_AXI] [get_bd_intf_pins interconnect_axilite/M01_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_M02_AXI [get_bd_intf_pins apm_sys/interconnect_axilite_M02_AXI] [get_bd_intf_pins interconnect_axilite/M02_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_M03_AXI [get_bd_intf_pins interconnect_axilite/M03_AXI] [get_bd_intf_pins memc/interconnect_axilite_M03_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_M04_AXI [get_bd_intf_pins interconnect_axilite/M04_AXI] [get_bd_intf_pins memc/interconnect_axilite_M04_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_M05_AXI [get_bd_intf_pins interconnect_axilite/M05_AXI] [get_bd_intf_pins memc/interconnect_axilite_M05_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_M06_AXI [get_bd_intf_pins interconnect_axilite/M06_AXI] [get_bd_intf_pins u_ocl_region/S_AXI]
  connect_bd_intf_net -intf_net u_ocl_region_M00_AXI [get_bd_intf_pins interconnect/u_ocl_region_M00_AXI] [get_bd_intf_pins u_ocl_region/M00_AXI]
  connect_bd_intf_net -intf_net [get_bd_intf_nets u_ocl_region_M00_AXI] [get_bd_intf_pins apm_sys/u_ocl_region_M00_AXI] [get_bd_intf_pins u_ocl_region/M00_AXI]
  connect_bd_intf_net -intf_net u_ocl_region_M01_AXI [get_bd_intf_pins interconnect/u_ocl_region_M01_AXI] [get_bd_intf_pins u_ocl_region/M01_AXI]
  connect_bd_intf_net -intf_net [get_bd_intf_nets u_ocl_region_M01_AXI] [get_bd_intf_pins apm_sys/u_ocl_region_M01_AXI] [get_bd_intf_pins u_ocl_region/M01_AXI]
  connect_bd_intf_net -intf_net u_ocl_region_M02_AXI [get_bd_intf_pins interconnect/u_ocl_region_M02_AXI] [get_bd_intf_pins u_ocl_region/M02_AXI]
  connect_bd_intf_net -intf_net [get_bd_intf_nets u_ocl_region_M02_AXI] [get_bd_intf_pins apm_sys/u_ocl_region_M02_AXI] [get_bd_intf_pins u_ocl_region/M02_AXI]
  connect_bd_intf_net -intf_net u_ocl_region_M03_AXI [get_bd_intf_pins interconnect/u_ocl_region_M03_AXI] [get_bd_intf_pins u_ocl_region/M03_AXI]
  connect_bd_intf_net -intf_net [get_bd_intf_nets u_ocl_region_M03_AXI] [get_bd_intf_pins apm_sys/u_ocl_region_M03_AXI] [get_bd_intf_pins u_ocl_region/M03_AXI]

  # Create port connections
  connect_bd_net -net M01_ACLK_1 [get_bd_pins clkwiz_kernel_clk_out1] [get_bd_pins apm_sys/clkwiz_kernel_clk_out1] [get_bd_pins expanded_resets/clkwiz_kernel_clk_out1] [get_bd_pins interconnect/clkwiz_kernel_clk_out1] [get_bd_pins u_ocl_region/DATA_CLK]
  connect_bd_net -net M01_ARESETN_1 [get_bd_pins apm_sys/psreset_gate_pr_kernel_interconnect_axiresetn] [get_bd_pins expanded_resets/psreset_gate_pr_kernel_interconnect_aresetn] [get_bd_pins u_ocl_region/DATA_RESET]
  connect_bd_net -net M03_ARESETN_1 [get_bd_pins expanded_resets/psreset_ddrmem_n_interconnect_aresetn] [get_bd_pins interconnect_axilite/M03_ARESETN] [get_bd_pins memc/psreset_ddrmem_n_interconnect_aresetn]
  connect_bd_net -net Op1_1 [get_bd_pins iob_static_perst_n_out] [get_bd_pins expanded_resets/iob_static_perst_n_out]
  connect_bd_net -net S00_ACLK_1 [get_bd_pins dma_pcie_axi_aclk] [get_bd_pins apm_sys/dma_pcie_axi_aclk] [get_bd_pins expanded_resets/dma_pcie_axi_aclk] [get_bd_pins interconnect/dma_pcie_axi_aclk]
  connect_bd_net -net capture_1 [get_bd_pins capture] [get_bd_pins pr_support_expanded/capture]
  connect_bd_net -net dcm_locked_1 [get_bd_pins clkwiz_kernel_locked] [get_bd_pins expanded_resets/clkwiz_kernel_locked]
  connect_bd_net -net dcm_locked_2 [get_bd_pins dma_pcie_user_lnk_up] [get_bd_pins expanded_resets/dma_pcie_user_lnk_up]
  connect_bd_net -net dcm_locked_3 [get_bd_pins clkwiz_kernel2_locked] [get_bd_pins expanded_resets/clkwiz_kernel2_locked]
  connect_bd_net -net drck_1 [get_bd_pins drck] [get_bd_pins pr_support_expanded/drck]
  connect_bd_net -net expanded_resets_Res [get_bd_pins expanded_resets/logic_reset_op_Res] [get_bd_pins memc/logic_reset_op_Res]
  connect_bd_net -net expanded_resets_interconnect_aresetn [get_bd_pins apm_sys/psreset_gate_pr_data_interconnect_aresetn] [get_bd_pins expanded_resets/psreset_gate_pr_data_interconnect_aresetn] [get_bd_pins interconnect/psreset_gate_pr_data_interconnect_aresetn]
  connect_bd_net -net expanded_resets_interconnect_aresetn1 [get_bd_pins apm_sys/psreset_gate_pr_control_interconnect_aresetn] [get_bd_pins expanded_resets/psreset_gate_pr_control_interconnect_aresetn] [get_bd_pins interconnect_axilite/ARESETN] [get_bd_pins interconnect_axilite/M00_ARESETN] [get_bd_pins interconnect_axilite/M01_ARESETN] [get_bd_pins interconnect_axilite/M04_ARESETN] [get_bd_pins interconnect_axilite/M05_ARESETN] [get_bd_pins interconnect_axilite/M06_ARESETN] [get_bd_pins interconnect_axilite/S00_ARESETN] [get_bd_pins memc/psreset_gate_pr_control_interconnect_aresetn] [get_bd_pins pr_support_expanded/psreset_gate_pr_control_interconnect_aresetn] [get_bd_pins u_ocl_region/CONTROL_RESET]
  connect_bd_net -net expanded_resets_interconnect_aresetn2 [get_bd_pins expanded_resets/psreset_gate_pr_kernel2_interconnect_aresetn] [get_bd_pins u_ocl_region/KERNEL_RESET2]
  connect_bd_net -net expanded_resets_interconnect_aresetn3 [get_bd_pins expanded_resets/psreset_ddrmem_n_2_interconnect_aresetn] [get_bd_pins memc/psreset_ddrmem_n_2_interconnect_aresetn]
  connect_bd_net -net expanded_resets_interconnect_aresetn4 [get_bd_pins expanded_resets/psreset_ddrmem_n_3_interconnect_aresetn] [get_bd_pins memc/psreset_ddrmem_n_3_interconnect_aresetn]
  connect_bd_net -net expanded_resets_interconnect_aresetn5 [get_bd_pins expanded_resets/psreset_ddrmem_n_4_interconnect_aresetn] [get_bd_pins memc/psreset_ddrmem_n_4_interconnect_aresetn]
  connect_bd_net -net ext_reset_in_1 [get_bd_pins slice_reset_kernel_pr_Dout] [get_bd_pins expanded_resets/slice_reset_kernel_pr_Dout]
  connect_bd_net -net ext_spi_clk_1 [get_bd_pins iob_static_emc_clk_out] [get_bd_pins pr_support_expanded/iob_static_emc_clk_out]
  connect_bd_net -net io0_i_1 [get_bd_pins iob_static_io0_i] [get_bd_pins pr_support_expanded/iob_static_io0_i]
  connect_bd_net -net io1_i_1 [get_bd_pins iob_static_io1_i] [get_bd_pins pr_support_expanded/iob_static_io1_i]
  connect_bd_net -net io2_i_1 [get_bd_pins iob_static_io2_i] [get_bd_pins pr_support_expanded/iob_static_io2_i]
  connect_bd_net -net io3_i_1 [get_bd_pins iob_static_io3_i] [get_bd_pins pr_support_expanded/iob_static_io3_i]
  connect_bd_net -net logic_reset_op_Res_1 [get_bd_pins clkwiz_sysclks_locked] [get_bd_pins expanded_resets/clkwiz_sysclks_locked]
  connect_bd_net -net memory_Res [get_bd_pins logic_ddrcalib_op_Res] [get_bd_pins memc/logic_ddrcalib_op_Res]
  connect_bd_net -net memory_c0_ddr4_ui_clk [get_bd_pins expanded_resets/ddrmem_0_c0_ddr4_ui_clk] [get_bd_pins interconnect/ddrmem_0_c0_ddr4_ui_clk] [get_bd_pins interconnect_axilite/M03_ACLK] [get_bd_pins memc/ddrmem_0_c0_ddr4_ui_clk] [get_bd_pins pr_support_expanded/ddrmem_0_c0_ddr4_ui_clk]
  connect_bd_net -net memory_c0_ddr4_ui_clk1 [get_bd_pins expanded_resets/ddrmem_1_c0_ddr4_ui_clk] [get_bd_pins interconnect/ddrmem_1_c0_ddr4_ui_clk] [get_bd_pins memc/ddrmem_1_c0_ddr4_ui_clk]
  connect_bd_net -net memory_c0_ddr4_ui_clk2 [get_bd_pins expanded_resets/ddrmem_2_c0_ddr4_ui_clk] [get_bd_pins interconnect/ddrmem_2_c0_ddr4_ui_clk] [get_bd_pins memc/ddrmem_2_c0_ddr4_ui_clk]
  connect_bd_net -net memory_c0_ddr4_ui_clk3 [get_bd_pins expanded_resets/ddrmem_3_c0_ddr4_ui_clk] [get_bd_pins interconnect/ddrmem_3_c0_ddr4_ui_clk] [get_bd_pins memc/ddrmem_3_c0_ddr4_ui_clk]
  connect_bd_net -net memory_c0_ddr4_ui_clk_sync_rst [get_bd_pins expanded_resets/ddrmem_0_c0_ddr4_ui_clk_sync_rst] [get_bd_pins memc/ddrmem_0_c0_ddr4_ui_clk_sync_rst]
  connect_bd_net -net memory_c0_ddr4_ui_clk_sync_rst1 [get_bd_pins expanded_resets/ddrmem_1_c0_ddr4_ui_clk_sync_rst] [get_bd_pins memc/ddrmem_1_c0_ddr4_ui_clk_sync_rst]
  connect_bd_net -net memory_c0_ddr4_ui_clk_sync_rst2 [get_bd_pins expanded_resets/ddrmem_2_c0_ddr4_ui_clk_sync_rst] [get_bd_pins memc/ddrmem_2_c0_ddr4_ui_clk_sync_rst]
  connect_bd_net -net memory_c0_ddr4_ui_clk_sync_rst3 [get_bd_pins expanded_resets/ddrmem_3_c0_ddr4_ui_clk_sync_rst] [get_bd_pins memc/ddrmem_3_c0_ddr4_ui_clk_sync_rst]
  connect_bd_net -net pr_support_expanded_Dout1 [get_bd_pins slice_ss_0_Dout] [get_bd_pins pr_support_expanded/slice_ss_0_Dout]
  connect_bd_net -net pr_support_expanded_Dout2 [get_bd_pins slice_ss_1_Dout] [get_bd_pins pr_support_expanded/slice_ss_1_Dout]
  connect_bd_net -net pr_support_expanded_bscanid [get_bd_pins bscanid] [get_bd_pins pr_support_expanded/bscanid]
  connect_bd_net -net pr_support_expanded_dout [get_bd_pins concat_flash_dq_o_dout] [get_bd_pins pr_support_expanded/concat_flash_dq_o_dout]
  connect_bd_net -net pr_support_expanded_dout3 [get_bd_pins concat_flash_tri_dout] [get_bd_pins pr_support_expanded/concast_flash_tri_dout]
  connect_bd_net -net pr_support_expanded_io0_o [get_bd_pins flash_programmer_io0_o] [get_bd_pins pr_support_expanded/flash_programmer_io0_o]
  connect_bd_net -net pr_support_expanded_io0_t [get_bd_pins flash_programmer_io0_t] [get_bd_pins pr_support_expanded/flash_programmer_io0_t]
  connect_bd_net -net pr_support_expanded_io1_o [get_bd_pins flash_programmer_io1_o] [get_bd_pins pr_support_expanded/flash_programmer_io1_o]
  connect_bd_net -net pr_support_expanded_io1_t [get_bd_pins flash_programmer_io1_t] [get_bd_pins pr_support_expanded/flash_programmer_io1_t]
  connect_bd_net -net pr_support_expanded_io2_o [get_bd_pins flash_programmer_io2_o] [get_bd_pins pr_support_expanded/flash_programmer_io2_o]
  connect_bd_net -net pr_support_expanded_io2_t [get_bd_pins flash_programmer_io2_t] [get_bd_pins pr_support_expanded/flash_programmer_io2_t]
  connect_bd_net -net pr_support_expanded_io3_o [get_bd_pins flash_programmer_io3_o] [get_bd_pins pr_support_expanded/flash_programmer_io3_o]
  connect_bd_net -net pr_support_expanded_io3_t [get_bd_pins flash_programmer_io3_t] [get_bd_pins pr_support_expanded/flash_programmer_io3_t]
  connect_bd_net -net pr_support_expanded_sck_o [get_bd_pins flash_programmer_sck_o] [get_bd_pins pr_support_expanded/flash_programmer_sck_o]
  connect_bd_net -net pr_support_expanded_ss_t [get_bd_pins flash_programmer_ss_t] [get_bd_pins pr_support_expanded/flash_programmer_ss_t]
  connect_bd_net -net pr_support_expanded_tdo [get_bd_pins tdo] [get_bd_pins pr_support_expanded/tdo]
  connect_bd_net -net reset_1 [get_bd_pins reset] [get_bd_pins pr_support_expanded/reset]
  connect_bd_net -net runtest_1 [get_bd_pins runtest] [get_bd_pins pr_support_expanded/runtest]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins apm_sys/psreset_gate_pr_apmclk_interconnect_aresetn] [get_bd_pins expanded_resets/psreset_gate_pr_apmclk_interconnect_aresetn] [get_bd_pins interconnect_axilite/M02_ARESETN]
  connect_bd_net -net sel_1 [get_bd_pins sel] [get_bd_pins pr_support_expanded/sel]
  connect_bd_net -net shift_1 [get_bd_pins shift] [get_bd_pins pr_support_expanded/shift]
  connect_bd_net -net slowest_sync_clk_1 [get_bd_pins clkwiz_sysclks_clk_out2] [get_bd_pins apm_sys/clkwiz_sysclks_clk_out2] [get_bd_pins expanded_resets/clkwiz_sysclks_clk_out2] [get_bd_pins interconnect_axilite/ACLK] [get_bd_pins interconnect_axilite/M00_ACLK] [get_bd_pins interconnect_axilite/M01_ACLK] [get_bd_pins interconnect_axilite/M04_ACLK] [get_bd_pins interconnect_axilite/M05_ACLK] [get_bd_pins interconnect_axilite/M06_ACLK] [get_bd_pins interconnect_axilite/S00_ACLK] [get_bd_pins memc/clkwiz_sysclks_clk_out2] [get_bd_pins pr_support_expanded/clkwiz_sysclks_clk_out2] [get_bd_pins u_ocl_region/CONTROL_CLK]
  connect_bd_net -net slowest_sync_clk_2 [get_bd_pins clkwiz_sysclks_clk_out1] [get_bd_pins apm_sys/clkwiz_sysclks_clk_out1] [get_bd_pins expanded_resets/clkwiz_sysclks_clk_out1] [get_bd_pins interconnect/clkwiz_sysclks_clk_out1] [get_bd_pins interconnect_axilite/M02_ACLK]
  connect_bd_net -net slowest_sync_clk_3 [get_bd_pins clkwiz_kernel2_clk_out1] [get_bd_pins expanded_resets/clkwiz_kernel2_clk_out1] [get_bd_pins u_ocl_region/KERNEL_CLK2]
  connect_bd_net -net tck_1 [get_bd_pins tck] [get_bd_pins pr_support_expanded/tck]
  connect_bd_net -net tdi_1 [get_bd_pins tdi] [get_bd_pins pr_support_expanded/tdi]
  connect_bd_net -net tms_1 [get_bd_pins tms] [get_bd_pins pr_support_expanded/tms]
  connect_bd_net -net update_1 [get_bd_pins update] [get_bd_pins pr_support_expanded/debug_bridge_xsdbm_update]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: base_region
proc create_hier_cell_base_region { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_base_region() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 axi_i2c_IIC
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 dma_pcie_pcie_mgt
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 ref_clk
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 regslice_control_M_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 regslice_data_M_AXI

  # Create pins
  create_bd_pin -dir O -from 0 -to 0 axi_i2c_gpo
  create_bd_pin -dir O -type clk clkwiz_kernel2_clk_out1
  create_bd_pin -dir O clkwiz_kernel2_locked
  create_bd_pin -dir O -type clk clkwiz_kernel_clk_out1
  create_bd_pin -dir O clkwiz_kernel_locked
  create_bd_pin -dir O -type clk clkwiz_sysclks_clk_out1
  create_bd_pin -dir O -type clk clkwiz_sysclks_clk_out2
  create_bd_pin -dir O clkwiz_sysclks_locked
  create_bd_pin -dir I -from 3 -to 0 concat_flash_dq_o_dout
  create_bd_pin -dir I -from 3 -to 0 concat_flash_tri_dout
  create_bd_pin -dir O -type clk dma_pcie_axi_aclk
  create_bd_pin -dir O dma_pcie_user_lnk_up
  create_bd_pin -dir I emc_clk
  create_bd_pin -dir I flash_programmer_io0_o
  create_bd_pin -dir I flash_programmer_io0_t
  create_bd_pin -dir I flash_programmer_io1_o
  create_bd_pin -dir I flash_programmer_io1_t
  create_bd_pin -dir I flash_programmer_io2_o
  create_bd_pin -dir I flash_programmer_io2_t
  create_bd_pin -dir I flash_programmer_io3_o
  create_bd_pin -dir I flash_programmer_io3_t
  create_bd_pin -dir I -type clk flash_programmer_sck_o
  create_bd_pin -dir I flash_programmer_ss_t
  create_bd_pin -dir O iob_static_emc_clk_out
  create_bd_pin -dir O iob_static_init_calib_complete_out
  create_bd_pin -dir IO iob_static_io0
  create_bd_pin -dir O iob_static_io0_i
  create_bd_pin -dir IO iob_static_io1
  create_bd_pin -dir O iob_static_io1_i
  create_bd_pin -dir IO iob_static_io2
  create_bd_pin -dir O iob_static_io2_i
  create_bd_pin -dir IO iob_static_io3
  create_bd_pin -dir O iob_static_io3_i
  create_bd_pin -dir O iob_static_led_0_out
  create_bd_pin -dir O iob_static_perst_n_out
  create_bd_pin -dir IO iob_static_ss
  create_bd_pin -dir I logic_ddrcalib_op_Res
  create_bd_pin -dir I perst_n
  create_bd_pin -dir O -from 0 -to 0 slice_reset_kernel_pr_Dout
  create_bd_pin -dir I -from 0 -to 0 slice_ss0_Dout
  create_bd_pin -dir I -from 0 -to 0 slice_ss_1_Dout

  # Create instance: axi_i2c, and set properties
  set axi_i2c [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic axi_i2c ]
  set_property -dict [ list \
CONFIG.C_DEFAULT_VALUE {0x01} \
 ] $axi_i2c

  # Create instance: base_clocking
  create_hier_cell_base_clocking $hier_obj base_clocking

  # Create instance: base_tieoffs
  create_hier_cell_base_tieoffs $hier_obj base_tieoffs

  # Create instance: dma_pcie, and set properties
  set dma_pcie [ create_bd_cell -type ip -vlnv xilinx.com:ip:xdma dma_pcie ]
  set_property -dict [ list \
CONFIG.axi_data_width {256_bit} \
CONFIG.axi_id_width {2} \
CONFIG.axilite_master_en {true} \
CONFIG.axilite_master_size {4} \
CONFIG.axisten_freq {250} \
CONFIG.cfg_mgmt_if {false} \
CONFIG.coreclk_freq {500} \
CONFIG.mcap_enablement {PR_over_PCIe} \
CONFIG.mode_selection {Advanced} \
CONFIG.pf0_device_id {8238} \
CONFIG.pf0_subsystem_id {4432} \
CONFIG.pl_link_cap_max_link_speed {8.0_GT/s} \
CONFIG.pl_link_cap_max_link_width {X8} \
CONFIG.plltype {QPLL1} \
CONFIG.xdma_num_usr_irq {16} \
CONFIG.xdma_rnum_chnl {2} \
CONFIG.xdma_wnum_chnl {2} \
 ] $dma_pcie

  # Create instance: featureid
  create_hier_cell_featureid $hier_obj featureid

  # Create instance: pr_isolation_expanded
  create_hier_cell_pr_isolation_expanded $hier_obj pr_isolation_expanded

  # Create instance: sys_mgmt_wiz, and set properties
  set sys_mgmt_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_management_wiz sys_mgmt_wiz ]
  set_property -dict [ list \
CONFIG.AVERAGE_ENABLE_TEMPERATURE {true} \
CONFIG.AVERAGE_ENABLE_VBRAM {true} \
CONFIG.AVERAGE_ENABLE_VCCAUX {true} \
CONFIG.AVERAGE_ENABLE_VCCINT {true} \
CONFIG.CHANNEL_ENABLE_VP_VN {false} \
CONFIG.DCLK_FREQUENCY {50} \
CONFIG.OT_ALARM {false} \
CONFIG.USER_TEMP_ALARM {false} \
CONFIG.VCCAUX_ALARM {false} \
CONFIG.VCCINT_ALARM {false} \
 ] $sys_mgmt_wiz

  set_property -dict [ list \
CONFIG.NUM_READ_OUTSTANDING {1} \
CONFIG.NUM_WRITE_OUTSTANDING {1} \
 ] [get_bd_intf_pins /base_region/sys_mgmt_wiz/S_AXI_LITE]

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins dma_pcie_pcie_mgt] [get_bd_intf_pins dma_pcie/pcie_mgt]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins ref_clk] [get_bd_intf_pins base_clocking/ref_clk]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins axi_i2c_IIC] [get_bd_intf_pins axi_i2c/IIC]
  connect_bd_intf_net -intf_net dma_pcie_M_AXI [get_bd_intf_pins dma_pcie/M_AXI] [get_bd_intf_pins pr_isolation_expanded/dma_pcie_M_AXI]
  connect_bd_intf_net -intf_net dma_pcie_M_AXI_LITE [get_bd_intf_pins dma_pcie/M_AXI_LITE] [get_bd_intf_pins pr_isolation_expanded/dma_pcie_M_AXI_LITE]
  connect_bd_intf_net -intf_net pr_isolation_expanded_M02_AXI [get_bd_intf_pins featureid/interconnect_axilite_static_M02_AXI] [get_bd_intf_pins pr_isolation_expanded/interconnect_axilite_static_M02_AXI]
  connect_bd_intf_net -intf_net pr_isolation_expanded_M03_AXI [get_bd_intf_pins base_clocking/interconnect_axilite_static_M03_AXI] [get_bd_intf_pins pr_isolation_expanded/interconnect_axilite_static_M03_AXI]
  connect_bd_intf_net -intf_net pr_isolation_expanded_M05_AXI [get_bd_intf_pins axi_i2c/S_AXI] [get_bd_intf_pins pr_isolation_expanded/interconnect_axilite_static_M05_AXI]
  connect_bd_intf_net -intf_net pr_isolation_expanded_M06_AXI [get_bd_intf_pins base_clocking/interconnect_axilite_static_M06_AXI] [get_bd_intf_pins pr_isolation_expanded/interconnect_axilite_static_M06_AXI]
  connect_bd_intf_net -intf_net pr_isolation_expanded_M07_AXI [get_bd_intf_pins pr_isolation_expanded/interconnect_axilite_static_M07_AXI] [get_bd_intf_pins sys_mgmt_wiz/S_AXI_LITE]
  connect_bd_intf_net -intf_net pr_isolation_expanded_M_AXI [get_bd_intf_pins regslice_control_M_AXI] [get_bd_intf_pins pr_isolation_expanded/regslice_control_M_AXI]
  connect_bd_intf_net -intf_net pr_isolation_expanded_M_AXI1 [get_bd_intf_pins regslice_data_M_AXI] [get_bd_intf_pins pr_isolation_expanded/regslice_data_M_AXI]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins iob_static_ss] [get_bd_pins pr_isolation_expanded/iob_static_ss]
  connect_bd_net -net Net1 [get_bd_pins iob_static_io0] [get_bd_pins pr_isolation_expanded/iob_static_io0]
  connect_bd_net -net Net2 [get_bd_pins iob_static_io1] [get_bd_pins pr_isolation_expanded/iob_static_io1]
  connect_bd_net -net Net3 [get_bd_pins iob_static_io2] [get_bd_pins pr_isolation_expanded/iob_static_io2]
  connect_bd_net -net Net4 [get_bd_pins iob_static_io3] [get_bd_pins pr_isolation_expanded/iob_static_io3]
  connect_bd_net -net axi_i2c_gpo [get_bd_pins axi_i2c_gpo] [get_bd_pins axi_i2c/gpo]
  connect_bd_net -net base_clocking_IBUF_DS_ODIV2 [get_bd_pins base_clocking/buf_refclk_ibuf_IBUF_DS_ODIV2] [get_bd_pins dma_pcie/sys_clk]
  connect_bd_net -net base_clocking_IBUF_OUT [get_bd_pins base_clocking/buf_refclk_ibuf_IBUF_OUT] [get_bd_pins dma_pcie/sys_clk_gt]
  connect_bd_net -net base_clocking_clk_out1 [get_bd_pins clkwiz_kernel_clk_out1] [get_bd_pins base_clocking/clkwiz_kernel_clk_out1]
  connect_bd_net -net base_clocking_clk_out2 [get_bd_pins clkwiz_sysclks_clk_out2] [get_bd_pins axi_i2c/s_axi_aclk] [get_bd_pins base_clocking/clkwiz_sysclks_clk_out2] [get_bd_pins featureid/clkwiz_sysclks_clk_out2] [get_bd_pins pr_isolation_expanded/clkwiz_sysclks_clk_out2] [get_bd_pins sys_mgmt_wiz/s_axi_aclk]
  connect_bd_net -net base_clocking_clk_out3 [get_bd_pins clkwiz_sysclks_clk_out1] [get_bd_pins base_clocking/clkwiz_sysclks_clk_out1]
  connect_bd_net -net base_clocking_clk_out4 [get_bd_pins clkwiz_kernel2_clk_out1] [get_bd_pins base_clocking/clkwiz_kernel2_clk_out1]
  connect_bd_net -net base_clocking_interconnect_aresetn [get_bd_pins axi_i2c/s_axi_aresetn] [get_bd_pins base_clocking/psreset_ctrlclk_interconnect_aresetn] [get_bd_pins featureid/psreset_ctrlclk_interconnect_aresetn] [get_bd_pins pr_isolation_expanded/psreset_ctrlclk_interconnect_aresetn] [get_bd_pins sys_mgmt_wiz/s_axi_aresetn]
  connect_bd_net -net base_clocking_locked [get_bd_pins clkwiz_kernel_locked] [get_bd_pins base_clocking/clkwiz_kernel_locked]
  connect_bd_net -net base_clocking_locked1 [get_bd_pins clkwiz_sysclks_locked] [get_bd_pins base_clocking/clkwiz_sysclks_locked] [get_bd_pins pr_isolation_expanded/clkwiz_sysclks_locked]
  connect_bd_net -net base_clocking_locked2 [get_bd_pins clkwiz_kernel2_locked] [get_bd_pins base_clocking/clkwiz_kernel2_locked]
  connect_bd_net -net base_tieoffs_dout [get_bd_pins base_clocking/const_gnd_1_dout] [get_bd_pins base_tieoffs/const_gnd_1_dout]
  connect_bd_net -net base_tieoffs_dout1 [get_bd_pins base_clocking/const_gnd_3_dout] [get_bd_pins base_tieoffs/const_gnd_3_dout]
  connect_bd_net -net base_tieoffs_dout2 [get_bd_pins base_clocking/const_vcc_1_dout] [get_bd_pins base_tieoffs/const_vcc_1_dout]
  connect_bd_net -net dma_pcie_axi_aclk [get_bd_pins dma_pcie_axi_aclk] [get_bd_pins dma_pcie/axi_aclk] [get_bd_pins pr_isolation_expanded/dma_pcie_axi_aclk]
  connect_bd_net -net dma_pcie_axi_aresetn [get_bd_pins dma_pcie/axi_aresetn] [get_bd_pins pr_isolation_expanded/dma_pcie_axi_aresetn]
  connect_bd_net -net dma_pcie_user_lnk_up [get_bd_pins dma_pcie_user_lnk_up] [get_bd_pins dma_pcie/user_lnk_up] [get_bd_pins pr_isolation_expanded/dma_pcie_user_lnk_up]
  connect_bd_net -net emc_clk_in_1 [get_bd_pins emc_clk] [get_bd_pins pr_isolation_expanded/emc_clk]
  connect_bd_net -net flash_CS_N_1 [get_bd_pins slice_ss0_Dout] [get_bd_pins pr_isolation_expanded/slice_ss0_Dout]
  connect_bd_net -net flash_CS_N_tri_ctrl_1 [get_bd_pins flash_programmer_ss_t] [get_bd_pins pr_isolation_expanded/flash_programmer_ss_t]
  connect_bd_net -net flash_DQ_O_1 [get_bd_pins concat_flash_dq_o_dout] [get_bd_pins pr_isolation_expanded/concat_flash_dq_o_dout]
  connect_bd_net -net flash_DQ_tri_ctrl_1 [get_bd_pins concat_flash_tri_dout] [get_bd_pins pr_isolation_expanded/concat_flash_tri_dout]
  connect_bd_net -net flash_clk_1 [get_bd_pins flash_programmer_sck_o] [get_bd_pins pr_isolation_expanded/flash_programmer_sck_o]
  connect_bd_net -net gpio_io_i_1 [get_bd_pins logic_ddrcalib_op_Res] [get_bd_pins pr_isolation_expanded/logic_ddrcalib_op_Res]
  connect_bd_net -net io0_o_1 [get_bd_pins flash_programmer_io0_o] [get_bd_pins pr_isolation_expanded/flash_programmer_io0_o]
  connect_bd_net -net io0_t_1 [get_bd_pins flash_programmer_io0_t] [get_bd_pins pr_isolation_expanded/flash_programmer_io0_t]
  connect_bd_net -net io1_o_1 [get_bd_pins flash_programmer_io1_o] [get_bd_pins pr_isolation_expanded/flash_programmer_io1_o]
  connect_bd_net -net io1_t_1 [get_bd_pins flash_programmer_io1_t] [get_bd_pins pr_isolation_expanded/flash_programmer_io1_t]
  connect_bd_net -net io2_o_1 [get_bd_pins flash_programmer_io2_o] [get_bd_pins pr_isolation_expanded/flash_programmer_io2_o]
  connect_bd_net -net io2_t_1 [get_bd_pins flash_programmer_io2_t] [get_bd_pins pr_isolation_expanded/flash_programmer_io2_t]
  connect_bd_net -net io3_o_1 [get_bd_pins flash_programmer_io3_o] [get_bd_pins pr_isolation_expanded/flash_programmer_io3_o]
  connect_bd_net -net io3_t_1 [get_bd_pins flash_programmer_io3_t] [get_bd_pins pr_isolation_expanded/flash_programmer_io3_t]
  connect_bd_net -net perst_n_in_1 [get_bd_pins perst_n] [get_bd_pins pr_isolation_expanded/perst_n]
  connect_bd_net -net pr_isolation_expanded_Dout [get_bd_pins slice_reset_kernel_pr_Dout] [get_bd_pins pr_isolation_expanded/slice_reset_kernel_pr_Dout]
  connect_bd_net -net pr_isolation_expanded_emc_clk_out [get_bd_pins iob_static_emc_clk_out] [get_bd_pins pr_isolation_expanded/iob_static_emc_clk_out]
  connect_bd_net -net pr_isolation_expanded_init_calib_complete_out [get_bd_pins iob_static_init_calib_complete_out] [get_bd_pins pr_isolation_expanded/iob_static_init_calib_complete_out]
  connect_bd_net -net pr_isolation_expanded_io0_i [get_bd_pins iob_static_io0_i] [get_bd_pins pr_isolation_expanded/iob_static_io0_i]
  connect_bd_net -net pr_isolation_expanded_io1_i [get_bd_pins iob_static_io1_i] [get_bd_pins pr_isolation_expanded/iob_static_io1_i]
  connect_bd_net -net pr_isolation_expanded_io2_i [get_bd_pins iob_static_io2_i] [get_bd_pins pr_isolation_expanded/iob_static_io2_i]
  connect_bd_net -net pr_isolation_expanded_io3_i [get_bd_pins iob_static_io3_i] [get_bd_pins pr_isolation_expanded/iob_static_io3_i]
  connect_bd_net -net pr_isolation_expanded_led_0_out [get_bd_pins iob_static_led_0_out] [get_bd_pins pr_isolation_expanded/iob_static_led_0_out]
  connect_bd_net -net pr_isolation_expanded_perst_n_out [get_bd_pins iob_static_perst_n_out] [get_bd_pins base_clocking/iob_static_perst_n_out] [get_bd_pins dma_pcie/sys_rst_n] [get_bd_pins pr_isolation_expanded/iob_static_perst_n_out]
  connect_bd_net -net ss_o_1 [get_bd_pins slice_ss_1_Dout] [get_bd_pins pr_isolation_expanded/slice_ss_1_Dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set c0_ddr4 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 c0_ddr4 ]
  set c0_sys [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 c0_sys ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {300000000} \
 ] $c0_sys
  set c1_ddr4 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 c1_ddr4 ]
  set c1_sys [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 c1_sys ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {300000000} \
 ] $c1_sys
  set c2_ddr4 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 c2_ddr4 ]
  set c2_sys [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 c2_sys ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {300000000} \
 ] $c2_sys
  set c3_ddr4 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 c3_ddr4 ]
  set c3_sys [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 c3_sys ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {300000000} \
 ] $c3_sys
  set iic [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 iic ]
  set pcie_7x_mgt [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pcie_7x_mgt ]
  set ref_clk [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 ref_clk ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {100000000} \
 ] $ref_clk

  # Create ports
  set emc_clk [ create_bd_port -dir I -type clk emc_clk ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {90000000} \
 ] $emc_clk
  set iic_reset_n [ create_bd_port -dir O -from 0 -to 0 iic_reset_n ]
  set init_calib_complete [ create_bd_port -dir O init_calib_complete ]
  set led_0 [ create_bd_port -dir O led_0 ]
  set perst_n [ create_bd_port -dir I -type rst perst_n ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_LOW} \
 ] $perst_n
  set spi_1_io0_io [ create_bd_port -dir IO spi_1_io0_io ]
  set spi_1_io1_io [ create_bd_port -dir IO spi_1_io1_io ]
  set spi_1_io2_io [ create_bd_port -dir IO spi_1_io2_io ]
  set spi_1_io3_io [ create_bd_port -dir IO spi_1_io3_io ]
  set spi_1_ss_io [ create_bd_port -dir IO spi_1_ss_io ]

  # Create instance: base_region
  create_hier_cell_base_region [current_bd_instance .] base_region

  # Create instance: expanded_region
  create_hier_cell_expanded_region [current_bd_instance .] expanded_region

  # Create interface connections
  connect_bd_intf_net -intf_net base_region_IIC [get_bd_intf_ports iic] [get_bd_intf_pins base_region/axi_i2c_IIC]
  connect_bd_intf_net -intf_net base_region_M_AXI [get_bd_intf_pins base_region/regslice_control_M_AXI] [get_bd_intf_pins expanded_region/regslice_control_M_AXI]
  connect_bd_intf_net -intf_net base_region_M_AXI1 [get_bd_intf_pins base_region/regslice_data_M_AXI] [get_bd_intf_pins expanded_region/regslice_data_M_AXI]
  connect_bd_intf_net -intf_net base_region_pcie_mgt [get_bd_intf_ports pcie_7x_mgt] [get_bd_intf_pins base_region/dma_pcie_pcie_mgt]
  connect_bd_intf_net -intf_net c0_sys_1 [get_bd_intf_ports c0_sys] [get_bd_intf_pins expanded_region/c0_sys]
  connect_bd_intf_net -intf_net c1_sys_1 [get_bd_intf_ports c1_sys] [get_bd_intf_pins expanded_region/c1_sys]
  connect_bd_intf_net -intf_net c2_sys_1 [get_bd_intf_ports c2_sys] [get_bd_intf_pins expanded_region/c2_sys]
  connect_bd_intf_net -intf_net c3_sys_1 [get_bd_intf_ports c3_sys] [get_bd_intf_pins expanded_region/c3_sys]
  connect_bd_intf_net -intf_net expanded_region_C0_DDR4 [get_bd_intf_ports c1_ddr4] [get_bd_intf_pins expanded_region/ddrmem_0_C0_DDR4]
  connect_bd_intf_net -intf_net expanded_region_C0_DDR5 [get_bd_intf_ports c0_ddr4] [get_bd_intf_pins expanded_region/ddrmem_1_C0_DDR4]
  connect_bd_intf_net -intf_net expanded_region_C0_DDR6 [get_bd_intf_ports c2_ddr4] [get_bd_intf_pins expanded_region/ddrmem_2_C0_DDR4]
  connect_bd_intf_net -intf_net expanded_region_C0_DDR7 [get_bd_intf_ports c3_ddr4] [get_bd_intf_pins expanded_region/ddrmem_3_C0_DDR4]
  connect_bd_intf_net -intf_net ref_clk_1 [get_bd_intf_ports ref_clk] [get_bd_intf_pins base_region/ref_clk]

  # Create port connections
  connect_bd_net -net Net [get_bd_ports spi_1_ss_io] [get_bd_pins base_region/iob_static_ss]
  connect_bd_net -net Net1 [get_bd_ports spi_1_io0_io] [get_bd_pins base_region/iob_static_io0]
  connect_bd_net -net Net2 [get_bd_ports spi_1_io1_io] [get_bd_pins base_region/iob_static_io1]
  connect_bd_net -net Net3 [get_bd_ports spi_1_io2_io] [get_bd_pins base_region/iob_static_io2]
  connect_bd_net -net Net4 [get_bd_ports spi_1_io3_io] [get_bd_pins base_region/iob_static_io3]
  connect_bd_net -net base_region_Dout [get_bd_pins base_region/slice_reset_kernel_pr_Dout] [get_bd_pins expanded_region/slice_reset_kernel_pr_Dout]
  connect_bd_net -net base_region_axi_aclk [get_bd_pins base_region/dma_pcie_axi_aclk] [get_bd_pins expanded_region/dma_pcie_axi_aclk]
  connect_bd_net -net base_region_clk_out1 [get_bd_pins base_region/clkwiz_kernel_clk_out1] [get_bd_pins expanded_region/clkwiz_kernel_clk_out1]
  connect_bd_net -net base_region_clk_out2 [get_bd_pins base_region/clkwiz_sysclks_clk_out1] [get_bd_pins expanded_region/clkwiz_sysclks_clk_out1]
  connect_bd_net -net base_region_clk_out3 [get_bd_pins base_region/clkwiz_kernel2_clk_out1] [get_bd_pins expanded_region/clkwiz_kernel2_clk_out1]
  connect_bd_net -net base_region_emc_clk_out [get_bd_pins base_region/iob_static_emc_clk_out] [get_bd_pins expanded_region/iob_static_emc_clk_out]
  connect_bd_net -net base_region_gpo [get_bd_ports iic_reset_n] [get_bd_pins base_region/axi_i2c_gpo]
  connect_bd_net -net base_region_init_calib_complete_out [get_bd_ports init_calib_complete] [get_bd_pins base_region/iob_static_init_calib_complete_out]
  connect_bd_net -net base_region_io0_i [get_bd_pins base_region/iob_static_io0_i] [get_bd_pins expanded_region/iob_static_io0_i]
  connect_bd_net -net base_region_io1_i [get_bd_pins base_region/iob_static_io1_i] [get_bd_pins expanded_region/iob_static_io1_i]
  connect_bd_net -net base_region_io2_i [get_bd_pins base_region/iob_static_io2_i] [get_bd_pins expanded_region/iob_static_io2_i]
  connect_bd_net -net base_region_io3_i [get_bd_pins base_region/iob_static_io3_i] [get_bd_pins expanded_region/iob_static_io3_i]
  connect_bd_net -net base_region_iob_static_perst_n_out [get_bd_pins base_region/iob_static_perst_n_out] [get_bd_pins expanded_region/iob_static_perst_n_out]
  connect_bd_net -net base_region_led_0_out [get_bd_ports led_0] [get_bd_pins base_region/iob_static_led_0_out]
  connect_bd_net -net base_region_locked [get_bd_pins base_region/clkwiz_kernel_locked] [get_bd_pins expanded_region/clkwiz_kernel_locked]
  connect_bd_net -net base_region_locked1 [get_bd_pins base_region/clkwiz_sysclks_locked] [get_bd_pins expanded_region/clkwiz_sysclks_locked]
  connect_bd_net -net base_region_locked2 [get_bd_pins base_region/clkwiz_kernel2_locked] [get_bd_pins expanded_region/clkwiz_kernel2_locked]
  connect_bd_net -net base_region_user_lnk_up [get_bd_pins base_region/dma_pcie_user_lnk_up] [get_bd_pins expanded_region/dma_pcie_user_lnk_up]
  connect_bd_net -net emc_clk_1 [get_bd_ports emc_clk] [get_bd_pins base_region/emc_clk]
  connect_bd_net -net expanded_region_Dout1 [get_bd_pins base_region/slice_ss0_Dout] [get_bd_pins expanded_region/slice_ss_0_Dout]
  connect_bd_net -net expanded_region_Dout2 [get_bd_pins base_region/slice_ss_1_Dout] [get_bd_pins expanded_region/slice_ss_1_Dout]
  connect_bd_net -net expanded_region_Res [get_bd_pins base_region/logic_ddrcalib_op_Res] [get_bd_pins expanded_region/logic_ddrcalib_op_Res]
  connect_bd_net -net expanded_region_dout [get_bd_pins base_region/concat_flash_dq_o_dout] [get_bd_pins expanded_region/concat_flash_dq_o_dout]
  connect_bd_net -net expanded_region_dout3 [get_bd_pins base_region/concat_flash_tri_dout] [get_bd_pins expanded_region/concat_flash_tri_dout]
  connect_bd_net -net expanded_region_io0_o [get_bd_pins base_region/flash_programmer_io0_o] [get_bd_pins expanded_region/flash_programmer_io0_o]
  connect_bd_net -net expanded_region_io0_t [get_bd_pins base_region/flash_programmer_io0_t] [get_bd_pins expanded_region/flash_programmer_io0_t]
  connect_bd_net -net expanded_region_io1_o [get_bd_pins base_region/flash_programmer_io1_o] [get_bd_pins expanded_region/flash_programmer_io1_o]
  connect_bd_net -net expanded_region_io1_t [get_bd_pins base_region/flash_programmer_io1_t] [get_bd_pins expanded_region/flash_programmer_io1_t]
  connect_bd_net -net expanded_region_io2_o [get_bd_pins base_region/flash_programmer_io2_o] [get_bd_pins expanded_region/flash_programmer_io2_o]
  connect_bd_net -net expanded_region_io2_t [get_bd_pins base_region/flash_programmer_io2_t] [get_bd_pins expanded_region/flash_programmer_io2_t]
  connect_bd_net -net expanded_region_io3_o [get_bd_pins base_region/flash_programmer_io3_o] [get_bd_pins expanded_region/flash_programmer_io3_o]
  connect_bd_net -net expanded_region_io3_t [get_bd_pins base_region/flash_programmer_io3_t] [get_bd_pins expanded_region/flash_programmer_io3_t]
  connect_bd_net -net expanded_region_sck_o [get_bd_pins base_region/flash_programmer_sck_o] [get_bd_pins expanded_region/flash_programmer_sck_o]
  connect_bd_net -net expanded_region_ss_t [get_bd_pins base_region/flash_programmer_ss_t] [get_bd_pins expanded_region/flash_programmer_ss_t]
  connect_bd_net -net perst_n_1 [get_bd_ports perst_n] [get_bd_pins base_region/perst_n]
  connect_bd_net -net slowest_sync_clk_1 [get_bd_pins base_region/clkwiz_sysclks_clk_out2] [get_bd_pins expanded_region/clkwiz_sysclks_clk_out2]

  # Create address segments
  create_bd_addr_seg -range 0x00001000 -offset 0x00051000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs base_region/base_clocking/clkwiz_kernel2/s_axi_lite/Reg] SEG_clkwiz_kernel2_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00050000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs base_region/base_clocking/clkwiz_kernel/s_axi_lite/Reg] SEG_clkwiz_kernel_Reg
  create_bd_addr_seg -range 0x000100000000 -offset 0x000100000000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI] [get_bd_addr_segs expanded_region/memc/ddrmem_1/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddrmem_2_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x000100000000 -offset 0x000200000000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI] [get_bd_addr_segs expanded_region/memc/ddrmem_2/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddrmem_3_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x00010000 -offset 0x00070000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs expanded_region/memc/ddrmem_2/C0_DDR4_MEMORY_MAP_CTRL/C0_REG] SEG_ddrmem_3_C0_REG
  create_bd_addr_seg -range 0x000100000000 -offset 0x000300000000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI] [get_bd_addr_segs expanded_region/memc/ddrmem_3/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddrmem_4_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x00010000 -offset 0x00080000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs expanded_region/memc/ddrmem_3/C0_DDR4_MEMORY_MAP_CTRL/C0_REG] SEG_ddrmem_4_C0_REG
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI] [get_bd_addr_segs expanded_region/memc/ddrmem_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddrmem_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x00010000 -offset 0x000A0000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs base_region/sys_mgmt_wiz/S_AXI_LITE/Reg] SEG_sys_mgmt_wiz_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00100000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs expanded_region/apm_sys/xilmonitor_apm/S_AXI/Reg] SEG_xilmonitor_apm_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00110000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs expanded_region/apm_sys/xilmonitor_fifo0/S_AXI/Mem0] SEG_xilmonitor_fifo0_Mem0
  create_bd_addr_seg -range 0x000100000000 -offset 0x002000000000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI] [get_bd_addr_segs expanded_region/apm_sys/xilmonitor_fifo0/S_AXI_FULL/Mem1] SEG_xilmonitor_fifo0_Mem1
  create_bd_addr_seg -range 0x00001000 -offset 0x00032000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs base_region/pr_isolation_expanded/ddr_calib_status/S_AXI/Reg] seg_dma_ddr_calib_status
  create_bd_addr_seg -range 0x00010000 -offset 0x00060000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs expanded_region/memc/ddrmem_0/C0_DDR4_MEMORY_MAP_CTRL/C0_REG] seg_dma_ddrmem1_ctrl
  create_bd_addr_seg -range 0x00001000 -offset 0x00031000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs base_region/featureid/gpio_featureid/S_AXI/Reg] seg_dma_featureid
  create_bd_addr_seg -range 0x00001000 -offset 0x00040000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs expanded_region/pr_support_expanded/flash_programmer/AXI_LITE/Reg] seg_dma_flashprog
  create_bd_addr_seg -range 0x00001000 -offset 0x00030000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs base_region/pr_isolation_expanded/gate_pr/S_AXI/Reg] seg_dma_gate_pr
  create_bd_addr_seg -range 0x00001000 -offset 0x00041000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs base_region/axi_i2c/S_AXI/Reg] seg_dma_i2c
  create_bd_addr_seg -range 0x00008000 -offset 0x00000000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs expanded_region/u_ocl_region/S_AXI/Reg0] seg_dma_oclregion1
  create_bd_addr_seg -range 0x00008000 -offset 0x00008000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs expanded_region/u_ocl_region/S_AXI/Reg1] seg_dma_oclregion2
  create_bd_addr_seg -range 0x00008000 -offset 0x00010000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs expanded_region/u_ocl_region/S_AXI/Reg2] seg_dma_oclregion3
  create_bd_addr_seg -range 0x00008000 -offset 0x00018000 [get_bd_addr_spaces base_region/dma_pcie/M_AXI_LITE] [get_bd_addr_segs expanded_region/u_ocl_region/S_AXI/Reg3] seg_dma_oclregion4
  create_bd_addr_seg -range 0x000100000000 -offset 0x000100000000 [get_bd_addr_spaces expanded_region/u_ocl_region/M01_AXI] [get_bd_addr_segs expanded_region/memc/ddrmem_1/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddrmem_2_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x000100000000 -offset 0x000200000000 [get_bd_addr_spaces expanded_region/u_ocl_region/M02_AXI] [get_bd_addr_segs expanded_region/memc/ddrmem_2/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddrmem_3_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x000100000000 -offset 0x000300000000 [get_bd_addr_spaces expanded_region/u_ocl_region/M03_AXI] [get_bd_addr_segs expanded_region/memc/ddrmem_3/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddrmem_4_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces expanded_region/u_ocl_region/M00_AXI] [get_bd_addr_segs expanded_region/memc/ddrmem_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddrmem_C0_DDR4_ADDRESS_BLOCK


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


