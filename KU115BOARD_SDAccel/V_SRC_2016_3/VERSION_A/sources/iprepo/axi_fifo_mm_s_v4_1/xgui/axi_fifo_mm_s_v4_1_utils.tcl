namespace eval axi_fifo_mm_s_v4_1_utils {

     proc upgrade_from_axi_fifo_mm_s_v4_0 {XcoName} {

       upvar $XcoName xco

       namespace import ::xcoUpgradeLib::*

       removeParameter C_FAMILY xco
       setParameter C_AXI4_BASEADDR 0x80001000 xco
       setParameter C_AXI4_HIGHADDR 0x80002FFF xco
       namespace forget ::xcoUpgradeLib::*
     }

     proc upgrade_from_axi_fifo_mm_s_v3_00_b {XcoName} {

       upvar $XcoName xco

       namespace import ::xcoUpgradeLib::*

       addParameter C_HAS_AXIS_TKEEP 0 xco
       addParameter C_HAS_AXIS_TSTRB 0 xco
       addParameter C_HAS_AXIS_TID 0 xco
       addParameter C_AXIS_TID_WIDTH 4 xco
       addParameter C_HAS_AXIS_TDEST 1 xco
       addParameter C_AXIS_TDEST_WIDTH 4 xco
       addParameter C_HAS_AXIS_TUSER 0 xco
       addParameter C_AXIS_TUSER_WIDTH 4 xco
       addParameter C_USE_RX_CUT_THROUGH 0 xco
  
       if {[getParameter C_RX_FIFO_PF_THRESHOLD xco] > 507} {
         setParameter C_RX_FIFO_PF_THRESHOLD 507 xco
       }
       if {[getParameter C_TX_FIFO_PF_THRESHOLD xco] > 507} {
         setParameter C_TX_FIFO_PF_THRESHOLD 507 xco
       }
       
       removeParameter C_FAMILY xco
       setParameter C_AXI4_BASEADDR 0x80001000 xco
       setParameter C_AXI4_HIGHADDR 0x80002FFF xco

       namespace forget ::xcoUpgradeLib::*
     }

     proc upgrade_from_axi_fifo_mm_s_v3_00_a {XcoName} {

       upvar $XcoName xco

       namespace import ::xcoUpgradeLib::*

       addParameter C_HAS_AXIS_TKEEP 0 xco
       addParameter C_HAS_AXIS_TSTRB 0 xco
       addParameter C_HAS_AXIS_TID 0 xco
       addParameter C_AXIS_TID_WIDTH 4 xco
       addParameter C_HAS_AXIS_TDEST 1 xco
       addParameter C_AXIS_TDEST_WIDTH 4 xco
       addParameter C_HAS_AXIS_TUSER 0 xco
       addParameter C_AXIS_TUSER_WIDTH 4 xco
       addParameter C_USE_RX_CUT_THROUGH 0 xco
     
       if {[getParameter C_RX_FIFO_PF_THRESHOLD xco] > 507} {
         setParameter C_RX_FIFO_PF_THRESHOLD 507 xco
       }
       if {[getParameter C_TX_FIFO_PF_THRESHOLD xco] > 507} {
         setParameter C_TX_FIFO_PF_THRESHOLD 507 xco
       }
 
       addParameter C_S_AXI_ADDR_WIDTH 32 xco
       addParameter C_AXI_STR_TXC_TDATA_WIDTH 32 xco
       addParameter C_AXI_STR_TXD_TDATA_WIDTH 32 xco
       addParameter C_AXI_STR_RXD_TDATA_WIDTH 32 xco
       setParameter C_AXI4_BASEADDR 0x80001000 xco
       setParameter C_AXI4_HIGHADDR 0x80002FFF xco

       namespace forget ::xcoUpgradeLib::*
     }

     proc upgrade_from_axi_fifo_mm_s_v2_01_a {XcoName} {

       upvar $XcoName xco

       namespace import ::xcoUpgradeLib::*

       addParameter C_HAS_AXIS_TKEEP 0 xco
       addParameter C_HAS_AXIS_TSTRB 0 xco
       addParameter C_HAS_AXIS_TID 0 xco
       addParameter C_AXIS_TID_WIDTH 4 xco
       addParameter C_HAS_AXIS_TDEST 1 xco
       addParameter C_AXIS_TDEST_WIDTH 4 xco
       addParameter C_HAS_AXIS_TUSER 0 xco
       addParameter C_AXIS_TUSER_WIDTH 4 xco
       addParameter C_USE_RX_CUT_THROUGH 0 xco

       if {[getParameter C_RX_FIFO_PF_THRESHOLD xco] > 507} {
         setParameter C_RX_FIFO_PF_THRESHOLD 507 xco
       }
       if {[getParameter C_TX_FIFO_PF_THRESHOLD xco] > 507} {
         setParameter C_TX_FIFO_PF_THRESHOLD 507 xco
       }

       addParameter C_DATA_INTERFACE_TYPE 0 xco
       setParameter C_HIGHADDR 0x80000FFF xco
       setParameter C_BASEADDR 0x80000000 xco 
       addParameter C_S_AXI4_DATA_WIDTH 32 xco
       addParameter C_AXI4_BASEADDR 0x80001000 xco
       addParameter C_AXI4_HIGHADDR 0x80002FFF xco       
       addParameter C_S_AXI_ADDR_WIDTH 32 xco
       addParameter C_AXI_STR_TXC_TDATA_WIDTH 32 xco
       addParameter C_AXI_STR_TXD_TDATA_WIDTH 32 xco
       addParameter C_AXI_STR_RXD_TDATA_WIDTH 32 xco

       namespace forget ::xcoUpgradeLib::*
     }

     proc upgrade_from_axi_fifo_mm_s_v2_00_a {XcoName} {

       upvar $XcoName xco

       namespace import ::xcoUpgradeLib::*

       addParameter C_HAS_AXIS_TKEEP 0 xco
       addParameter C_HAS_AXIS_TSTRB 0 xco
       addParameter C_HAS_AXIS_TID 0 xco
       addParameter C_AXIS_TID_WIDTH 4 xco
       addParameter C_HAS_AXIS_TDEST 1 xco
       addParameter C_AXIS_TDEST_WIDTH 4 xco
       addParameter C_HAS_AXIS_TUSER 0 xco
       addParameter C_AXIS_TUSER_WIDTH 4 xco
       addParameter C_USE_RX_CUT_THROUGH 0 xco
       addParameter C_USE_TX_CUT_THROUGH 0 xco
       addParameter C_DATA_INTERFACE_TYPE 0 xco
       addParameter C_RX_FIFO_PE_THRESHOLD 2 xco
       addParameter C_RX_FIFO_PF_THRESHOLD 507 xco
       addParameter C_TX_FIFO_PE_THRESHOLD 2 xco
       addParameter C_TX_FIFO_PF_THRESHOLD 507 xco
       addParameter C_RX_FIFO_DEPTH 512 xco
       addParameter C_TX_FIFO_DEPTH 512 xco
       setParameter C_HIGHADDR 0x80000FFF xco
       setParameter C_BASEADDR 0x80000000 xco
       addParameter C_S_AXI_DATA_WIDTH 32 xco
       addParameter C_S_AXI4_DATA_WIDTH 32 xco
       addParameter C_AXI4_BASEADDR 0x80001000 xco
       addParameter C_AXI4_HIGHADDR 0x80002FFF xco
       addParameter C_S_AXI_ADDR_WIDTH 32 xco
       addParameter C_AXI_STR_TXC_TDATA_WIDTH 32 xco
       addParameter C_AXI_STR_TXD_TDATA_WIDTH 32 xco
       addParameter C_AXI_STR_RXD_TDATA_WIDTH 32 xco

       namespace forget ::xcoUpgradeLib::*
     }     
}
