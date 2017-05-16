create_clock -period 33.000 [get_ports -no_traverse tck_0]
set_property -quiet CLOCK_PERIOD_OOC_TARGET 33.000 [get_ports -no_traverse -quiet tck_0]
set_property -quiet IS_IP_OOC_CELL TRUE [get_cells -of [get_ports -no_traverse -quiet bscanid_0[0]]]
