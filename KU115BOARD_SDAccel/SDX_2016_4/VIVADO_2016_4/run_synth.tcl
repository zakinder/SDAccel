
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
generate_target all [get_files xcl_design.bd]
launch_runs synth_1 -jobs 8
wait_on_run synth_1
