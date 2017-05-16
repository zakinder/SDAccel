################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name emc_clk -period 11.111 [get_ports emc_clk]
create_clock -name c0_sys_clk_p -period 3.333 [get_ports c0_sys_clk_p]
create_clock -name c1_sys_clk_p -period 3.333 [get_ports c1_sys_clk_p]
create_clock -name c2_sys_clk_p -period 3.333 [get_ports c2_sys_clk_p]
create_clock -name c3_sys_clk_p -period 3.333 [get_ports c3_sys_clk_p]
create_clock -name ref_clk_clk_p -period 10 [get_ports ref_clk_clk_p]

################################################################################