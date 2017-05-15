if { ![llength [info commands ::map_connect]] && [llength [info commands ::debug::map_connect]] } { proc ::map_connect {args} { ::debug::map_connect {*}$args }; set_param -quiet compiler.enablemap_connect 1; }

set_property memory_port_data_width 256 [get_kernels migbw]
set vbnv [get_property dsas [current_solution]]

if { [string match *2ddr* $vbnv] } {
    puts "Configuring kernel connections"
    set_property max_memory_ports true [get_kernel migbw]
    map_connect  -opencl_binary [get_opencl_binary mykernel] -src_type "kernel" -src_name "migbw" -src_port "M_AXI_GMEM0" -dst_type "core" -dst_name "OCL_REGION_0" -dst_port "M00_AXI"
    map_connect  -opencl_binary [get_opencl_binary mykernel] -src_type "kernel" -src_name "migbw" -src_port "M_AXI_GMEM1" -dst_type "core" -dst_name "OCL_REGION_0" -dst_port "M01_AXI"
}


