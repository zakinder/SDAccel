#Definitional proc to organize widgets for parameters.
set c_family [string tolower [get_project_property FAMILY]]
proc create_gui { ipview } {
	set Component_Name [ ipgui::add_param  $ipview  -parent  $ipview  -name Component_Name ]
	set Page0 [ ipgui::add_page $ipview  -name "Page 0" -layout vertical]
	set C_BASEADDR [ipgui::add_param $ipview -parent $Page0 -name C_BASEADDR]
	set C_HIGHADDR [ipgui::add_param $ipview -parent $Page0 -name C_HIGHADDR]
	set C_AXI4_BASEADDR [ipgui::add_param $ipview -parent $Page0 -name C_AXI4_BASEADDR]
	set C_AXI4_HIGHADDR [ipgui::add_param $ipview -parent $Page0 -name C_AXI4_HIGHADDR]
	set_property tooltip {High address should be atleast 4k more than Base addess.} $C_HIGHADDR
	set C_S_AXI_PROTOCOL [ipgui::add_param $ipview -parent $Page0 -name C_S_AXI_PROTOCOL]
	set C_AXI_STR_TXC_PROTOCOL [ipgui::add_param $ipview -parent $Page0 -name C_AXI_STR_TXC_PROTOCOL]
	set C_AXI_STR_TXD_PROTOCOL [ipgui::add_param $ipview -parent $Page0 -name C_AXI_STR_TXD_PROTOCOL]
	set C_AXI_STR_RXD_PROTOCOL [ipgui::add_param $ipview -parent $Page0 -name C_AXI_STR_RXD_PROTOCOL]
	
	set panel [ipgui::add_panel $ipview -parent $Page0 -name panel -layout horizontal]
	set C_DATA_INTERFACE_TYPE [ipgui::add_param $ipview -parent $panel -name C_DATA_INTERFACE_TYPE -layout horizontal -widget comboBox]
	set_property display_name "Data Interface" $C_DATA_INTERFACE_TYPE
	ipgui::add_indent $ipview -parent $panel
	set C_S_AXI4_DATA_WIDTH [ipgui::add_param $ipview -parent $panel -name C_S_AXI4_DATA_WIDTH -widget comboBox]
	ipgui::add_row $ipview -parent $panel
	set C_S_AXI_ID_WIDTH [ipgui::add_param $ipview -parent $panel -name C_S_AXI_ID_WIDTH]
	set_property display_name "AXI4 ID Width" $C_S_AXI_ID_WIDTH

	set tx_fifo [ipgui::add_group $ipview -parent $Page0 -name tx_fifo]
	set_property display_name "Transmit FIFO Options" $tx_fifo
       	set C_SELECT_XPM [ipgui::add_group $ipview -parent $Page0 -name "C_SELECT_XPM" ]
        set_property visible false $C_SELECT_XPM
   set panel_m [ipgui::add_panel $ipview -parent $tx_fifo -name panel_m -layout horizontal]
   set C_USE_TX_DATA [ipgui::add_param $ipview -parent $panel_m -name C_USE_TX_DATA -widget checkBox]
	ipgui::add_indent $ipview -parent $panel_m
   set C_USE_TX_CTRL [ipgui::add_param $ipview -parent $panel_m -name C_USE_TX_CTRL -widget checkBox]
	ipgui::add_indent $ipview -parent $panel_m
	set C_USE_TX_CUT_THROUGH [ipgui::add_param $ipview -parent $panel_m -name C_USE_TX_CUT_THROUGH -widget checkBox]
	set_property display_name "Enable Transmit Cut Through" $C_USE_TX_CUT_THROUGH
	set C_S_AXI_DATA_WIDTH [ipgui::add_param $ipview -parent $tx_fifo -name C_S_AXI_DATA_WIDTH -widget comboBox]
	set C_TX_FIFO_DEPTH [ipgui::add_param $ipview -parent $tx_fifo -name C_TX_FIFO_DEPTH -widget comboBox]
  	set C_TX_FIFO_PF_THRESHOLD [ipgui::add_param $ipview -parent $tx_fifo -name C_TX_FIFO_PF_THRESHOLD]
	set C_TX_FIFO_PE_THRESHOLD [ipgui::add_param $ipview -parent $tx_fifo -name C_TX_FIFO_PE_THRESHOLD]

	
	set rx_fifo [ipgui::add_group $ipview -parent $Page0 -name rx_fifo]
	set_property display_name "Receive FIFO Options" $rx_fifo
   set panel_mr [ipgui::add_panel $ipview -parent $rx_fifo -name panel_mr -layout horizontal]
   set C_USE_RX_DATA [ipgui::add_param $ipview -parent $panel_mr -name C_USE_RX_DATA -widget checkBox]
	ipgui::add_indent $ipview -parent $panel_m
	set C_USE_RX_CUT_THROUGH [ipgui::add_param $ipview -parent $panel_mr -name C_USE_RX_CUT_THROUGH -widget checkBox]
	set_property display_name "Enable Receive Cut Through" $C_USE_RX_CUT_THROUGH
	set C_RX_FIFO_DEPTH [ipgui::add_param $ipview -parent $rx_fifo -name C_RX_FIFO_DEPTH -widget comboBox]
	set C_RX_FIFO_PF_THRESHOLD [ipgui::add_param $ipview -parent $rx_fifo -name C_RX_FIFO_PF_THRESHOLD]
	set C_RX_FIFO_PE_THRESHOLD [ipgui::add_param $ipview -parent $rx_fifo -name C_RX_FIFO_PE_THRESHOLD]
	# The Enable Receive Cut Through is Hidden, to make it visible; comment or delete the below line
##	set_property visible false $C_USE_RX_CUT_THROUGH

	
	set FIFO_Width_Streaming [ipgui::add_group $ipview -parent $Page0 -name "AXI4 Stream Ports" -layout horizontal]
	ipgui::add_param  $ipview -parent $FIFO_Width_Streaming -name C_HAS_AXIS_TID 
	ipgui::add_param  $ipview -parent $FIFO_Width_Streaming -name C_AXIS_TID_WIDTH -show_label false
	ipgui::add_static_text $ipview -name LabelTID_WidthRange -parent $FIFO_Width_Streaming -text "Range: 1...8"
	ipgui::add_indent $ipview -parent $FIFO_Width_Streaming
	ipgui::add_param  $ipview -parent $FIFO_Width_Streaming -name C_HAS_AXIS_TSTRB 
	ipgui::add_row $ipview -parent $FIFO_Width_Streaming
	ipgui::add_param  $ipview -parent $FIFO_Width_Streaming -name C_HAS_AXIS_TDEST 
	ipgui::add_param  $ipview -parent $FIFO_Width_Streaming -name C_AXIS_TDEST_WIDTH -show_label false
	ipgui::add_static_text $ipview -name LabelTDEST_WidthRange -parent $FIFO_Width_Streaming -text "Range: 1...4"
	ipgui::add_indent $ipview -parent $FIFO_Width_Streaming
	ipgui::add_param  $ipview -parent $FIFO_Width_Streaming -name C_HAS_AXIS_TKEEP
	ipgui::add_row $ipview -parent $FIFO_Width_Streaming
	ipgui::add_param  $ipview -parent $FIFO_Width_Streaming -name C_HAS_AXIS_TUSER
	ipgui::add_param  $ipview -parent $FIFO_Width_Streaming -name C_AXIS_TUSER_WIDTH -show_label false
	ipgui::add_dynamic_text $ipview -name LabelTUSER_WidthRange -parent $FIFO_Width_Streaming -tclproc TUSER_Width_Range_updated
	# ipgui::add_param  $ipview -parent $FIFO_Width_Streaming -name TSTRB_Width -show_label false
	# ipgui::add_static_text $ipview -name LabelTSTRB_WidthRange -parent $FIFO_Width_Streaming -text "LabelTSTRB_WidthRange_updated"
	# ipgui::add_param  $ipview -parent $FIFO_Width_Streaming -name TKEEP_Width -show_label false
	# ipgui::add_static_text $ipview -name LabelTKEEP_WidthRange -parent $FIFO_Width_Streaming -tclproc "LabelTKEEP_WidthRange_updated"
	# ipgui::add_row $ipview -parent $FIFO_Width_Streaming
	# ipgui::add_param  $ipview -parent $FIFO_Width_Streaming -name ENABLE_TREADY


   set_property value 32 $C_S_AXI_DATA_WIDTH
   set_property visible false $C_S_AXI_DATA_WIDTH
   set_property value "0x80000000" $C_BASEADDR
   set_property value "0x80000FFF" $C_HIGHADDR
   set_property value "0x80001000" $C_AXI4_BASEADDR
   set_property value "0x80002FFF" $C_AXI4_HIGHADDR
   set_property visible false $C_BASEADDR
   set_property visible false $C_HIGHADDR
   set_property visible false $C_AXI4_BASEADDR
   set_property visible false $C_AXI4_HIGHADDR
   
   #############TOOL TIPS#########   
   set_property tooltip "Specify the AXI Interface Type." [ipgui::get_paramspec -name C_DATA_INTERFACE_TYPE -of $ipview]
   set_property tooltip "AXI4 Full Interface Data Width value." [ipgui::get_paramspec -name C_S_AXI4_DATA_WIDTH -of $ipview]
   set_property tooltip "AXI4 Full Interface ID Width value." [ipgui::get_paramspec -name C_S_AXI_ID_WIDTH -of $ipview]
   set_property tooltip "Select to Enable Transmit Data Path." [ipgui::get_paramspec -name C_USE_TX_DATA -of $ipview]
   set_property tooltip "Select to Enable Receive Data Path." [ipgui::get_paramspec -name C_USE_RX_DATA -of $ipview]
   set_property tooltip "Select to Enable Transmit Control Path." [ipgui::get_paramspec -name C_USE_TX_CTRL -of $ipview]
   set_property tooltip "Depth of Transmit Data path FIFO." [ipgui::get_paramspec -name C_TX_FIFO_DEPTH -of $ipview]
   set_property tooltip "Transmit Data path FIFO Programmable FULL value." [ipgui::get_paramspec -name C_TX_FIFO_PF_THRESHOLD -of $ipview]
   set_property tooltip "Transmit Data path FIFO Programmable EMPTY value." [ipgui::get_paramspec -name C_TX_FIFO_PE_THRESHOLD -of $ipview]
   set_property tooltip "Select to Enable Cut Through for Transmit FIFO." [ipgui::get_paramspec -name C_USE_TX_CUT_THROUGH -of $ipview]
   set_property tooltip "Depth of Receive Data path FIFO." [ipgui::get_paramspec -name C_RX_FIFO_DEPTH -of $ipview]
   set_property tooltip "Receive Data path FIFO Programmable FULL value." [ipgui::get_paramspec -name C_RX_FIFO_PF_THRESHOLD -of $ipview]
   set_property tooltip "Receive Data path FIFO Programmable EMPTY value." [ipgui::get_paramspec -name C_RX_FIFO_PE_THRESHOLD -of $ipview]
   set_property tooltip "Select to Enable Cut Through for Receive FIFO." [ipgui::get_paramspec -name C_USE_RX_CUT_THROUGH -of $ipview]
   set_property tooltip "Select to Enable TID Ports for AXI Stream Interface." [ipgui::get_paramspec -name C_HAS_AXIS_TID -of $ipview]
   set_property tooltip "Select to Enable TDEST Ports for AXI Stream Interface." [ipgui::get_paramspec -name C_HAS_AXIS_TDEST -of $ipview]
   set_property tooltip "Select to Enable TUSER Ports for AXI Stream Interface." [ipgui::get_paramspec -name C_HAS_AXIS_TUSER -of $ipview]
   set_property tooltip "Select to Enable TSTRB Ports for AXI Stream Interface." [ipgui::get_paramspec -name C_HAS_AXIS_TSTRB -of $ipview]
   set_property tooltip "Select to Enable TKEEP Ports for AXI Stream Interface." [ipgui::get_paramspec -name C_HAS_AXIS_TKEEP -of $ipview]
}

proc TUSER_Width_Range_updated {IpView} {
	set C_S_AXI4_DATA_WIDTH [get_param_value C_S_AXI4_DATA_WIDTH ]
	return "Range: [expr 1*($C_S_AXI4_DATA_WIDTH/8)]...[expr 4*($C_S_AXI4_DATA_WIDTH/8)]"
}

proc C_S_AXI4_DATA_WIDTH_updated {IpView} {
	updateOf_C_AXIS_TUSER_WIDTH $IpView
}

proc validate_Component_Name {ipview } {
   set errStr [ipgui::component_validate [get_param_value Component_Name ] ]
   if  { $errStr == "" } { 
		return true 
	} else { 
		set_property errmsg $errStr  [ipgui::get_paramspec Component_Name   -of  $ipview ]
		return false 
	}
}

proc validate_C_USE_TX_DATA {ipview } {
   set tx_val [get_param_value  C_USE_TX_DATA]
   set rx_val [get_param_value  C_USE_RX_DATA]
   if  { $tx_val == 0 && $rx_val == 0} { 
		set_property errmsg "Either TX or RX has to be enabled to use the IP" [ipgui::get_paramspec C_USE_TX_DATA -of $ipview ]
		return false 
	} else { 
		return true 
	}
}

proc validate_C_USE_RX_DATA {ipview } {
   set tx_val [get_param_value  C_USE_TX_DATA]
   set rx_val [get_param_value  C_USE_RX_DATA]
   if  { $tx_val == 0 && $rx_val == 0} { 
		set_property errmsg "Either TX or RX has to be enabled to use the IP" [ipgui::get_paramspec C_USE_RX_DATA -of $ipview ]
		return false 
	} else { 
		return true 
	}
}

proc C_BASEADDR_updated {ipview} {
# Procedure called when BASEADDR is updated
	return true
}

proc validate_C_BASEADDR {ipview} {
 #Procedure called to validate BASEADDR
set BASEADDR  [get_param_value  C_BASEADDR   ]
set a "NA"
regexp {(^0x)} $BASEADDR a
if { $a == "NA" } {
set_property errmsg "Entered invalid Hexadecimal value $BASEADDR, Hexadecimal value should start with 0x" [ipgui::get_paramspec C_BASEADDR -of $ipview ]
     return false
      }
   if { [regexp -all {[a-xA-F0-9]} $BASEADDR] != [ string length  $BASEADDR]} {
     set_property errmsg "Entered invalid Hexadecimal value $BASEADDR" [ipgui::get_paramspec C_BASEADDR -of $ipview ]
     return false
       }
     if {[ string length  $BASEADDR] > 10} {
       set_property errmsg "Entered invalid Hexadecimal value $BASEADDR" [ipgui::get_paramspec C_BASEADDR -of  $ipview ]
       return false
     }
    if {$BASEADDR  == ""} {
      set_property errmsg "Value cannot be empty" [ipgui::get_paramspec C_BASEADDR  -of $ipview ]
      return false
      }
    if {[expr 0xFFFFF001 ] < [expr $BASEADDR ] ||  [expr $BASEADDR ] < 0} {
      set_property errmsg "Invalid Hexadecimal value $BASEADDR: Out of range." [ipgui::get_paramspec C_BASEADDR -of  $ipview ]
      return false
      }
       ##return true
    return true
}

proc validate_C_AXI4_BASEADDR {ipview} {
 #Procedure called to validate C_AXI4_BASEADDR
set C_AXI4_BASEADDR  [get_param_value  C_AXI4_BASEADDR   ]
set a "NA"
regexp {(^0x)} $C_AXI4_BASEADDR a
if { $a == "NA" } {
set_property errmsg "Entered invalid Hexadecimal value $C_AXI4_BASEADDR, Hexadecimal value should start with 0x" [ipgui::get_paramspec C_AXI4_BASEADDR -of $ipview ]
     return false
      }
   if { [regexp -all {[a-xA-F0-9]} $C_AXI4_BASEADDR] != [ string length  $C_AXI4_BASEADDR]} {
     set_property errmsg "Entered invalid Hexadecimal value $C_AXI4_BASEADDR" [ipgui::get_paramspec C_AXI4_BASEADDR -of $ipview ]
     return false
       }
     if {[ string length  $C_AXI4_BASEADDR] > 10} {
       set_property errmsg "Entered invalid Hexadecimal value $C_AXI4_BASEADDR" [ipgui::get_paramspec C_AXI4_BASEADDR -of  $ipview ]
       return false
     }
    if {$C_AXI4_BASEADDR  == ""} {
      set_property errmsg "Value cannot be empty" [ipgui::get_paramspec C_AXI4_BASEADDR  -of $ipview ]
      return false
      }
    if {[expr 0xFFFFF001 ] < [expr $C_AXI4_BASEADDR ] ||  [expr $C_AXI4_BASEADDR ] < 0} {
      set_property errmsg "Invalid Hexadecimal value $C_AXI4_BASEADDR: Out of range." [ipgui::get_paramspec $C_AXI4_BASEADDR -of  $ipview ]
      return false
      }
       ##return true
    return true
}

proc C_HAS_AXIS_TUSER_updated {IpView} {
	updateOf_C_AXIS_TUSER_WIDTH	$IpView
}

proc C_HAS_AXIS_TDEST_updated {IpView} {
	
	set TDEST_Width [ipgui::get_paramspec C_AXIS_TDEST_WIDTH -of $IpView]
	if {[get_param_value    C_HAS_AXIS_TDEST  ] == true } {
		set_property enabled true $TDEST_Width 
	} else {
		set_property value [get_property default_value $TDEST_Width] $TDEST_Width 
		set_property enabled false $TDEST_Width 
	}	
}

proc C_HAS_AXIS_TID_updated {IpView} {
	
	set TID_Width [ipgui::get_paramspec C_AXIS_TID_WIDTH -of $IpView]
	if {[get_param_value    C_HAS_AXIS_TID  ] == true } {
		set_property enabled true $TID_Width 
	} else {
		set_property value [get_property default_value $TID_Width] $TID_Width 
		set_property enabled false $TID_Width 
	}	
}

proc updateOf_C_AXIS_TUSER_WIDTH {IpView} {
	
	set C_S_AXI4_DATA_WIDTH [get_param_value C_S_AXI4_DATA_WIDTH]
	set C_AXIS_TUSER_WIDTH [ipgui::get_paramspec C_AXIS_TUSER_WIDTH -of $IpView]
	if {$C_S_AXI4_DATA_WIDTH == "32"} {
		set_property range_value "4,4,16" $C_AXIS_TUSER_WIDTH
	} elseif {$C_S_AXI4_DATA_WIDTH == "64"} {
		set_property range_value "8,8,32" $C_AXIS_TUSER_WIDTH
	} elseif {$C_S_AXI4_DATA_WIDTH == "128"} {
		set_property range_value "16,16,64" $C_AXIS_TUSER_WIDTH
	} elseif {$C_S_AXI4_DATA_WIDTH == "256"} {
		set_property range_value "32,32,128" $C_AXIS_TUSER_WIDTH
	} else {
		set_property range_value "64,64,256" $C_AXIS_TUSER_WIDTH
	}
	
	if {[get_param_value    C_HAS_AXIS_TUSER  ] == true } {
		set_property enabled true $C_AXIS_TUSER_WIDTH 
	} else {
		set_property enabled false $C_AXIS_TUSER_WIDTH 
	}	
}

proc HIGHADDR_updated {ipview} {
# Procedure called when HIGHADDR is updated
	return true
}

proc validate_C_HIGHADDR {ipview} {
# Procedure called to validate HIGHADDR
set BASEADDR  [get_param_value  C_BASEADDR   ]

    set HIGHADDR  [get_param_value  C_HIGHADDR	]
      set b "NA"
   regexp {(^0x)} $HIGHADDR b
   if { $b == "NA" } {
   set_property errmsg "Entered invalid Hexadecimal value $HIGHADDR, Hexadecimal value should start with 0x" [ipgui::get_paramspec C_HIGHADDR -of $ipview ]
     return false
       }
    if { [regexp -all {[a-xA-F0-9]} $HIGHADDR] != [ string length  $HIGHADDR]} {
    set_property errmsg "Entered invalid Hexadecimal value $HIGHADDR" [ipgui::get_paramspec C_HIGHADDR -of  $ipview ]
    return false
      }
    if {[ string length  $HIGHADDR] > 10} {
      set_property errmsg "Entered invalid Hexadecimal value $HIGHADDR" [ipgui::get_paramspec C_HIGHADDR -of	$ipview ]
      return false
    }
   if {$HIGHADDR  == ""} {
     set_property errmsg "Value cannot be empty" [ipgui::get_paramspec C_HIGHADDR  -of $ipview ]
     return false
     }
   if {[expr 0xFFFFFFFF ] < [expr $HIGHADDR ] ||  [expr $HIGHADDR ] < 0} {
     set_property errmsg "Invalid Hexadecimal value $HIGHADDR: Out of range." [ipgui::get_paramspec C_HIGHADDR -of  $ipview ]
     return false
     }
   if {[expr $BASEADDR+0x00000FFF ] > [expr $HIGHADDR ]} {
   set_property errmsg "HIGHADDR is required to be at least 4096 more than BASEADDR, because AXI requires a core to have a minimum 4k address space: Out of range." [ipgui::get_paramspec C_HIGHADDR -of  $ipview ]
    return false
     }
    return true
}

proc validate_C_AXI4_HIGHADDR {ipview} {
# Procedure called to validate HIGHADDR
set C_AXI4_BASEADDR  [get_param_value  C_AXI4_BASEADDR   ]

    set C_AXI4_HIGHADDR  [get_param_value  C_AXI4_HIGHADDR	]
      set b "NA"
   regexp {(^0x)} $C_AXI4_HIGHADDR b
   if { $b == "NA" } {
   set_property errmsg "Entered invalid Hexadecimal value $C_AXI4_HIGHADDR, Hexadecimal value should start with 0x" [ipgui::get_paramspec C_AXI4_HIGHADDR -of $ipview ]
     return false
       }
    if { [regexp -all {[a-xA-F0-9]} $C_AXI4_HIGHADDR] != [ string length  $C_AXI4_HIGHADDR]} {
    set_property errmsg "Entered invalid Hexadecimal value $C_AXI4_HIGHADDR" [ipgui::get_paramspec C_AXI4_HIGHADDR -of  $ipview ]
    return false
      }
    if {[ string length  $C_AXI4_HIGHADDR] > 10} {
      set_property errmsg "Entered invalid Hexadecimal value $C_AXI4_HIGHADDR" [ipgui::get_paramspec C_AXI4_HIGHADDR -of	$ipview ]
      return false
    }
   if {$C_AXI4_HIGHADDR  == ""} {
     set_property errmsg "Value cannot be empty" [ipgui::get_paramspec C_AXI4_HIGHADDR  -of $ipview ]
     return false
     }
   if {[expr 0xFFFFFFFF ] < [expr $C_AXI4_HIGHADDR ] ||  [expr $C_AXI4_HIGHADDR ] < 0} {
     set_property errmsg "Invalid Hexadecimal value $C_AXI4_HIGHADDR: Out of range." [ipgui::get_paramspec C_AXI4_HIGHADDR -of  $ipview ]
     return false
     }
   if {[expr $C_AXI4_BASEADDR+0x00001FFF ] > [expr $C_AXI4_HIGHADDR ]} {
   set_property errmsg "AXI4_HIGHADDR is required to be at least 8192 more than AXI4_BASEADDR, because TDFD OFFSET is at 0x0000 and RDFD OFFSET is at 0x1000.: Out of range." [ipgui::get_paramspec C_AXI4_HIGHADDR -of  $ipview ]
    return false
     }
    return true
}

proc C_S_AXI_PROTOCOL_updated {ipview} {
set_property visible false [ipgui::get_paramspec -name C_S_AXI_PROTOCOL -of $ipview ]
# Procedure called when C_S_AXI_PROTOCOL is updated
	return true
}

proc validate_C_S_AXI_PROTOCOL {ipview} {
# Procedure called to validate C_S_AXI_PROTOCOL
	return true
}

proc C_AXI_STR_TXC_PROTOCOL_updated {ipview} {
set_property visible false [ipgui::get_paramspec -name C_AXI_STR_TXC_PROTOCOL -of $ipview ]
# Procedure called when C_AXI_STR_TXC_PROTOCOL is updated
	return true
}

proc validate_C_AXI_STR_TXC_PROTOCOL {ipview} {
# Procedure called to validate C_AXI_STR_TXC_PROTOCOL
	return true
}

proc C_AXI_STR_TXD_PROTOCOL_updated {ipview} {
# Procedure called when C_AXI_STR_TXD_PROTOCOL is updated
set_property visible false [ipgui::get_paramspec -name C_AXI_STR_TXD_PROTOCOL -of $ipview ]
	return true
}

proc validate_C_AXI_STR_TXD_PROTOCOL {ipview} {
# Procedure called to validate C_AXI_STR_TXD_PROTOCOL
	return true
}

proc C_AXI_STR_RXD_PROTOCOL_updated {ipview} {
set_property visible false [ipgui::get_paramspec -name C_AXI_STR_RXD_PROTOCOL -of $ipview ]
# Procedure called when C_AXI_STR_RXD_PROTOCOL is updated
	return true
}

proc validate_C_AXI_STR_RXD_PROTOCOL {ipview} {
# Procedure called to validate C_AXI_STR_RXD_PROTOCOL
	return true
}

proc C_S_AXI_ID_WIDTH_updated {ipview} {
# Procedure called when C_S_AXI_ID_WIDTH is updated
	return true
}

proc validate_C_S_AXI_ID_WIDTH {ipview} {
# Procedure called to validate C_S_AXI_ID_WIDTH
	return true
}

proc C_TX_FIFO_DEPTH_updated {ipview} {
   set_property range "2,[expr [get_param_value C_TX_FIFO_DEPTH] - 10]" [ipgui::get_paramspec C_TX_FIFO_PE_THRESHOLD -of $ipview]
   set_property range "10,[expr [get_param_value C_TX_FIFO_DEPTH] - 5]" [ipgui::get_paramspec C_TX_FIFO_PF_THRESHOLD -of $ipview]
}

proc C_RX_FIFO_DEPTH_updated {ipview} {
   set_property range "2,[expr [get_param_value C_RX_FIFO_DEPTH] - 10]" [ipgui::get_paramspec C_RX_FIFO_PE_THRESHOLD -of $ipview]
   set_property range "10,[expr [get_param_value C_RX_FIFO_DEPTH] - 5]" [ipgui::get_paramspec C_RX_FIFO_PF_THRESHOLD -of $ipview]
}

proc C_DATA_INTERFACE_TYPE_updated {ipview} {
# Procedure called when C_DATA_INTERFACE_TYPE is updated
    set intf_type [get_param_value C_DATA_INTERFACE_TYPE]
    set data_wid  [ipgui::get_paramspec C_S_AXI4_DATA_WIDTH	-of	$ipview ]
    set AXI_ID_Width  [ipgui::get_paramspec C_S_AXI_ID_WIDTH	-of	$ipview ]

    if {$intf_type == 1} {
      set_property visible true $data_wid
      set_property enabled true $data_wid    
	  set_property visible true $AXI_ID_Width
      set_property enabled true $AXI_ID_Width
    } else {
      set_property visible false $data_wid
      set_property value 32 $data_wid
      set_property enabled false $data_wid  
	  set_property visible false $AXI_ID_Width
      set_property value 4 $AXI_ID_Width
      set_property enabled false $AXI_ID_Width
    }
}

proc updatesBasedOnC_USE_TX_DATA_C_USE_RX_DATA {ipview} {

	set en_tx_data [get_param_value C_USE_TX_DATA]
	set en_rx_data [get_param_value C_USE_RX_DATA]
	set tx_fifo_depth [ipgui::get_paramspec C_TX_FIFO_DEPTH -of	$ipview ]
	set tx_pf_thresh [ipgui::get_paramspec C_TX_FIFO_PF_THRESHOLD -of	$ipview ]
	set tx_pe_thresh [ipgui::get_paramspec C_TX_FIFO_PE_THRESHOLD -of	$ipview ]
	set tx_cut_throuth [ipgui::get_paramspec C_USE_TX_CUT_THROUGH -of	$ipview ]
	set tx_ctrl [ipgui::get_paramspec C_USE_TX_CTRL -of	$ipview ]

	if {$en_tx_data == 1} {
		set_property enabled true $tx_fifo_depth
		set_property enabled true $tx_pf_thresh
		set_property enabled true $tx_pe_thresh
		set_property enabled true $tx_cut_throuth
		set_property enabled true $tx_ctrl
	} else {
		set_property value [get_property default_value $tx_fifo_depth] $tx_fifo_depth
		set_property value [get_property default_value $tx_pf_thresh] $tx_pf_thresh
		set_property value [get_property default_value $tx_pe_thresh] $tx_pe_thresh
		set_property value [get_property default_value $tx_cut_throuth] $tx_cut_throuth
		set_property value 0 $tx_ctrl
		set_property enabled false $tx_fifo_depth
		set_property enabled false $tx_pf_thresh
		set_property enabled false $tx_pe_thresh
		set_property enabled false $tx_cut_throuth
		set_property enabled false $tx_ctrl
	}
	
	set rx_fifo_depth [ipgui::get_paramspec C_RX_FIFO_DEPTH -of	$ipview ]
	set rx_pf_thresh [ipgui::get_paramspec C_RX_FIFO_PF_THRESHOLD -of	$ipview ]
	set rx_pe_thresh [ipgui::get_paramspec C_RX_FIFO_PE_THRESHOLD -of	$ipview ]
	set rx_cut_throuth [ipgui::get_paramspec C_USE_RX_CUT_THROUGH -of	$ipview ]

	if {$en_rx_data == 1} {
		set_property enabled true $rx_fifo_depth
		set_property enabled true $rx_pf_thresh
		set_property enabled true $rx_pe_thresh
		set_property enabled true $rx_cut_throuth
	} else {
		set_property value [get_property default_value $rx_fifo_depth] $rx_fifo_depth
		set_property value [get_property default_value $rx_pf_thresh] $rx_pf_thresh
		set_property value [get_property default_value $rx_pe_thresh] $rx_pe_thresh
		set_property value [get_property default_value $rx_cut_throuth] $rx_cut_throuth  
		set_property enabled false $rx_fifo_depth
		set_property enabled false $rx_pf_thresh
		set_property enabled false $rx_pe_thresh
		set_property enabled false $rx_cut_throuth
	}

 	if {$en_tx_data == 0 && $en_rx_data == 0} {
		set_property value [get_property default_value [ipgui::get_paramspec C_HAS_AXIS_TID -of $ipview]] [ipgui::get_paramspec C_HAS_AXIS_TID -of	$ipview ]
		set_property value [get_property default_value [ipgui::get_paramspec C_AXIS_TID_WIDTH -of $ipview]] [ipgui::get_paramspec C_AXIS_TID_WIDTH -of	$ipview ]
		set_property value [get_property default_value [ipgui::get_paramspec C_HAS_AXIS_TSTRB -of $ipview]] [ipgui::get_paramspec C_HAS_AXIS_TSTRB -of	$ipview ]
		set_property value [get_property default_value [ipgui::get_paramspec C_HAS_AXIS_TDEST -of $ipview]] [ipgui::get_paramspec C_HAS_AXIS_TDEST -of	$ipview ]
		set_property value [get_property default_value [ipgui::get_paramspec C_AXIS_TDEST_WIDTH -of $ipview]] [ipgui::get_paramspec C_AXIS_TDEST_WIDTH -of	$ipview ]
		set_property value [get_property default_value [ipgui::get_paramspec C_HAS_AXIS_TKEEP -of $ipview]] [ipgui::get_paramspec C_HAS_AXIS_TKEEP -of	$ipview ]
		set_property value [get_property default_value [ipgui::get_paramspec C_HAS_AXIS_TUSER -of $ipview]] [ipgui::get_paramspec C_HAS_AXIS_TUSER -of	$ipview ]
		set_property value [get_property default_value [ipgui::get_paramspec C_AXIS_TUSER_WIDTH -of $ipview]] [ipgui::get_paramspec C_AXIS_TUSER_WIDTH -of	$ipview ]

		set_property enabled false [ipgui::get_paramspec C_HAS_AXIS_TID -of	$ipview ]
		#set_property enabled false [ipgui::get_paramspec C_AXIS_TID_WIDTH -of	$ipview ]
		set_property enabled false [ipgui::get_paramspec C_HAS_AXIS_TSTRB -of	$ipview ]
		set_property enabled false [ipgui::get_paramspec C_HAS_AXIS_TDEST -of	$ipview ]
		#set_property enabled false [ipgui::get_paramspec C_AXIS_TDEST_WIDTH -of	$ipview ]
		set_property enabled false [ipgui::get_paramspec C_HAS_AXIS_TKEEP -of	$ipview ]
		set_property enabled false [ipgui::get_paramspec C_HAS_AXIS_TUSER -of	$ipview ]
		#set_property enabled false [ipgui::get_paramspec C_AXIS_TUSER_WIDTH -of	$ipview ]
		set_property enabled false [ipgui::get_textspec LabelTID_WidthRange -of	$ipview ]
		set_property enabled false [ipgui::get_textspec LabelTDEST_WidthRange -of	$ipview ]
		set_property enabled false [ipgui::get_textspec LabelTUSER_WidthRange -of	$ipview ]
	} else {
		set_property enabled true [ipgui::get_paramspec C_HAS_AXIS_TID -of	$ipview ]
		#set_property enabled true [ipgui::get_paramspec C_AXIS_TID_WIDTH -of	$ipview ]	
		set_property enabled true [ipgui::get_paramspec C_HAS_AXIS_TSTRB -of	$ipview ]
		set_property enabled true [ipgui::get_paramspec C_HAS_AXIS_TDEST -of	$ipview ]
		# set_property enabled true [ipgui::get_paramspec C_AXIS_TDEST_WIDTH -of	$ipview ]
		set_property enabled true [ipgui::get_paramspec C_HAS_AXIS_TKEEP -of	$ipview ]
		set_property enabled true [ipgui::get_paramspec C_HAS_AXIS_TUSER -of	$ipview ]
		#set_property enabled true [ipgui::get_paramspec C_AXIS_TUSER_WIDTH -of	$ipview ]
		set_property enabled true [ipgui::get_textspec LabelTID_WidthRange -of	$ipview ]
		set_property enabled true [ipgui::get_textspec LabelTDEST_WidthRange -of	$ipview ]
		set_property enabled true [ipgui::get_textspec LabelTUSER_WidthRange -of	$ipview ]
	}
}

proc C_USE_TX_DATA_updated {ipview} {
	updatesBasedOnC_USE_TX_DATA_C_USE_RX_DATA $ipview
}

proc C_USE_RX_DATA_updated {ipview} {
	updatesBasedOnC_USE_TX_DATA_C_USE_RX_DATA $ipview
}

proc updateModel_C_FAMILY {IpView} {
	variable c_family
	set_property modelparam_value $c_family [ipgui::get_modelparamspec -name C_FAMILY -of $IpView]
}

proc updateModel_C_S_AXI_ID_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
   if {[get_property value [ipgui::get_paramspec C_S_AXI_ID_WIDTH -of $ipview ]] == 0} {
       set val 1
   } else {
       set val [get_property value [ipgui::get_paramspec C_S_AXI_ID_WIDTH -of $ipview ]]
   }

	set_property modelparam_value $val [ipgui::get_modelparamspec C_S_AXI_ID_WIDTH -of $ipview ]
}

proc updateModel_C_S_AXI_ADDR_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value 32 [ipgui::get_modelparamspec C_S_AXI_ADDR_WIDTH -of $ipview ]

	return true
}

proc updateModel_C_S_AXI_DATA_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value 32 [ipgui::get_modelparamspec C_S_AXI_DATA_WIDTH -of $ipview ]

	return true
}

proc updateModel_C_S_AXI4_DATA_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_S_AXI4_DATA_WIDTH -of $ipview ]] [ipgui::get_modelparamspec C_S_AXI4_DATA_WIDTH -of $ipview ]

	return true
}

proc updateModel_C_BASEADDR {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_BASEADDR -of $ipview ]] [ipgui::get_modelparamspec C_BASEADDR -of $ipview ]

	return true
}

proc updateModel_C_HIGHADDR {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_HIGHADDR -of $ipview ]] [ipgui::get_modelparamspec C_HIGHADDR -of $ipview ]

	return true
}

proc updateModel_C_AXI4_BASEADDR {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_AXI4_BASEADDR -of $ipview ]] [ipgui::get_modelparamspec C_AXI4_BASEADDR -of $ipview ]

	return true
}

proc updateModel_C_AXI4_HIGHADDR {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_AXI4_HIGHADDR -of $ipview ]] [ipgui::get_modelparamspec C_AXI4_HIGHADDR -of $ipview ]

	return true
}

proc updateModel_C_TX_FIFO_DEPTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_TX_FIFO_DEPTH -of $ipview ]] [ipgui::get_modelparamspec C_TX_FIFO_DEPTH -of $ipview ]

}

proc updateModel_C_SELECT_XPM {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_SELECT_XPM] [ipgui::get_modelparamspec C_SELECT_XPM -of $ipview ]    
	return true

}

proc updateModel_C_TX_FIFO_PE_THRESHOLD {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_TX_FIFO_PE_THRESHOLD -of $ipview ]] [ipgui::get_modelparamspec C_TX_FIFO_PE_THRESHOLD -of $ipview ]

}

proc updateModel_C_TX_FIFO_PF_THRESHOLD {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_TX_FIFO_PF_THRESHOLD -of $ipview ]] [ipgui::get_modelparamspec C_TX_FIFO_PF_THRESHOLD -of $ipview ]

}

proc updateModel_C_RX_FIFO_DEPTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_RX_FIFO_DEPTH -of $ipview ]] [ipgui::get_modelparamspec C_RX_FIFO_DEPTH -of $ipview ]

}

proc updateModel_C_RX_FIFO_PE_THRESHOLD {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_RX_FIFO_PE_THRESHOLD -of $ipview ]] [ipgui::get_modelparamspec C_RX_FIFO_PE_THRESHOLD -of $ipview ]

}

proc updateModel_C_RX_FIFO_PF_THRESHOLD {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_RX_FIFO_PF_THRESHOLD -of $ipview ]] [ipgui::get_modelparamspec C_RX_FIFO_PF_THRESHOLD -of $ipview ]

}

proc updateModel_C_USE_TX_CUT_THROUGH {ipview} {
    	#if {[get_param_value  C_USE_TX_CUT_THROUGH ] == "true"} {set value 1} else {set value 0}
	set_property modelparam_value [get_property value [ipgui::get_paramspec C_USE_TX_CUT_THROUGH -of $ipview ]] [ipgui::get_modelparamspec C_USE_TX_CUT_THROUGH -of $ipview]
}

proc updateModel_C_USE_RX_CUT_THROUGH {ipview} {
    	if {[get_param_value  C_USE_RX_CUT_THROUGH ] == true} {set value 1} else {set value 0}
	set_property modelparam_value $value [ipgui::get_modelparamspec C_USE_RX_CUT_THROUGH -of $ipview]
}

proc updateModel_C_DATA_INTERFACE_TYPE {ipview} {
    	#if {[get_param_value  C_DATA_INTERFACE_TYPE ] == "true"} {set value 1} else {set value 0}
	set_property modelparam_value [get_property value [ipgui::get_paramspec C_DATA_INTERFACE_TYPE -of $ipview ]] [ipgui::get_modelparamspec C_DATA_INTERFACE_TYPE -of $ipview]
}

proc updateModel_C_AXIS_TID_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_param_value   C_AXIS_TID_WIDTH  ]   [ipgui::get_modelparamspec C_AXIS_TID_WIDTH -of $ipview ]

	return true
}

proc updateModel_C_AXIS_TDEST_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value  [get_param_value    C_AXIS_TDEST_WIDTH ]  [ipgui::get_modelparamspec C_AXIS_TDEST_WIDTH -of $ipview ]

	return true
}

proc updateModel_C_AXIS_TUSER_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_param_value    C_AXIS_TUSER_WIDTH ] [ipgui::get_modelparamspec C_AXIS_TUSER_WIDTH -of $ipview ]

	return true
}

proc updateModel_C_HAS_AXIS_TID {ipview} {
    	if {[get_param_value  C_HAS_AXIS_TID ] == true} {set value 1} else {set value 0}
	set_property modelparam_value $value [ipgui::get_modelparamspec C_HAS_AXIS_TID -of $ipview]
}

proc updateModel_C_HAS_AXIS_TDEST {ipview} {
    	if {[get_param_value  C_HAS_AXIS_TDEST ] == true} {set value 1} else {set value 0}
	set_property modelparam_value $value [ipgui::get_modelparamspec C_HAS_AXIS_TDEST -of $ipview]
}

proc updateModel_C_HAS_AXIS_TUSER {ipview} {
    	if {[get_param_value  C_HAS_AXIS_TUSER ] == true} {set value 1} else {set value 0}
	set_property modelparam_value $value [ipgui::get_modelparamspec C_HAS_AXIS_TUSER -of $ipview]
}

proc updateModel_C_HAS_AXIS_TSTRB {ipview} {
    	if {[get_param_value  C_HAS_AXIS_TSTRB ] == true} {set value 1} else {set value 0}
	set_property modelparam_value $value [ipgui::get_modelparamspec C_HAS_AXIS_TSTRB -of $ipview]
}

proc updateModel_C_HAS_AXIS_TKEEP {ipview} {
    	if {[get_param_value  C_HAS_AXIS_TKEEP ] == true} {set value 1} else {set value 0}
	set_property modelparam_value $value [ipgui::get_modelparamspec C_HAS_AXIS_TKEEP -of $ipview]
}

proc updateModel_C_USE_TX_DATA {ipview} {
	set_property modelparam_value [get_param_value  C_USE_TX_DATA ] [ipgui::get_modelparamspec C_USE_TX_DATA -of $ipview]
}

proc updateModel_C_USE_RX_DATA {ipview} {
	set_property modelparam_value [get_param_value  C_USE_RX_DATA ] [ipgui::get_modelparamspec C_USE_RX_DATA -of $ipview]
}

proc updateModel_C_USE_TX_CTRL {ipview} {
	set_property modelparam_value [get_param_value  C_USE_TX_CTRL ] [ipgui::get_modelparamspec C_USE_TX_CTRL -of $ipview]
}
