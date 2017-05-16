proc init {cellpath otherInfo} {
  set cell [get_bd_cells $cellpath]
  bd::mark_propagate_only $cell {C_S_AXI_ID_WIDTH C_AXIS_TID_WIDTH C_HAS_AXIS_TID}
}

proc propagate {cellpath otherInfo} { 

  set ip [get_bd_cells $cellpath]
  set is_axi4 [get_property CONFIG.C_DATA_INTERFACE_TYPE $ip]
  set rx_ct [get_property CONFIG.C_USE_RX_CUT_THROUGH $ip]
  if {$is_axi4 == 1} {
    set bus_axi_if [get_bd_intf_pins $cellpath/S_AXI_FULL]
    set id_wid [get_property CONFIG.ID_WIDTH $bus_axi_if]

    if {$id_wid == 0} {
      set_property CONFIG.C_S_AXI_ID_WIDTH 1 $ip
    } else {
      set_property CONFIG.C_S_AXI_ID_WIDTH $id_wid $ip
    }
  }
  if {$rx_ct} {
    set bus_axis_if [get_bd_intf_pins $cellpath/AXI_STR_RXD]
    set id_tid [get_property CONFIG.TID_WIDTH $bus_axis_if]

    if {$id_tid == 0} {
      set_property CONFIG.C_AXIS_TID_WIDTH 1 $ip
      set_property CONFIG.C_HAS_AXIS_TID 0 $ip
    } else {
      set_property CONFIG.C_HAS_AXIS_TID 1 $ip
      set_property CONFIG.C_AXIS_TID_WIDTH $id_tid $ip
    }
  }
}

proc post_propagate {cellpath otherInfo} { 
   set_base_high $cellpath
}

proc set_base_high {cellpath} {

   #Get the IP
   set ip [get_bd_cells $cellpath]

#until the ipi code stops performing the setting of the
#base and high variables internally in c++, set this
#environment variable to turn it off before setting them from
#tcl
   set  ::env(IPI_SET_BASE_HIGH) FALSE


#place the default values you would like the 
#the unmapped segments to have into a dictionary.
#Note the key is by the name of the segment,
#not the full name and not the name of the
# base/high parameter

set dDefValues [dict create \
MEM0 [list 0x80000000 0x80000FFF] \
MEM1 [list 0x80001000 0x80001FFF]]

    set intf [get_property CONFIG.C_DATA_INTERFACE_TYPE $ip]
   #Get the Slave bif. Use the commented version if your  slave bif uses
   #a non standard naming convention or there is more than one slave bif
   #with slave segments. 
   set vSlvBifs [get_bd_intf_pins -of_object $ip -quiet -filter {Mode == "Slave"}]
   set nSlvBifs [llength $vSlvBifs]

   #Get the slave segments related to the bifs
   set vSlvSegs [get_bd_addr_segs -of_objects $vSlvBifs]
   set nSlvSegs [llength $vSlvSegs]

   foreach slvSeg $vSlvSegs {
        #Get the name of the slave seg.
        set sSlvSeg [get_property name $slvSeg]

#Get the default values for this segment from the dictionary.
        #The convention of setting the base/high to 0xFFFFFFFFF and 
        #0x00000000 is an old EDK convention included here for safety.
        #If all the default values are specified correctly in the dictionary 
        #you can replace the tenary version below with just getting the 
        #values from the dictionary.

        #$set vDefValues [dict get $dDefValues $sSlvSeg]
        set vDefValues [expr [dict exists $dDefValues $sSlvSeg] ? {[dict get $dDefValues $sSlvSeg]} : {[list 0xFFFFFFF 0x00000000]}]

        #Use the ::bd:;addr tcl function to transfer the values from the mapped 
        #segment to the slave segment's base/high parameters
       ::bd::addr::cfg_base_high_of_slv $ip $slvSeg [lindex $vDefValues 0] [lindex $vDefValues 1] 
   }
}

proc post_config_ip {cellpath otherInfo} { 
}
