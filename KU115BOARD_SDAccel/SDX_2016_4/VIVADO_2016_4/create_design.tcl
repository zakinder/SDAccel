
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



# Import HDL, XDC, and other files
import_files -norecurse ${sourcesDir}/hdl/iob_static_qspi.v
import_files -norecurse ${sourcesDir}/hdl/startup_wrapper.v
import_files -fileset constrs_1 -norecurse ${sourcesDir}/constraints/xcl_design.xdc
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
