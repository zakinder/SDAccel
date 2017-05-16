proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -ruleid {23}  -id {[BD 41-1306]}  -suppress 
set_msg_config  -ruleid {24}  -id {[BD 41-1271]}  -suppress 

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xcku115-flvb2104-2-e
  set_property board_part_repo_paths C:/Sim/sdaccel_ku/sources/boardrepo/xil-accel-rd-ku115/1.0 [current_project]
  set_property board_part xilinx.com:xil-accel-rd-ku115:part0:1.0 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Sim/sdaccel_ku/xcl_design/xcl_design.cache/wt [current_project]
  set_property parent.project_path C:/Sim/sdaccel_ku/xcl_design/xcl_design.xpr [current_project]
  set_property ip_output_repo C:/Sim/sdaccel_ku/xcl_design/xcl_design.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
  add_files -quiet C:/Sim/sdaccel_ku/xcl_design/xcl_design.runs/synth_1/xcl_design_wrapper.dcp
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_axi_i2c_0/xcl_design_axi_i2c_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_axi_i2c_0/xcl_design_axi_i2c_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_buf_refclk_bufg_0/xcl_design_buf_refclk_bufg_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_buf_refclk_bufg_0/xcl_design_buf_refclk_bufg_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_buf_refclk_ibuf_0/xcl_design_buf_refclk_ibuf_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_buf_refclk_ibuf_0/xcl_design_buf_refclk_ibuf_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_clkwiz_kernel_0/xcl_design_clkwiz_kernel_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_clkwiz_kernel_0/xcl_design_clkwiz_kernel_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_clkwiz_kernel2_0/xcl_design_clkwiz_kernel2_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_clkwiz_kernel2_0/xcl_design_clkwiz_kernel2_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_clkwiz_sysclks_0/xcl_design_clkwiz_sysclks_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_clkwiz_sysclks_0/xcl_design_clkwiz_sysclks_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ctrlclk_0/xcl_design_psreset_ctrlclk_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ctrlclk_0/xcl_design_psreset_ctrlclk_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_const_gnd_1_0/xcl_design_const_gnd_1_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_const_gnd_1_0/xcl_design_const_gnd_1_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_const_gnd_3_0/xcl_design_const_gnd_3_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_const_gnd_3_0/xcl_design_const_gnd_3_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_const_vcc_1_0/xcl_design_const_vcc_1_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_const_vcc_1_0/xcl_design_const_vcc_1_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_dma_pcie_0/xcl_design_dma_pcie_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_dma_pcie_0/xcl_design_dma_pcie_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_const_featureid_high_0/xcl_design_const_featureid_high_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_const_featureid_high_0/xcl_design_const_featureid_high_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_const_featureid_low_0/xcl_design_const_featureid_low_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_const_featureid_low_0/xcl_design_const_featureid_low_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_gpio_featureid_0/xcl_design_gpio_featureid_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_gpio_featureid_0/xcl_design_gpio_featureid_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddr_calib_status_0/xcl_design_ddr_calib_status_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddr_calib_status_0/xcl_design_ddr_calib_status_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_gate_pr_0/xcl_design_gate_pr_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_gate_pr_0/xcl_design_gate_pr_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_xbar_0/xcl_design_xbar_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_xbar_0/xcl_design_xbar_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_iob_static_0/xcl_design_iob_static_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_iob_static_0/xcl_design_iob_static_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_regslice_ctrl_pr_0/xcl_design_psreset_regslice_ctrl_pr_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_regslice_ctrl_pr_0/xcl_design_psreset_regslice_ctrl_pr_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_regslice_data_pr_0/xcl_design_psreset_regslice_data_pr_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_regslice_data_pr_0/xcl_design_psreset_regslice_data_pr_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_regslice_control_0/xcl_design_regslice_control_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_regslice_control_0/xcl_design_regslice_control_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_regslice_data_0/xcl_design_regslice_data_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_regslice_data_0/xcl_design_regslice_data_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_slice_reset_kernel_pr_0/xcl_design_slice_reset_kernel_pr_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_slice_reset_kernel_pr_0/xcl_design_slice_reset_kernel_pr_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_slice_reset_system_pr_0/xcl_design_slice_reset_system_pr_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_slice_reset_system_pr_0/xcl_design_slice_reset_system_pr_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_startup_primitive_0/xcl_design_startup_primitive_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_startup_primitive_0/xcl_design_startup_primitive_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_sys_mgmt_wiz_0/xcl_design_sys_mgmt_wiz_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_sys_mgmt_wiz_0/xcl_design_sys_mgmt_wiz_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_regslice_apm_a_0/xcl_design_regslice_apm_a_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_regslice_apm_a_0/xcl_design_regslice_apm_a_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_regslice_apm_b_0/xcl_design_regslice_apm_b_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_regslice_apm_b_0/xcl_design_regslice_apm_b_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_regslice_fifo_a_0/xcl_design_regslice_fifo_a_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_regslice_fifo_a_0/xcl_design_regslice_fifo_a_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_regslice_fifo_b_0/xcl_design_regslice_fifo_b_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_regslice_fifo_b_0/xcl_design_regslice_fifo_b_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_xilmonitor_apm_0/xcl_design_xilmonitor_apm_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_xilmonitor_apm_0/xcl_design_xilmonitor_apm_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_xilmonitor_fifo0_0/xcl_design_xilmonitor_fifo0_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_xilmonitor_fifo0_0/xcl_design_xilmonitor_fifo0_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_xilmonitor_subset0_0/xcl_design_xilmonitor_subset0_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_xilmonitor_subset0_0/xcl_design_xilmonitor_subset0_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_logic_reset_op_0/xcl_design_logic_reset_op_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_logic_reset_op_0/xcl_design_logic_reset_op_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_0/xcl_design_psreset_ddrmem_n_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_0/xcl_design_psreset_ddrmem_n_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_2_0/xcl_design_psreset_ddrmem_n_2_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_2_0/xcl_design_psreset_ddrmem_n_2_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_3_0/xcl_design_psreset_ddrmem_n_3_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_3_0/xcl_design_psreset_ddrmem_n_3_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_4_0/xcl_design_psreset_ddrmem_n_4_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_4_0/xcl_design_psreset_ddrmem_n_4_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_apmclk_0/xcl_design_psreset_gate_pr_apmclk_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_apmclk_0/xcl_design_psreset_gate_pr_apmclk_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_control_0/xcl_design_psreset_gate_pr_control_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_control_0/xcl_design_psreset_gate_pr_control_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_data_0/xcl_design_psreset_gate_pr_data_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_data_0/xcl_design_psreset_gate_pr_data_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_kernel_0/xcl_design_psreset_gate_pr_kernel_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_kernel_0/xcl_design_psreset_gate_pr_kernel_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_kernel2_0/xcl_design_psreset_gate_pr_kernel2_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_kernel2_0/xcl_design_psreset_gate_pr_kernel2_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/xcl_design_interconnect_aximm_ddrmem0_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/xcl_design_interconnect_aximm_ddrmem0_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/xcl_design_interconnect_aximm_ddrmem1_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/xcl_design_interconnect_aximm_ddrmem1_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/xcl_design_interconnect_aximm_ddrmem2_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/xcl_design_interconnect_aximm_ddrmem2_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/xcl_design_interconnect_aximm_ddrmem3_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/xcl_design_interconnect_aximm_ddrmem3_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_host_0/xcl_design_interconnect_aximm_host_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_host_0/xcl_design_interconnect_aximm_host_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_xbar_1/xcl_design_xbar_1.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_xbar_1/xcl_design_xbar_1.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_axicc_ddrmem_2_ctrl_0/xcl_design_axicc_ddrmem_2_ctrl_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_axicc_ddrmem_2_ctrl_0/xcl_design_axicc_ddrmem_2_ctrl_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_axicc_ddrmem_3_ctrl_0/xcl_design_axicc_ddrmem_3_ctrl_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_axicc_ddrmem_3_ctrl_0/xcl_design_axicc_ddrmem_3_ctrl_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_concat_ddrcalib_0/xcl_design_concat_ddrcalib_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_concat_ddrcalib_0/xcl_design_concat_ddrcalib_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/xcl_design_ddrmem_0_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/xcl_design_ddrmem_0_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/xcl_design_ddrmem_1_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/xcl_design_ddrmem_1_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/xcl_design_ddrmem_2_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/xcl_design_ddrmem_2_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/xcl_design_ddrmem_3_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/xcl_design_ddrmem_3_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_logic_ddrcalib_op_0/xcl_design_logic_ddrcalib_op_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_logic_ddrcalib_op_0/xcl_design_logic_ddrcalib_op_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_concat_flash_dq_o_0/xcl_design_concat_flash_dq_o_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_concat_flash_dq_o_0/xcl_design_concat_flash_dq_o_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_concat_flash_tri_0/xcl_design_concat_flash_tri_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_concat_flash_tri_0/xcl_design_concat_flash_tri_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_debug_bridge_xsdbm_0/bd_0/ip/ip_0/bd_6ad6_xsdbm_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_debug_bridge_xsdbm_0/bd_0/ip/ip_0/bd_6ad6_xsdbm_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_debug_bridge_xsdbm_0/bd_0/ip/ip_1/bd_6ad6_lut_buffer_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_debug_bridge_xsdbm_0/bd_0/ip/ip_1/bd_6ad6_lut_buffer_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_debug_bridge_xsdbm_0/xcl_design_debug_bridge_xsdbm_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_debug_bridge_xsdbm_0/xcl_design_debug_bridge_xsdbm_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_flash_programmer_0/xcl_design_flash_programmer_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_flash_programmer_0/xcl_design_flash_programmer_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_slice_ss_0_0/xcl_design_slice_ss_0_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_slice_ss_0_0/xcl_design_slice_ss_0_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_slice_ss_1_0/xcl_design_slice_ss_1_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_slice_ss_1_0/xcl_design_slice_ss_1_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_9/bd_2fd7_xbar_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_9/bd_2fd7_xbar_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_14/bd_2fd7_data_sys_reset_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_14/bd_2fd7_data_sys_reset_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_15/bd_2fd7_control_sys_reset_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_15/bd_2fd7_control_sys_reset_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_16/bd_2fd7_kernel_0_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_16/bd_2fd7_kernel_0_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_17/bd_2fd7_kernel_1_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_17/bd_2fd7_kernel_1_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_18/bd_2fd7_kernel_2_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_18/bd_2fd7_kernel_2_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_19/bd_2fd7_kernel_3_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_19/bd_2fd7_kernel_3_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_20/bd_2fd7_slave_bridge_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_20/bd_2fd7_slave_bridge_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_21/bd_2fd7_master_bridge_0_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_21/bd_2fd7_master_bridge_0_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_22/bd_2fd7_master_bridge_1_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_22/bd_2fd7_master_bridge_1_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_23/bd_2fd7_master_bridge_2_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_23/bd_2fd7_master_bridge_2_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_24/bd_2fd7_master_bridge_3_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_24/bd_2fd7_master_bridge_3_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_1/bd_2fd7_s00_regslice_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_1/bd_2fd7_s00_regslice_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_3/bd_2fd7_s00_regslice_1.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_3/bd_2fd7_s00_regslice_1.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_5/bd_2fd7_s00_regslice_2.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_5/bd_2fd7_s00_regslice_2.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_7/bd_2fd7_s00_regslice_3.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_7/bd_2fd7_s00_regslice_3.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_10/bd_2fd7_m00_regslice_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_10/bd_2fd7_m00_regslice_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_11/bd_2fd7_m01_regslice_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_11/bd_2fd7_m01_regslice_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_12/bd_2fd7_m02_regslice_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_12/bd_2fd7_m02_regslice_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_13/bd_2fd7_m03_regslice_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_13/bd_2fd7_m03_regslice_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_25/bd_2fd7_auto_cc_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_25/bd_2fd7_auto_cc_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_26/bd_2fd7_auto_cc_1.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_26/bd_2fd7_auto_cc_1.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_27/bd_2fd7_auto_cc_2.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_27/bd_2fd7_auto_cc_2.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_28/bd_2fd7_auto_cc_3.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_28/bd_2fd7_auto_cc_3.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/xcl_design_u_ocl_region_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/xcl_design_u_ocl_region_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_s00_regslice_0/xcl_design_s00_regslice_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_s00_regslice_0/xcl_design_s00_regslice_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_s00_regslice_1/xcl_design_s00_regslice_1.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_s00_regslice_1/xcl_design_s00_regslice_1.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_m00_regslice_0/xcl_design_m00_regslice_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_m00_regslice_0/xcl_design_m00_regslice_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_m01_regslice_0/xcl_design_m01_regslice_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_m01_regslice_0/xcl_design_m01_regslice_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_m02_regslice_0/xcl_design_m02_regslice_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_m02_regslice_0/xcl_design_m02_regslice_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_m03_regslice_0/xcl_design_m03_regslice_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_m03_regslice_0/xcl_design_m03_regslice_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_m04_regslice_0/xcl_design_m04_regslice_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_m04_regslice_0/xcl_design_m04_regslice_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_m05_regslice_0/xcl_design_m05_regslice_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_m05_regslice_0/xcl_design_m05_regslice_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_m06_regslice_0/xcl_design_m06_regslice_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_m06_regslice_0/xcl_design_m06_regslice_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_auto_cc_0/xcl_design_auto_cc_0.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_auto_cc_0/xcl_design_auto_cc_0.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_auto_cc_1/xcl_design_auto_cc_1.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_auto_cc_1/xcl_design_auto_cc_1.dcp]
  add_files -quiet c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_auto_cc_2/xcl_design_auto_cc_2.dcp
  set_property netlist_only true [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_auto_cc_2/xcl_design_auto_cc_2.dcp]
  add_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/bd_0/bd_8917.bmm
  set_property SCOPED_TO_REF bd_8917 [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/bd_0/bd_8917.bmm]
  add_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/bd_0/bd_b3eb.bmm
  set_property SCOPED_TO_REF bd_b3eb [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/bd_0/bd_b3eb.bmm]
  add_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/bd_0/bd_fcef.bmm
  set_property SCOPED_TO_REF bd_fcef [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/bd_0/bd_fcef.bmm]
  add_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/bd_0/bd_c613.bmm
  set_property SCOPED_TO_REF bd_c613 [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/bd_0/bd_c613.bmm]
  add_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/bd_0/bd_8917.bmm
  set_property SCOPED_TO_REF bd_8917 [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/bd_0/bd_8917.bmm]
  add_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/bd_0/bd_b3eb.bmm
  set_property SCOPED_TO_REF bd_b3eb [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/bd_0/bd_b3eb.bmm]
  add_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/bd_0/bd_fcef.bmm
  set_property SCOPED_TO_REF bd_fcef [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/bd_0/bd_fcef.bmm]
  add_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/bd_0/bd_c613.bmm
  set_property SCOPED_TO_REF bd_c613 [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/bd_0/bd_c613.bmm]
  add_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/sw/calibration_0/Debug/calibration_ddr.elf
  set_property SCOPED_TO_REF xcl_design [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/sw/calibration_0/Debug/calibration_ddr.elf]
  set_property SCOPED_TO_CELLS expanded_region/memc/ddrmem_0/inst/u_ddr4_mem_intfc/u_ddr_cal_riu/mcs0/inst/microblaze_I [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/sw/calibration_0/Debug/calibration_ddr.elf]
  add_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/sw/calibration_0/Debug/calibration_ddr.elf
  set_property SCOPED_TO_REF xcl_design [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/sw/calibration_0/Debug/calibration_ddr.elf]
  set_property SCOPED_TO_CELLS expanded_region/memc/ddrmem_1/inst/u_ddr4_mem_intfc/u_ddr_cal_riu/mcs0/inst/microblaze_I [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/sw/calibration_0/Debug/calibration_ddr.elf]
  add_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/sw/calibration_0/Debug/calibration_ddr.elf
  set_property SCOPED_TO_REF xcl_design [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/sw/calibration_0/Debug/calibration_ddr.elf]
  set_property SCOPED_TO_CELLS expanded_region/memc/ddrmem_2/inst/u_ddr4_mem_intfc/u_ddr_cal_riu/mcs0/inst/microblaze_I [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/sw/calibration_0/Debug/calibration_ddr.elf]
  add_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/sw/calibration_0/Debug/calibration_ddr.elf
  set_property SCOPED_TO_REF xcl_design [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/sw/calibration_0/Debug/calibration_ddr.elf]
  set_property SCOPED_TO_CELLS expanded_region/memc/ddrmem_3/inst/u_ddr4_mem_intfc/u_ddr_cal_riu/mcs0/inst/microblaze_I [get_files -all c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/sw/calibration_0/Debug/calibration_ddr.elf]
  read_xdc -prop_thru_buffers -ref xcl_design_axi_i2c_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_axi_i2c_0/xcl_design_axi_i2c_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_axi_i2c_0/xcl_design_axi_i2c_0_board.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_buf_refclk_bufg_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_buf_refclk_bufg_0/xcl_design_buf_refclk_bufg_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_buf_refclk_bufg_0/xcl_design_buf_refclk_bufg_0_board.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_buf_refclk_ibuf_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_buf_refclk_ibuf_0/xcl_design_buf_refclk_ibuf_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_buf_refclk_ibuf_0/xcl_design_buf_refclk_ibuf_0_board.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_clkwiz_kernel_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_clkwiz_kernel_0/xcl_design_clkwiz_kernel_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_clkwiz_kernel_0/xcl_design_clkwiz_kernel_0_board.xdc]
  read_xdc -ref xcl_design_clkwiz_kernel_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_clkwiz_kernel_0/xcl_design_clkwiz_kernel_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_clkwiz_kernel_0/xcl_design_clkwiz_kernel_0.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_clkwiz_kernel2_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_clkwiz_kernel2_0/xcl_design_clkwiz_kernel2_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_clkwiz_kernel2_0/xcl_design_clkwiz_kernel2_0_board.xdc]
  read_xdc -ref xcl_design_clkwiz_kernel2_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_clkwiz_kernel2_0/xcl_design_clkwiz_kernel2_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_clkwiz_kernel2_0/xcl_design_clkwiz_kernel2_0.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_clkwiz_sysclks_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_clkwiz_sysclks_0/xcl_design_clkwiz_sysclks_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_clkwiz_sysclks_0/xcl_design_clkwiz_sysclks_0_board.xdc]
  read_xdc -ref xcl_design_clkwiz_sysclks_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_clkwiz_sysclks_0/xcl_design_clkwiz_sysclks_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_clkwiz_sysclks_0/xcl_design_clkwiz_sysclks_0.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_psreset_ctrlclk_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ctrlclk_0/xcl_design_psreset_ctrlclk_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ctrlclk_0/xcl_design_psreset_ctrlclk_0_board.xdc]
  read_xdc -ref xcl_design_psreset_ctrlclk_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ctrlclk_0/xcl_design_psreset_ctrlclk_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ctrlclk_0/xcl_design_psreset_ctrlclk_0.xdc]
  read_xdc -ref xcl_design_dma_pcie_0_pcie3_ip_gt -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_dma_pcie_0/ip_0/ip_0/synth/xcl_design_dma_pcie_0_pcie3_ip_gt.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_dma_pcie_0/ip_0/ip_0/synth/xcl_design_dma_pcie_0_pcie3_ip_gt.xdc]
  read_xdc -ref xcl_design_dma_pcie_0_pcie3_ip -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_dma_pcie_0/ip_0/source/xcl_design_dma_pcie_0_pcie3_ip-PCIE_X0Y0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_dma_pcie_0/ip_0/source/xcl_design_dma_pcie_0_pcie3_ip-PCIE_X0Y0.xdc]
  read_xdc -ref xcl_design_dma_pcie_0_fifo_generator_64_parity_ult -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_dma_pcie_0/ip_2/xcl_design_dma_pcie_0_fifo_generator_64_parity_ult/xcl_design_dma_pcie_0_fifo_generator_64_parity_ult.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_dma_pcie_0/ip_2/xcl_design_dma_pcie_0_fifo_generator_64_parity_ult/xcl_design_dma_pcie_0_fifo_generator_64_parity_ult.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_dma_pcie_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_dma_pcie_0/xcl_design_dma_pcie_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_dma_pcie_0/xcl_design_dma_pcie_0_board.xdc]
  read_xdc -ref xcl_design_dma_pcie_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_dma_pcie_0/source/xcl_design_dma_pcie_0_pcie3_us_ip.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_dma_pcie_0/source/xcl_design_dma_pcie_0_pcie3_us_ip.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_gpio_featureid_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_gpio_featureid_0/xcl_design_gpio_featureid_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_gpio_featureid_0/xcl_design_gpio_featureid_0_board.xdc]
  read_xdc -ref xcl_design_gpio_featureid_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_gpio_featureid_0/xcl_design_gpio_featureid_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_gpio_featureid_0/xcl_design_gpio_featureid_0.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_ddr_calib_status_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddr_calib_status_0/xcl_design_ddr_calib_status_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddr_calib_status_0/xcl_design_ddr_calib_status_0_board.xdc]
  read_xdc -ref xcl_design_ddr_calib_status_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddr_calib_status_0/xcl_design_ddr_calib_status_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddr_calib_status_0/xcl_design_ddr_calib_status_0.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_gate_pr_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_gate_pr_0/xcl_design_gate_pr_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_gate_pr_0/xcl_design_gate_pr_0_board.xdc]
  read_xdc -ref xcl_design_gate_pr_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_gate_pr_0/xcl_design_gate_pr_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_gate_pr_0/xcl_design_gate_pr_0.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_psreset_regslice_ctrl_pr_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_regslice_ctrl_pr_0/xcl_design_psreset_regslice_ctrl_pr_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_regslice_ctrl_pr_0/xcl_design_psreset_regslice_ctrl_pr_0_board.xdc]
  read_xdc -ref xcl_design_psreset_regslice_ctrl_pr_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_regslice_ctrl_pr_0/xcl_design_psreset_regslice_ctrl_pr_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_regslice_ctrl_pr_0/xcl_design_psreset_regslice_ctrl_pr_0.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_psreset_regslice_data_pr_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_regslice_data_pr_0/xcl_design_psreset_regslice_data_pr_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_regslice_data_pr_0/xcl_design_psreset_regslice_data_pr_0_board.xdc]
  read_xdc -ref xcl_design_psreset_regslice_data_pr_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_regslice_data_pr_0/xcl_design_psreset_regslice_data_pr_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_regslice_data_pr_0/xcl_design_psreset_regslice_data_pr_0.xdc]
  read_xdc -ref xcl_design_sys_mgmt_wiz_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_sys_mgmt_wiz_0/xcl_design_sys_mgmt_wiz_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_sys_mgmt_wiz_0/xcl_design_sys_mgmt_wiz_0.xdc]
  read_xdc -ref xcl_design_xilmonitor_apm_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_xilmonitor_apm_0/xcl_design_xilmonitor_apm_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_xilmonitor_apm_0/xcl_design_xilmonitor_apm_0.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_psreset_ddrmem_n_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_0/xcl_design_psreset_ddrmem_n_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_0/xcl_design_psreset_ddrmem_n_0_board.xdc]
  read_xdc -ref xcl_design_psreset_ddrmem_n_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_0/xcl_design_psreset_ddrmem_n_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_0/xcl_design_psreset_ddrmem_n_0.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_psreset_ddrmem_n_2_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_2_0/xcl_design_psreset_ddrmem_n_2_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_2_0/xcl_design_psreset_ddrmem_n_2_0_board.xdc]
  read_xdc -ref xcl_design_psreset_ddrmem_n_2_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_2_0/xcl_design_psreset_ddrmem_n_2_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_2_0/xcl_design_psreset_ddrmem_n_2_0.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_psreset_ddrmem_n_3_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_3_0/xcl_design_psreset_ddrmem_n_3_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_3_0/xcl_design_psreset_ddrmem_n_3_0_board.xdc]
  read_xdc -ref xcl_design_psreset_ddrmem_n_3_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_3_0/xcl_design_psreset_ddrmem_n_3_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_3_0/xcl_design_psreset_ddrmem_n_3_0.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_psreset_ddrmem_n_4_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_4_0/xcl_design_psreset_ddrmem_n_4_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_4_0/xcl_design_psreset_ddrmem_n_4_0_board.xdc]
  read_xdc -ref xcl_design_psreset_ddrmem_n_4_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_4_0/xcl_design_psreset_ddrmem_n_4_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_ddrmem_n_4_0/xcl_design_psreset_ddrmem_n_4_0.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_psreset_gate_pr_apmclk_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_apmclk_0/xcl_design_psreset_gate_pr_apmclk_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_apmclk_0/xcl_design_psreset_gate_pr_apmclk_0_board.xdc]
  read_xdc -ref xcl_design_psreset_gate_pr_apmclk_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_apmclk_0/xcl_design_psreset_gate_pr_apmclk_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_apmclk_0/xcl_design_psreset_gate_pr_apmclk_0.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_psreset_gate_pr_control_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_control_0/xcl_design_psreset_gate_pr_control_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_control_0/xcl_design_psreset_gate_pr_control_0_board.xdc]
  read_xdc -ref xcl_design_psreset_gate_pr_control_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_control_0/xcl_design_psreset_gate_pr_control_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_control_0/xcl_design_psreset_gate_pr_control_0.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_psreset_gate_pr_data_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_data_0/xcl_design_psreset_gate_pr_data_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_data_0/xcl_design_psreset_gate_pr_data_0_board.xdc]
  read_xdc -ref xcl_design_psreset_gate_pr_data_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_data_0/xcl_design_psreset_gate_pr_data_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_data_0/xcl_design_psreset_gate_pr_data_0.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_psreset_gate_pr_kernel_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_kernel_0/xcl_design_psreset_gate_pr_kernel_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_kernel_0/xcl_design_psreset_gate_pr_kernel_0_board.xdc]
  read_xdc -ref xcl_design_psreset_gate_pr_kernel_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_kernel_0/xcl_design_psreset_gate_pr_kernel_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_kernel_0/xcl_design_psreset_gate_pr_kernel_0.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_psreset_gate_pr_kernel2_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_kernel2_0/xcl_design_psreset_gate_pr_kernel2_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_kernel2_0/xcl_design_psreset_gate_pr_kernel2_0_board.xdc]
  read_xdc -ref xcl_design_psreset_gate_pr_kernel2_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_kernel2_0/xcl_design_psreset_gate_pr_kernel2_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_psreset_gate_pr_kernel2_0/xcl_design_psreset_gate_pr_kernel2_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_41e8_psr0_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_1/bd_41e8_psr0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_1/bd_41e8_psr0_0_board.xdc]
  read_xdc -ref bd_41e8_psr0_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_1/bd_41e8_psr0_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_1/bd_41e8_psr0_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_41e8_psr_aclk_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_2/bd_41e8_psr_aclk_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_2/bd_41e8_psr_aclk_0_board.xdc]
  read_xdc -ref bd_41e8_psr_aclk_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_2/bd_41e8_psr_aclk_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_2/bd_41e8_psr_aclk_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_41e8_psr_aclk1_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_3/bd_41e8_psr_aclk1_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_3/bd_41e8_psr_aclk1_0_board.xdc]
  read_xdc -ref bd_41e8_psr_aclk1_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_3/bd_41e8_psr_aclk1_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_3/bd_41e8_psr_aclk1_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_41e8_psr_aclk2_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_4/bd_41e8_psr_aclk2_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_4/bd_41e8_psr_aclk2_0_board.xdc]
  read_xdc -ref bd_41e8_psr_aclk2_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_4/bd_41e8_psr_aclk2_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_4/bd_41e8_psr_aclk2_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_81b9_psr0_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_1/bd_81b9_psr0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_1/bd_81b9_psr0_0_board.xdc]
  read_xdc -ref bd_81b9_psr0_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_1/bd_81b9_psr0_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_1/bd_81b9_psr0_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_81b9_psr_aclk_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_2/bd_81b9_psr_aclk_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_2/bd_81b9_psr_aclk_0_board.xdc]
  read_xdc -ref bd_81b9_psr_aclk_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_2/bd_81b9_psr_aclk_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_2/bd_81b9_psr_aclk_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_81b9_psr_aclk1_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_3/bd_81b9_psr_aclk1_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_3/bd_81b9_psr_aclk1_0_board.xdc]
  read_xdc -ref bd_81b9_psr_aclk1_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_3/bd_81b9_psr_aclk1_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_3/bd_81b9_psr_aclk1_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_81b9_psr_aclk2_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_4/bd_81b9_psr_aclk2_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_4/bd_81b9_psr_aclk2_0_board.xdc]
  read_xdc -ref bd_81b9_psr_aclk2_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_4/bd_81b9_psr_aclk2_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_4/bd_81b9_psr_aclk2_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_8149_psr0_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_1/bd_8149_psr0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_1/bd_8149_psr0_0_board.xdc]
  read_xdc -ref bd_8149_psr0_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_1/bd_8149_psr0_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_1/bd_8149_psr0_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_8149_psr_aclk_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_2/bd_8149_psr_aclk_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_2/bd_8149_psr_aclk_0_board.xdc]
  read_xdc -ref bd_8149_psr_aclk_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_2/bd_8149_psr_aclk_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_2/bd_8149_psr_aclk_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_8149_psr_aclk1_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_3/bd_8149_psr_aclk1_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_3/bd_8149_psr_aclk1_0_board.xdc]
  read_xdc -ref bd_8149_psr_aclk1_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_3/bd_8149_psr_aclk1_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_3/bd_8149_psr_aclk1_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_8149_psr_aclk2_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_4/bd_8149_psr_aclk2_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_4/bd_8149_psr_aclk2_0_board.xdc]
  read_xdc -ref bd_8149_psr_aclk2_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_4/bd_8149_psr_aclk2_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_4/bd_8149_psr_aclk2_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_4118_psr0_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_1/bd_4118_psr0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_1/bd_4118_psr0_0_board.xdc]
  read_xdc -ref bd_4118_psr0_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_1/bd_4118_psr0_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_1/bd_4118_psr0_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_4118_psr_aclk_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_2/bd_4118_psr_aclk_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_2/bd_4118_psr_aclk_0_board.xdc]
  read_xdc -ref bd_4118_psr_aclk_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_2/bd_4118_psr_aclk_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_2/bd_4118_psr_aclk_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_4118_psr_aclk1_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_3/bd_4118_psr_aclk1_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_3/bd_4118_psr_aclk1_0_board.xdc]
  read_xdc -ref bd_4118_psr_aclk1_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_3/bd_4118_psr_aclk1_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_3/bd_4118_psr_aclk1_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_4118_psr_aclk2_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_4/bd_4118_psr_aclk2_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_4/bd_4118_psr_aclk2_0_board.xdc]
  read_xdc -ref bd_4118_psr_aclk2_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_4/bd_4118_psr_aclk2_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_4/bd_4118_psr_aclk2_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_d184_psr0_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_host_0/bd_0/ip/ip_1/bd_d184_psr0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_host_0/bd_0/ip/ip_1/bd_d184_psr0_0_board.xdc]
  read_xdc -ref bd_d184_psr0_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_host_0/bd_0/ip/ip_1/bd_d184_psr0_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_host_0/bd_0/ip/ip_1/bd_d184_psr0_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_d184_psr_aclk_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_host_0/bd_0/ip/ip_2/bd_d184_psr_aclk_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_host_0/bd_0/ip/ip_2/bd_d184_psr_aclk_0_board.xdc]
  read_xdc -ref bd_d184_psr_aclk_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_host_0/bd_0/ip/ip_2/bd_d184_psr_aclk_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_host_0/bd_0/ip/ip_2/bd_d184_psr_aclk_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_d184_psr_aclk1_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_host_0/bd_0/ip/ip_3/bd_d184_psr_aclk1_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_host_0/bd_0/ip/ip_3/bd_d184_psr_aclk1_0_board.xdc]
  read_xdc -ref bd_d184_psr_aclk1_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_host_0/bd_0/ip/ip_3/bd_d184_psr_aclk1_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_host_0/bd_0/ip/ip_3/bd_d184_psr_aclk1_0.xdc]
  read_xdc -ref bd_8917_microblaze_I_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/bd_0/ip/ip_0/bd_8917_microblaze_I_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/bd_0/ip/ip_0/bd_8917_microblaze_I_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_8917_rst_0_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/bd_0/ip/ip_1/bd_8917_rst_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/bd_0/ip/ip_1/bd_8917_rst_0_0_board.xdc]
  read_xdc -ref bd_8917_rst_0_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/bd_0/ip/ip_1/bd_8917_rst_0_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/bd_0/ip/ip_1/bd_8917_rst_0_0.xdc]
  read_xdc -ref bd_8917_ilmb_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/bd_0/ip/ip_2/bd_8917_ilmb_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/bd_0/ip/ip_2/bd_8917_ilmb_0.xdc]
  read_xdc -ref bd_8917_dlmb_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/bd_0/ip/ip_3/bd_8917_dlmb_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/bd_0/ip/ip_3/bd_8917_dlmb_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_8917_iomodule_0_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/bd_0/ip/ip_10/bd_8917_iomodule_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/bd_0/ip/ip_10/bd_8917_iomodule_0_0_board.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_ddrmem_0_0_microblaze_mcs -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/ip_0/xcl_design_ddrmem_0_0_microblaze_mcs_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/ip_0/xcl_design_ddrmem_0_0_microblaze_mcs_board.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_ddrmem_0_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/xcl_design_ddrmem_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/xcl_design_ddrmem_0_0_board.xdc]
  read_xdc -ref xcl_design_ddrmem_0_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/par/xcl_design_ddrmem_0_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_0_0/par/xcl_design_ddrmem_0_0.xdc]
  read_xdc -ref bd_b3eb_microblaze_I_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/bd_0/ip/ip_0/bd_b3eb_microblaze_I_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/bd_0/ip/ip_0/bd_b3eb_microblaze_I_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_b3eb_rst_0_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/bd_0/ip/ip_1/bd_b3eb_rst_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/bd_0/ip/ip_1/bd_b3eb_rst_0_0_board.xdc]
  read_xdc -ref bd_b3eb_rst_0_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/bd_0/ip/ip_1/bd_b3eb_rst_0_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/bd_0/ip/ip_1/bd_b3eb_rst_0_0.xdc]
  read_xdc -ref bd_b3eb_ilmb_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/bd_0/ip/ip_2/bd_b3eb_ilmb_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/bd_0/ip/ip_2/bd_b3eb_ilmb_0.xdc]
  read_xdc -ref bd_b3eb_dlmb_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/bd_0/ip/ip_3/bd_b3eb_dlmb_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/bd_0/ip/ip_3/bd_b3eb_dlmb_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_b3eb_iomodule_0_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/bd_0/ip/ip_10/bd_b3eb_iomodule_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/bd_0/ip/ip_10/bd_b3eb_iomodule_0_0_board.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_ddrmem_1_0_microblaze_mcs -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/ip_0/xcl_design_ddrmem_1_0_microblaze_mcs_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/ip_0/xcl_design_ddrmem_1_0_microblaze_mcs_board.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_ddrmem_1_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/xcl_design_ddrmem_1_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/xcl_design_ddrmem_1_0_board.xdc]
  read_xdc -ref xcl_design_ddrmem_1_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/par/xcl_design_ddrmem_1_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_1_0/par/xcl_design_ddrmem_1_0.xdc]
  read_xdc -ref bd_fcef_microblaze_I_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/bd_0/ip/ip_0/bd_fcef_microblaze_I_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/bd_0/ip/ip_0/bd_fcef_microblaze_I_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_fcef_rst_0_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/bd_0/ip/ip_1/bd_fcef_rst_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/bd_0/ip/ip_1/bd_fcef_rst_0_0_board.xdc]
  read_xdc -ref bd_fcef_rst_0_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/bd_0/ip/ip_1/bd_fcef_rst_0_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/bd_0/ip/ip_1/bd_fcef_rst_0_0.xdc]
  read_xdc -ref bd_fcef_ilmb_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/bd_0/ip/ip_2/bd_fcef_ilmb_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/bd_0/ip/ip_2/bd_fcef_ilmb_0.xdc]
  read_xdc -ref bd_fcef_dlmb_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/bd_0/ip/ip_3/bd_fcef_dlmb_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/bd_0/ip/ip_3/bd_fcef_dlmb_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_fcef_iomodule_0_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/bd_0/ip/ip_10/bd_fcef_iomodule_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/bd_0/ip/ip_10/bd_fcef_iomodule_0_0_board.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_ddrmem_2_0_microblaze_mcs -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/ip_0/xcl_design_ddrmem_2_0_microblaze_mcs_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/ip_0/xcl_design_ddrmem_2_0_microblaze_mcs_board.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_ddrmem_2_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/xcl_design_ddrmem_2_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/xcl_design_ddrmem_2_0_board.xdc]
  read_xdc -ref xcl_design_ddrmem_2_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/par/xcl_design_ddrmem_2_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_2_0/par/xcl_design_ddrmem_2_0.xdc]
  read_xdc -ref bd_c613_microblaze_I_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/bd_0/ip/ip_0/bd_c613_microblaze_I_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/bd_0/ip/ip_0/bd_c613_microblaze_I_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_c613_rst_0_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/bd_0/ip/ip_1/bd_c613_rst_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/bd_0/ip/ip_1/bd_c613_rst_0_0_board.xdc]
  read_xdc -ref bd_c613_rst_0_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/bd_0/ip/ip_1/bd_c613_rst_0_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/bd_0/ip/ip_1/bd_c613_rst_0_0.xdc]
  read_xdc -ref bd_c613_ilmb_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/bd_0/ip/ip_2/bd_c613_ilmb_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/bd_0/ip/ip_2/bd_c613_ilmb_0.xdc]
  read_xdc -ref bd_c613_dlmb_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/bd_0/ip/ip_3/bd_c613_dlmb_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/bd_0/ip/ip_3/bd_c613_dlmb_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_c613_iomodule_0_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/bd_0/ip/ip_10/bd_c613_iomodule_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/bd_0/ip/ip_10/bd_c613_iomodule_0_0_board.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_ddrmem_3_0_microblaze_mcs -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/ip_0/xcl_design_ddrmem_3_0_microblaze_mcs_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/ip_0/xcl_design_ddrmem_3_0_microblaze_mcs_board.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_ddrmem_3_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/xcl_design_ddrmem_3_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/xcl_design_ddrmem_3_0_board.xdc]
  read_xdc -ref xcl_design_ddrmem_3_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/par/xcl_design_ddrmem_3_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_ddrmem_3_0/par/xcl_design_ddrmem_3_0.xdc]
  read_xdc -prop_thru_buffers -ref xcl_design_flash_programmer_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_flash_programmer_0/xcl_design_flash_programmer_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_flash_programmer_0/xcl_design_flash_programmer_0_board.xdc]
  read_xdc -ref xcl_design_flash_programmer_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_flash_programmer_0/xcl_design_flash_programmer_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_flash_programmer_0/xcl_design_flash_programmer_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_2fd7_data_sys_reset_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_14/bd_2fd7_data_sys_reset_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_14/bd_2fd7_data_sys_reset_0_board.xdc]
  read_xdc -ref bd_2fd7_data_sys_reset_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_14/bd_2fd7_data_sys_reset_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_14/bd_2fd7_data_sys_reset_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_2fd7_control_sys_reset_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_15/bd_2fd7_control_sys_reset_0_board.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_15/bd_2fd7_control_sys_reset_0_board.xdc]
  read_xdc -ref bd_2fd7_control_sys_reset_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_15/bd_2fd7_control_sys_reset_0.xdc
  set_property processing_order EARLY [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_15/bd_2fd7_control_sys_reset_0.xdc]
  read_xdc C:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/constrs_1/imports/constraints/xcl_design.xdc
  read_xdc -ref xcl_design_xilmonitor_apm_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_xilmonitor_apm_0/xcl_design_xilmonitor_apm_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_xilmonitor_apm_0/xcl_design_xilmonitor_apm_0_clocks.xdc]
  read_xdc -ref bd_41e8_sarn_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_14/bd_41e8_sarn_0/bd_41e8_sarn_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_14/bd_41e8_sarn_0/bd_41e8_sarn_0_clocks.xdc]
  read_xdc -ref bd_41e8_srn_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_15/bd_41e8_srn_0/bd_41e8_srn_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_15/bd_41e8_srn_0/bd_41e8_srn_0_clocks.xdc]
  read_xdc -ref bd_41e8_sawn_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_16/bd_41e8_sawn_0/bd_41e8_sawn_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_16/bd_41e8_sawn_0/bd_41e8_sawn_0_clocks.xdc]
  read_xdc -ref bd_41e8_swn_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_17/bd_41e8_swn_0/bd_41e8_swn_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_17/bd_41e8_swn_0/bd_41e8_swn_0_clocks.xdc]
  read_xdc -ref bd_41e8_sbn_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_18/bd_41e8_sbn_0/bd_41e8_sbn_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_18/bd_41e8_sbn_0/bd_41e8_sbn_0_clocks.xdc]
  read_xdc -ref bd_41e8_sarn_1 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_23/bd_41e8_sarn_1/bd_41e8_sarn_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_23/bd_41e8_sarn_1/bd_41e8_sarn_1_clocks.xdc]
  read_xdc -ref bd_41e8_srn_1 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_24/bd_41e8_srn_1/bd_41e8_srn_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_24/bd_41e8_srn_1/bd_41e8_srn_1_clocks.xdc]
  read_xdc -ref bd_41e8_sawn_1 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_25/bd_41e8_sawn_1/bd_41e8_sawn_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_25/bd_41e8_sawn_1/bd_41e8_sawn_1_clocks.xdc]
  read_xdc -ref bd_41e8_swn_1 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_26/bd_41e8_swn_1/bd_41e8_swn_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_26/bd_41e8_swn_1/bd_41e8_swn_1_clocks.xdc]
  read_xdc -ref bd_41e8_sbn_1 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_27/bd_41e8_sbn_1/bd_41e8_sbn_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem0_0/bd_0/ip/ip_27/bd_41e8_sbn_1/bd_41e8_sbn_1_clocks.xdc]
  read_xdc -ref bd_81b9_sarn_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_14/bd_81b9_sarn_0/bd_81b9_sarn_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_14/bd_81b9_sarn_0/bd_81b9_sarn_0_clocks.xdc]
  read_xdc -ref bd_81b9_srn_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_15/bd_81b9_srn_0/bd_81b9_srn_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_15/bd_81b9_srn_0/bd_81b9_srn_0_clocks.xdc]
  read_xdc -ref bd_81b9_sawn_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_16/bd_81b9_sawn_0/bd_81b9_sawn_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_16/bd_81b9_sawn_0/bd_81b9_sawn_0_clocks.xdc]
  read_xdc -ref bd_81b9_swn_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_17/bd_81b9_swn_0/bd_81b9_swn_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_17/bd_81b9_swn_0/bd_81b9_swn_0_clocks.xdc]
  read_xdc -ref bd_81b9_sbn_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_18/bd_81b9_sbn_0/bd_81b9_sbn_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_18/bd_81b9_sbn_0/bd_81b9_sbn_0_clocks.xdc]
  read_xdc -ref bd_81b9_sarn_1 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_23/bd_81b9_sarn_1/bd_81b9_sarn_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_23/bd_81b9_sarn_1/bd_81b9_sarn_1_clocks.xdc]
  read_xdc -ref bd_81b9_srn_1 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_24/bd_81b9_srn_1/bd_81b9_srn_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_24/bd_81b9_srn_1/bd_81b9_srn_1_clocks.xdc]
  read_xdc -ref bd_81b9_sawn_1 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_25/bd_81b9_sawn_1/bd_81b9_sawn_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_25/bd_81b9_sawn_1/bd_81b9_sawn_1_clocks.xdc]
  read_xdc -ref bd_81b9_swn_1 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_26/bd_81b9_swn_1/bd_81b9_swn_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_26/bd_81b9_swn_1/bd_81b9_swn_1_clocks.xdc]
  read_xdc -ref bd_81b9_sbn_1 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_27/bd_81b9_sbn_1/bd_81b9_sbn_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem1_0/bd_0/ip/ip_27/bd_81b9_sbn_1/bd_81b9_sbn_1_clocks.xdc]
  read_xdc -ref bd_8149_sarn_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_14/bd_8149_sarn_0/bd_8149_sarn_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_14/bd_8149_sarn_0/bd_8149_sarn_0_clocks.xdc]
  read_xdc -ref bd_8149_srn_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_15/bd_8149_srn_0/bd_8149_srn_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_15/bd_8149_srn_0/bd_8149_srn_0_clocks.xdc]
  read_xdc -ref bd_8149_sawn_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_16/bd_8149_sawn_0/bd_8149_sawn_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_16/bd_8149_sawn_0/bd_8149_sawn_0_clocks.xdc]
  read_xdc -ref bd_8149_swn_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_17/bd_8149_swn_0/bd_8149_swn_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_17/bd_8149_swn_0/bd_8149_swn_0_clocks.xdc]
  read_xdc -ref bd_8149_sbn_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_18/bd_8149_sbn_0/bd_8149_sbn_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_18/bd_8149_sbn_0/bd_8149_sbn_0_clocks.xdc]
  read_xdc -ref bd_8149_sarn_1 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_23/bd_8149_sarn_1/bd_8149_sarn_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_23/bd_8149_sarn_1/bd_8149_sarn_1_clocks.xdc]
  read_xdc -ref bd_8149_srn_1 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_24/bd_8149_srn_1/bd_8149_srn_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_24/bd_8149_srn_1/bd_8149_srn_1_clocks.xdc]
  read_xdc -ref bd_8149_sawn_1 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_25/bd_8149_sawn_1/bd_8149_sawn_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_25/bd_8149_sawn_1/bd_8149_sawn_1_clocks.xdc]
  read_xdc -ref bd_8149_swn_1 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_26/bd_8149_swn_1/bd_8149_swn_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_26/bd_8149_swn_1/bd_8149_swn_1_clocks.xdc]
  read_xdc -ref bd_8149_sbn_1 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_27/bd_8149_sbn_1/bd_8149_sbn_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem2_0/bd_0/ip/ip_27/bd_8149_sbn_1/bd_8149_sbn_1_clocks.xdc]
  read_xdc -ref bd_4118_sarn_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_14/bd_4118_sarn_0/bd_4118_sarn_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_14/bd_4118_sarn_0/bd_4118_sarn_0_clocks.xdc]
  read_xdc -ref bd_4118_srn_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_15/bd_4118_srn_0/bd_4118_srn_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_15/bd_4118_srn_0/bd_4118_srn_0_clocks.xdc]
  read_xdc -ref bd_4118_sawn_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_16/bd_4118_sawn_0/bd_4118_sawn_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_16/bd_4118_sawn_0/bd_4118_sawn_0_clocks.xdc]
  read_xdc -ref bd_4118_swn_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_17/bd_4118_swn_0/bd_4118_swn_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_17/bd_4118_swn_0/bd_4118_swn_0_clocks.xdc]
  read_xdc -ref bd_4118_sbn_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_18/bd_4118_sbn_0/bd_4118_sbn_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_18/bd_4118_sbn_0/bd_4118_sbn_0_clocks.xdc]
  read_xdc -ref bd_4118_sarn_1 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_23/bd_4118_sarn_1/bd_4118_sarn_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_23/bd_4118_sarn_1/bd_4118_sarn_1_clocks.xdc]
  read_xdc -ref bd_4118_srn_1 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_24/bd_4118_srn_1/bd_4118_srn_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_24/bd_4118_srn_1/bd_4118_srn_1_clocks.xdc]
  read_xdc -ref bd_4118_sawn_1 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_25/bd_4118_sawn_1/bd_4118_sawn_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_25/bd_4118_sawn_1/bd_4118_sawn_1_clocks.xdc]
  read_xdc -ref bd_4118_swn_1 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_26/bd_4118_swn_1/bd_4118_swn_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_26/bd_4118_swn_1/bd_4118_swn_1_clocks.xdc]
  read_xdc -ref bd_4118_sbn_1 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_27/bd_4118_sbn_1/bd_4118_sbn_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_ddrmem3_0/bd_0/ip/ip_27/bd_4118_sbn_1/bd_4118_sbn_1_clocks.xdc]
  read_xdc -ref bd_d184_m04arn_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_host_0/bd_0/ip/ip_47/bd_d184_m04arn_0/bd_d184_m04arn_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_host_0/bd_0/ip/ip_47/bd_d184_m04arn_0/bd_d184_m04arn_0_clocks.xdc]
  read_xdc -ref bd_d184_m04rn_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_host_0/bd_0/ip/ip_48/bd_d184_m04rn_0/bd_d184_m04rn_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_interconnect_aximm_host_0/bd_0/ip/ip_48/bd_d184_m04rn_0/bd_d184_m04rn_0_clocks.xdc]
  read_xdc -ref xcl_design_axicc_ddrmem_2_ctrl_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_axicc_ddrmem_2_ctrl_0/xcl_design_axicc_ddrmem_2_ctrl_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_axicc_ddrmem_2_ctrl_0/xcl_design_axicc_ddrmem_2_ctrl_0_clocks.xdc]
  read_xdc -ref xcl_design_axicc_ddrmem_3_ctrl_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_axicc_ddrmem_3_ctrl_0/xcl_design_axicc_ddrmem_3_ctrl_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_axicc_ddrmem_3_ctrl_0/xcl_design_axicc_ddrmem_3_ctrl_0_clocks.xdc]
  read_xdc -ref xcl_design_flash_programmer_0 -cells U0 c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_flash_programmer_0/xcl_design_flash_programmer_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_flash_programmer_0/xcl_design_flash_programmer_0_clocks.xdc]
  read_xdc -ref bd_2fd7_auto_cc_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_25/bd_2fd7_auto_cc_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_25/bd_2fd7_auto_cc_0_clocks.xdc]
  read_xdc -ref bd_2fd7_auto_cc_1 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_26/bd_2fd7_auto_cc_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_26/bd_2fd7_auto_cc_1_clocks.xdc]
  read_xdc -ref bd_2fd7_auto_cc_2 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_27/bd_2fd7_auto_cc_2_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_27/bd_2fd7_auto_cc_2_clocks.xdc]
  read_xdc -ref bd_2fd7_auto_cc_3 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_28/bd_2fd7_auto_cc_3_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_u_ocl_region_0/bd_0/ip/ip_28/bd_2fd7_auto_cc_3_clocks.xdc]
  read_xdc -ref xcl_design_auto_cc_0 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_auto_cc_0/xcl_design_auto_cc_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_auto_cc_0/xcl_design_auto_cc_0_clocks.xdc]
  read_xdc -ref xcl_design_auto_cc_1 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_auto_cc_1/xcl_design_auto_cc_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_auto_cc_1/xcl_design_auto_cc_1_clocks.xdc]
  read_xdc -ref xcl_design_auto_cc_2 -cells inst c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_auto_cc_2/xcl_design_auto_cc_2_clocks.xdc
  set_property processing_order LATE [get_files c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_auto_cc_2/xcl_design_auto_cc_2_clocks.xdc]
  link_design -top xcl_design_wrapper -part xcku115-flvb2104-2-e
  write_hwdef -file xcl_design_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  set src_rc [catch { 
    puts "source C:/Sim/sdaccel_ku/sources/misc/xpr_preopt.tcl"
    source C:/Sim/sdaccel_ku/sources/misc/xpr_preopt.tcl
  } _RESULT] 
  if {$src_rc} { 
    send_msg_id runtcl-1 error "$_RESULT"
    send_msg_id runtcl-2 error "sourcing script C:/Sim/sdaccel_ku/sources/misc/xpr_preopt.tcl failed"
    return -code error
  }
  opt_design 
  set src_rc [catch { 
    puts "source C:/Sim/sdaccel_ku/sources/misc/xpr_postopt.tcl"
    source C:/Sim/sdaccel_ku/sources/misc/xpr_postopt.tcl
  } _RESULT] 
  if {$src_rc} { 
    send_msg_id runtcl-1 error "$_RESULT"
    send_msg_id runtcl-2 error "sourcing script C:/Sim/sdaccel_ku/sources/misc/xpr_postopt.tcl failed"
    return -code error
  }
  write_checkpoint -force xcl_design_wrapper_opt.dcp
  report_drc -file xcl_design_wrapper_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force xcl_design_wrapper_placed.dcp
  report_io -file xcl_design_wrapper_io_placed.rpt
  report_utilization -file xcl_design_wrapper_utilization_placed.rpt -pb xcl_design_wrapper_utilization_placed.pb
  report_control_sets -verbose -file xcl_design_wrapper_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  set src_rc [catch { 
    puts "source C:/Sim/sdaccel_ku/sources/misc/xpr_postroute.tcl"
    source C:/Sim/sdaccel_ku/sources/misc/xpr_postroute.tcl
  } _RESULT] 
  if {$src_rc} { 
    send_msg_id runtcl-1 error "$_RESULT"
    send_msg_id runtcl-2 error "sourcing script C:/Sim/sdaccel_ku/sources/misc/xpr_postroute.tcl failed"
    return -code error
  }
  write_checkpoint -force xcl_design_wrapper_routed.dcp
  report_drc -file xcl_design_wrapper_drc_routed.rpt -pb xcl_design_wrapper_drc_routed.pb -rpx xcl_design_wrapper_drc_routed.rpx
  report_methodology -file xcl_design_wrapper_methodology_drc_routed.rpt -rpx xcl_design_wrapper_methodology_drc_routed.rpx
  report_timing_summary -warn_on_violation -max_paths 10 -file xcl_design_wrapper_timing_summary_routed.rpt -rpx xcl_design_wrapper_timing_summary_routed.rpx
  report_power -file xcl_design_wrapper_power_routed.rpt -pb xcl_design_wrapper_power_summary_routed.pb -rpx xcl_design_wrapper_power_routed.rpx
  report_route_status -file xcl_design_wrapper_route_status.rpt -pb xcl_design_wrapper_route_status.pb
  report_clock_utilization -file xcl_design_wrapper_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force xcl_design_wrapper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

