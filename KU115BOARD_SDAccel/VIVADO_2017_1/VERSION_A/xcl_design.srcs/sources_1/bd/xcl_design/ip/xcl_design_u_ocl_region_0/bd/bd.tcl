proc post_config_ip {cellpath otherInfo} { 
  set cell [get_bd_cells $cellpath]
  set use_pr [get_property CONFIG.USE_PR $cell]
  set_property HDL_ATTRIBUTE.HD.RECONFIGURABLE [expr {$use_pr ? "true" : "false"}] $cell
}

proc post_propagate {cellpath otherInfo} {
  set kernel_clk [get_bd_pins ${cellpath}/KERNEL_CLK -quiet]
  if { $kernel_clk eq "" } {
    set kernel_clk [get_bd_pins ${cellpath}/DATA_CLK -quiet]
  }
  if { $kernel_clk eq "" } {
    set kernel_clk [get_bd_pins ${cellpath}/ACLK -quiet]
  }
  if { $kernel_clk ne "" } {
    set freq  [expr [get_property CONFIG.FREQ_HZ $kernel_clk -quiet]]
     #check if kernel clock larger than 300MHz
    #if { $freq > 300000000 } {
    # catch {::bd::send_msg -of $cellpath  -type CRITICAL_WARNING -msg_id 1689 -text "The recommend kernel clock(${freq}HZ) of $cellpath should be lower than 300MHz"}
    #}
  }

}



