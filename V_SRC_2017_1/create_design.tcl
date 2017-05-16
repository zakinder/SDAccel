# *************************************************************************
#    ____  ____
#   /   /\/   /
#  /___/  \  /
#  \   \   \/    © Copyright 2016 Xilinx, Inc. All rights reserved.
#   \   \        This file contains confidential and proprietary
#   /   /        information of Xilinx, Inc. and is protected under U.S.
#  /___/   /\    and international copyright and other intellectual
#  \   \  /  \   property laws.
#   \___\/\___\
#
#
# *************************************************************************
#
# Disclaimer:
#
#       This disclaimer is not a license and does not grant any rights to
#       the materials distributed herewith. Except as otherwise provided in
#       a valid license issued to you by Xilinx, and to the maximum extent
#       permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE
#       "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL
#       WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY,
#       INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY,
#       NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#       (2) Xilinx shall not be liable (whether in contract or tort,
#       including negligence, or under any other theory of liability) for
#       any loss or damage of any kind or nature related to, arising under
#       or in connection with these materials, including for any direct, or
#       any indirect, special, incidental, or consequential loss or damage
#       (including loss of data, profits, goodwill, or any type of loss or
#       damage suffered as a result of any action brought by a third party)
#       even if such damage or loss was reasonably foreseeable or Xilinx
#       had been advised of the possibility of the same.
#
# Critical Applications:
#
#       Xilinx products are not designed or intended to be fail-safe, or
#       for use in any application requiring fail-safe performance, such as
#       life-support or safety devices or systems, Class III medical
#       devices, nuclear facilities, applications related to the deployment
#       of airbags, or any other applications that could lead to death,
#       personal injury, or severe property or environmental damage
#       (individually and collectively, "Critical Applications"). Customer
#       assumes the sole risk and liability of any use of Xilinx products
#       in Critical Applications, subject only to applicable laws and
#       regulations governing limitations on product liability.
#
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS
# FILE AT ALL TIMES.
#
# *************************************************************************

# Get current directory, used throughout script
set launchDir [file dirname [file normalize [info script]]]
set sourcesDir ${launchDir}/sources

# Create the project using the board local repo
set projName "xcl_design"
set projPart "xcku115-flvb2104-2-e"
set projBoardPart "xilinx.com:xil-accel-rd-ku115:part0:1.0"
set_param board.RepoPaths ${sourcesDir}/boardrepo/xil-accel-rd-ku115/1.0
get_board_parts
create_project $projName ./$projName -part $projPart
set_property board_part $projBoardPart [current_project]

# Create the BD
create_bd_design xcl_design

# Set required environment variables and params
set ::env(OCL_BLOCK_ADVANCED) 1
set ::env(XIL_IFX_SC_PIPELINE_EXPERIMENT_LEVEL) 0
set_param dsa.expandedPRRegion 1
set_param synth.elaboration.rodinMoreOptions "rt::set_parameter advancedConstPropAcrossHier true"
set_param chipscope.enablePRFlow true

# Specify and refresh the IP local repo
set_property ip_repo_paths "${sourcesDir}/iprepo/axi_fifo_mm_s_v4_1 ${sourcesDir}/iprepo/axi_perf_mon_v5_0" [current_project]
update_ip_catalog

# Import HDL, XDC, and other files
import_files -norecurse ${sourcesDir}/hdl/iob_static_qspi.v
import_files -norecurse ${sourcesDir}/hdl/startup_wrapper.v
import_files -fileset constrs_1 -norecurse ${sourcesDir}/constraints/xilinx_xil-accel-rd-ku115_4ddr-xpr_3_2.xdc
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

# Set DSA project properties
set_property dsa.vendor               "xilinx"             [current_project]
set_property dsa.board_id             "xil-accel-rd-ku115" [current_project]
set_property dsa.name                 "4ddr-xpr"           [current_project]
set_property dsa.version              "3.2"                [current_project]
set_property dsa.flash_interface_type "spix8"              [current_project]
set_property dsa.flash_offset_address "0x4000000"          [current_project]
set_property dsa.description          "This platform targets the Xilinx Development Board for Acceleration with Kintex UltraScale KU115 FPGA. This high-performance acceleration platform features four channels of DDR4-2400 SDRAM, the expanded partial reconfiguration flow for high fabric resource availability, and Xilinx DMA Subsystem for PCI Express with PCIe Gen3 x8 connectivity." [current_project]

# Set any other project properties
set_property STEPS.OPT_DESIGN.TCL.PRE ${sourcesDir}/misc/xpr_preopt.tcl [get_runs impl_1]
set_property STEPS.OPT_DESIGN.TCL.POST ${sourcesDir}/misc/xpr_postopt.tcl [get_runs impl_1]
set_property STEPS.ROUTE_DESIGN.TCL.POST ${sourcesDir}/misc/xpr_postroute.tcl [get_runs impl_1]

# Source the BD Tcl file to construct the BD contents
source ${sourcesDir}/bd/xcl_design.tcl

# Regenerate layout, validate, and save the BD
regenerate_bd_layout
validate_bd_design -force
save_bd_design

# Write BD wrapper HDL
set_property generate_synth_checkpoint true [get_files xcl_design.bd]
add_files -norecurse [make_wrapper -files [get_files xcl_design.bd] -top]
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
