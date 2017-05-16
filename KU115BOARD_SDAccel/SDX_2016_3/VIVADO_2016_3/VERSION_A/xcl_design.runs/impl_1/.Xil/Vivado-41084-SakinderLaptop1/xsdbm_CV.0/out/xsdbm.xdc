





##
## Timing Exception on MMCM Output Clock
##
set_clock_groups -asynchronous -group  [list [get_clocks -of_objects [get_pins USE_DIVIDER.U_GT_MMCM/CLKOUT0]]]
