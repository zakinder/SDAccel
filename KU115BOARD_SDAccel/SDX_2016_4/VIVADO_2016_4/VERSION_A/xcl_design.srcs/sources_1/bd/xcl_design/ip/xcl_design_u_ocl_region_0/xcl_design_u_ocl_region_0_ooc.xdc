create_clock -name DATA_CLK -period 3.3333333333333335 [get_ports DATA_CLK]
create_clock -name CONTROL_CLK -period 20.0 [get_ports CONTROL_CLK]
create_clock -name KERNEL_CLK2 -period 2.0 [get_ports KERNEL_CLK2]
