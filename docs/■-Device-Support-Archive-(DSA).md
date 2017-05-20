# Generating DSA Files

After completing your hardware platform design and generating a valid bitstream using the Vivado Design Suite, you are ready to create a Device Support Archive (DSA) file for use with the SDAccel Development Environment. A DSA is a single-file capture of the hardware platform, to be handed off by the platform developer for use with the SDAccel Environment.

_**These properties are not saved in the Vivado project so they must be set**_
_**each time a DSA is created. You can create a TCL script to run prior to creating the DSA.**_

The following three properties are required by the write_dsa Tcl command, and must be defined
prior to generating a DSA. If these properties are not found, the write_dsa command will issue an
error and stop. 
The values shown are example values.
***
> 1. set_property dsa.vendor "xilinx" [current_project]
> 2. set_property dsa.name "1ddr" [current_project]
> 3. set_property dsa.boardId "adm-board" [current_project]
***
The following properties have default values 
but can be defined to specify the DSA file version, 
enable the partial reconfiguration (PR) flow, 
or 
capture the synthesis checkpoint within the DSA.
***
Default value is 0.0

```tcl 
set_property dsa.version "1.0" [current_project]
set_property dsa.uses_pr true [current_project]
set_property dsa.static_synth_checkpoint false [current_project]
```
***
The following properties can be used to set the PCIe Id and Board attributes for the Board section if a
board file is not yet available.
> 
```tcl 
set_property dsa.pcie_id_vendor "0x10ee" [current_project]
set_property dsa.pcie_id_device "0x8038" [current_project]
set_property dsa.pcie_id_subsystem "0x0011" [current_project]
set_property dsa.board_name "alpha-data.com:adm-pcie3-ku3:1.0" [current_project]
set_property dsa.board_interface_type "gen3x8" [current_project]
set_property dsa.board_memories {{ddr3 8GB} {ddr4 16GB} [current_project]
set_property dsa.board_interface_name "PCIe" [current_project]
set_property dsa.board_vendor "alpha-data.com" [current_project]
```
***

# Get current directory, used throughout script
```tcl 
set launchDir [file dirname [file normalize [info script]]]
set sourcesDir ${launchDir}/sources
```
# Create the project using the board local repo
```tcl 
set projName "xcl_design"
set projPart "xcku115-flvb2104-2-e"
set projBoardPart "xilinx.com:xil-accel-rd-ku115:part0:1.0"
set_param board.RepoPaths ${sourcesDir}/boardrepo/xil-accel-rd-ku115/1.0
get_board_parts
create_project $projName ./$projName -part $projPart
set_property board_part $projBoardPart [current_project]

# Create the BD
```tcl 
create_bd_design xcl_design
```
# Set required environment variables and params
```tcl 
set ::env(OCL_BLOCK_ADVANCED) 1
set ::env(XIL_IFX_SC_PIPELINE_EXPERIMENT_LEVEL) 0
set_param dsa.expandedPRRegion 1
set_param synth.elaboration.rodinMoreOptions "rt::set_parameter advancedConstPropAcrossHier true"
set_param chipscope.enablePRFlow true

```



# Import HDL, XDC, and other files
```tcl 
import_files -norecurse ${sourcesDir}/hdl/iob_static_qspi.v
import_files -norecurse ${sourcesDir}/hdl/startup_wrapper.v
import_files -fileset constrs_1 -norecurse ${sourcesDir}/constraints/xcl_design.xdc
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
```
# Set DSA project properties
```tcl 
set_property dsa.vendor               "xilinx"             [current_project]
set_property dsa.board_id             "xil-accel-rd-ku115" [current_project]
set_property dsa.name                 "4ddr-xpr"           [current_project]
set_property dsa.version              "3.2"                [current_project]
set_property dsa.flash_interface_type "spix8"              [current_project]
set_property dsa.flash_offset_address "0x4000000"          [current_project]
set_property dsa.description          "See Notes 1." [current_project]
```

> _**Notes 1:**_ This platform targets the Xilinx Development Board for Acceleration with Kintex UltraScale KU115 FPGA. This high-performance acceleration platform features four channels of DDR4-2400 SDRAM, the expanded partial reconfiguration flow for high fabric resource availability, and Xilinx DMA Subsystem for PCI Express with PCIe Gen3 x8 connectivity

# Set any other project properties
```tcl 
set_property STEPS.OPT_DESIGN.TCL.PRE ${sourcesDir}/misc/xpr_preopt.tcl [get_runs impl_1]
set_property STEPS.OPT_DESIGN.TCL.POST ${sourcesDir}/misc/xpr_postopt.tcl [get_runs impl_1]
set_property STEPS.ROUTE_DESIGN.TCL.POST ${sourcesDir}/misc/xpr_postroute.tcl [get_runs impl_1]
```
# Source the BD Tcl file to construct the BD contents
```tcl 
source ${sourcesDir}/bd/xcl_design.tcl
```
# Regenerate layout, validate, and save the BD
```tcl 
regenerate_bd_layout
validate_bd_design -force
save_bd_design
```

# Write BD wrapper HDL

```tcl 
set_property generate_synth_checkpoint true [get_files xcl_design.bd]
add_files -norecurse [make_wrapper -files [get_files xcl_design.bd] -top]
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
```

***

1. open_run impl_1
2. write_dsa -include_bit
3. validate_dsa xcl_design.dsa -verbose