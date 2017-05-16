################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name KERNEL_CLK2 -period 2 [get_ports KERNEL_CLK2]
create_clock -name CONTROL_CLK -period 20 [get_ports CONTROL_CLK]
create_clock -name DATA_CLK -period 3.333 [get_ports DATA_CLK]

################################################################################