# 
# Synthesis run script generated by Vivado
# 

set_param synth.elaboration.rodinMoreOptions {rt::set_parameter advancedConstPropAcrossHier true}
set_param chipscope.enablePRFlow 1
set_param dsa.expandedPRRegion 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000
set_msg_config  -ruleid {23}  -id {[BD 41-1306]}  -suppress 
set_msg_config  -ruleid {24}  -id {[BD 41-1271]}  -suppress 
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xcku115-flvb2104-2-e

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Sim/sdaccel_ku/xcl_design/xcl_design.cache/wt [current_project]
set_property parent.project_path C:/Sim/sdaccel_ku/xcl_design/xcl_design.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part_repo_paths C:/Sim/sdaccel_ku/sources/boardrepo/xil-accel-rd-ku115/1.0 [current_project]
set_property board_part xilinx.com:xil-accel-rd-ku115:part0:1.0 [current_project]
set_property ip_output_repo c:/Sim/sdaccel_ku/xcl_design/xcl_design.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/xcl_design_interconnect_aximm_ddrmem0_0.xci
set_property used_in_synthesis false [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_14/bd_41e8_sarn_0/bd_41e8_sarn_0_clocks.xdc]
set_property used_in_synthesis false [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_15/bd_41e8_srn_0/bd_41e8_srn_0_clocks.xdc]
set_property used_in_synthesis false [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_16/bd_41e8_sawn_0/bd_41e8_sawn_0_clocks.xdc]
set_property used_in_synthesis false [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_17/bd_41e8_swn_0/bd_41e8_swn_0_clocks.xdc]
set_property used_in_synthesis false [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_18/bd_41e8_sbn_0/bd_41e8_sbn_0_clocks.xdc]
set_property used_in_synthesis false [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_23/bd_41e8_sarn_1/bd_41e8_sarn_1_clocks.xdc]
set_property used_in_synthesis false [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_24/bd_41e8_srn_1/bd_41e8_srn_1_clocks.xdc]
set_property used_in_synthesis false [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_25/bd_41e8_sawn_1/bd_41e8_sawn_1_clocks.xdc]
set_property used_in_synthesis false [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_26/bd_41e8_swn_1/bd_41e8_swn_1_clocks.xdc]
set_property used_in_synthesis false [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_27/bd_41e8_sbn_1/bd_41e8_sbn_1_clocks.xdc]
set_property is_locked true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/xcl_design_interconnect_aximm_ddrmem0_0.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir C:/Sim/sdaccel_ku/xcl_design/xcl_design.runs/xcl_design_interconnect_aximm_ddrmem0_0_synth_1 -new_name xcl_design_interconnect_aximm_ddrmem0_0 -ip [get_ips xcl_design_interconnect_aximm_ddrmem0_0]]

if { $cached_ip eq {} } {

synth_design -top xcl_design_interconnect_aximm_ddrmem0_0 -part xcku115-flvb2104-2-e -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix xcl_design_interconnect_aximm_ddrmem0_0_ xcl_design_interconnect_aximm_ddrmem0_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xcl_design_interconnect_aximm_ddrmem0_0_stub.v
 lappend ipCachedFiles xcl_design_interconnect_aximm_ddrmem0_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xcl_design_interconnect_aximm_ddrmem0_0_stub.vhdl
 lappend ipCachedFiles xcl_design_interconnect_aximm_ddrmem0_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xcl_design_interconnect_aximm_ddrmem0_0_sim_netlist.v
 lappend ipCachedFiles xcl_design_interconnect_aximm_ddrmem0_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xcl_design_interconnect_aximm_ddrmem0_0_sim_netlist.vhdl
 lappend ipCachedFiles xcl_design_interconnect_aximm_ddrmem0_0_sim_netlist.vhdl

 config_ip_cache -add -dcp xcl_design_interconnect_aximm_ddrmem0_0.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips xcl_design_interconnect_aximm_ddrmem0_0]
}

rename_ref -prefix_all xcl_design_interconnect_aximm_ddrmem0_0_

write_checkpoint -force -noxdef xcl_design_interconnect_aximm_ddrmem0_0.dcp

catch { report_utilization -file xcl_design_interconnect_aximm_ddrmem0_0_utilization_synth.rpt -pb xcl_design_interconnect_aximm_ddrmem0_0_utilization_synth.pb }

if { [catch {
  file copy -force C:/Sim/sdaccel_ku/xcl_design/xcl_design.runs/xcl_design_interconnect_aximm_ddrmem0_0_synth_1/xcl_design_interconnect_aximm_ddrmem0_0.dcp c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/xcl_design_interconnect_aximm_ddrmem0_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/xcl_design_interconnect_aximm_ddrmem0_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/xcl_design_interconnect_aximm_ddrmem0_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/xcl_design_interconnect_aximm_ddrmem0_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/xcl_design_interconnect_aximm_ddrmem0_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force C:/Sim/sdaccel_ku/xcl_design/xcl_design.runs/xcl_design_interconnect_aximm_ddrmem0_0_synth_1/xcl_design_interconnect_aximm_ddrmem0_0.dcp c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/xcl_design_interconnect_aximm_ddrmem0_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force C:/Sim/sdaccel_ku/xcl_design/xcl_design.runs/xcl_design_interconnect_aximm_ddrmem0_0_synth_1/xcl_design_interconnect_aximm_ddrmem0_0_stub.v c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/xcl_design_interconnect_aximm_ddrmem0_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/Sim/sdaccel_ku/xcl_design/xcl_design.runs/xcl_design_interconnect_aximm_ddrmem0_0_synth_1/xcl_design_interconnect_aximm_ddrmem0_0_stub.vhdl c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/xcl_design_interconnect_aximm_ddrmem0_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/Sim/sdaccel_ku/xcl_design/xcl_design.runs/xcl_design_interconnect_aximm_ddrmem0_0_synth_1/xcl_design_interconnect_aximm_ddrmem0_0_sim_netlist.v c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/xcl_design_interconnect_aximm_ddrmem0_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/Sim/sdaccel_ku/xcl_design/xcl_design.runs/xcl_design_interconnect_aximm_ddrmem0_0_synth_1/xcl_design_interconnect_aximm_ddrmem0_0_sim_netlist.vhdl c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/xcl_design_interconnect_aximm_ddrmem0_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir C:/Sim/sdaccel_ku/xcl_design/xcl_design.ip_user_files/ip/xcl_design_interconnect_aximm_ddrmem0_0]} {
  catch { 
    file copy -force c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/xcl_design_interconnect_aximm_ddrmem0_0_stub.v C:/Sim/sdaccel_ku/xcl_design/xcl_design.ip_user_files/ip/xcl_design_interconnect_aximm_ddrmem0_0
  }
}

if {[file isdir C:/Sim/sdaccel_ku/xcl_design/xcl_design.ip_user_files/ip/xcl_design_interconnect_aximm_ddrmem0_0]} {
  catch { 
    file copy -force c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/xcl_design_interconnect_aximm_ddrmem0_0_stub.vhdl C:/Sim/sdaccel_ku/xcl_design/xcl_design.ip_user_files/ip/xcl_design_interconnect_aximm_ddrmem0_0
  }
}
