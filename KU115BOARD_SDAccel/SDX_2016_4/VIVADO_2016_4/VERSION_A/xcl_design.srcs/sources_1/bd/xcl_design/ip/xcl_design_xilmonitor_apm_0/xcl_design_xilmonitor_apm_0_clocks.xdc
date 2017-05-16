
# file: xcl_design_xilmonitor_apm_0_clocks.xdc
# (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
# 
# This file contains confidential and proprietary information
# of Xilinx, Inc. and is protected under U.S. and
# international copyright and other intellectual property
# laws.
# 
# DISCLAIMER
# This disclaimer is not a license and does not grant any
# rights to the materials distributed herewith. Except as
# otherwise provided in a valid license issued to you by
# Xilinx, and to the maximum extent permitted by applicable
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
# (2) Xilinx shall not be liable (whether in contract or tort,
# including negligence, or under any other theory of
# liability) for any loss or damage of any kind or nature
# related to, arising under or in connection with these
# materials, including for any direct, or any indirect,
# special, incidental, or consequential loss or damage
# (including loss of data, profits, goodwill, or any type of
# loss or damage suffered as a result of any action brought
# by a third party) even if such damage or loss was
# reasonably foreseeable or Xilinx had been advised of the
# possibility of the same.
# 
# CRITICAL APPLICATIONS
# Xilinx products are not designed or intended to be fail-
# safe, or for use in any application requiring fail-safe
# performance, such as life-support or safety devices or
# systems, Class III medical devices, nuclear facilities,
# applications related to the deployment of airbags, or any
# other applications that could lead to death, personal
# injury, or severe property or environmental damage
# (individually and collectively, "Critical
# Applications"). Customer assumes the sole risk and
# liability of any use of Xilinx products in Critical
# Applications, subject only to applicable laws and
# regulations governing limitations on product liability.
# 
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
# PART OF THIS FILE AT ALL TIMES.


## axi4_lite interface and core_clock false path
## This constraint applies with cdc_module
set s_axi_aclk       [get_clocks -of_objects [get_ports s_axi_aclk]]
set core_aclk         [get_clocks -of_objects [get_ports core_aclk]]
set_false_path -from [get_cells -hier *_CDC* -filter {IS_SEQUENTIAL}] -to $core_aclk
set_false_path -from [get_cells -hier *_CDCR* -filter {IS_SEQUENTIAL}] -to $s_axi_aclk
 set core_rd_clock          [get_clocks -of_objects [get_ports core_aclk]]

#slot0 to core clock
 
   set slot0_wr_clock         [get_clocks -of_objects [get_ports slot_0_axi_aclk]]
 # Ignore paths from the write clock to the read data registers for Asynchronous Distributed RAM based FIFO
 set_false_path -from [filter [all_fanout -from [get_ports slot_0_axi_aclk] -flat -endpoints_only] {IS_LEAF}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm*/gpr1.dout_i_reg[*]}]
 ##set core_rd_clock          [get_clocks -of_objects [get_ports core_aclk]]



 # Set max delay on cross clock domain path for Block/Distributed RAM based FIFO
 set_max_delay -from [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[*].wr_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property  -min PERIOD $core_rd_clock]
 set_max_delay -from [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*wr_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[*].rd_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property  -min PERIOD $slot0_wr_clock]
 set rd_clk [get_property -min PERIOD $core_rd_clock]
set wr_clk [get_property -min PERIOD $slot0_wr_clock]
set skew_value [expr {(($wr_clk < $rd_clk) ? $wr_clk : $rd_clk)} ]

            set_bus_skew -from [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]}] $skew_value
set_bus_skew -from [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]}] $skew_value

   # External events to core clock
   set ext_clock0         [get_clocks -of_objects [get_ports ext_clk_0]]
   # Ignore paths from the write clock to the read data registers for Asynchronous Distributed RAM based FIFO
   set_false_path -from [filter [all_fanout -from [get_ports ext_clk_0] -flat -endpoints_only] {IS_LEAF}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm*/gpr1.dout_i_reg[*]}]
   # Set max delay on cross clock domain path for Block/Distributed RAM based FIFO
   set_max_delay -from [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[*].wr_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property  -min PERIOD $core_rd_clock]
   set_max_delay -from [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*wr_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[*].rd_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property  -min PERIOD $ext_clock0]
 set rd_clk [get_property -min PERIOD $core_rd_clock]
set wr_clk [get_property -min PERIOD $ext_clock0]
set skew_value [expr {(($wr_clk < $rd_clk) ? $wr_clk : $rd_clk)} ]

            set_bus_skew -from [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]}] $skew_value
set_bus_skew -from [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]}] $skew_value




 #slot1 to core clock
      set slot1_wr_clock         [get_clocks -of_objects [get_ports slot_1_axi_aclk]]
 # Ignore paths from the write clock to the read data registers for Asynchronous Distributed RAM based FIFO
 set_false_path -from [filter [all_fanout -from [get_ports slot_1_axi_aclk] -flat -endpoints_only] {IS_LEAF}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm*/gpr1.dout_i_reg[*]}]
 ##set core_rd_clock          [get_clocks -of_objects [get_ports core_aclk]]
 # Set max delay on cross clock domain path for Block/Distributed RAM based FIFO
 set_max_delay -from [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[*].wr_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property  -min PERIOD $core_rd_clock]
 set_max_delay -from [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*wr_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[*].rd_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property  -min PERIOD $slot1_wr_clock]
set rd_clk [get_property -min PERIOD $core_rd_clock]
set wr_clk [get_property -min PERIOD $slot1_wr_clock]
set skew_value [expr {(($wr_clk < $rd_clk) ? $wr_clk : $rd_clk)} ]

            set_bus_skew -from [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]}] $skew_value
set_bus_skew -from [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]}] $skew_value
 # External events to core clock
 set ext_clock1         [get_clocks -of_objects [get_ports ext_clk_1]]
 # Ignore paths from the write clock to the read data registers for Asynchronous Distributed RAM based FIFO
 set_false_path -from [filter [all_fanout -from [get_ports ext_clk_1] -flat -endpoints_only] {IS_LEAF}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm*/gpr1.dout_i_reg[*]}]
 # Set max delay on cross clock domain path for Block/Distributed RAM based FIFO
 set_max_delay -from [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[*].wr_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property  -min PERIOD $core_rd_clock]
 set_max_delay -from [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*wr_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[*].rd_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property  -min PERIOD $ext_clock1]
set rd_clk [get_property -min PERIOD $core_rd_clock]
set wr_clk [get_property -min PERIOD $ext_clock1]
set skew_value [expr {(($wr_clk < $rd_clk) ? $wr_clk : $rd_clk)} ]

            set_bus_skew -from [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]}] $skew_value
set_bus_skew -from [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]}] $skew_value


 #slot2 to core clock
      set slot2_wr_clock         [get_clocks -of_objects [get_ports slot_2_axi_aclk]]
# Ignore paths from the write clock to the read data registers for Asynchronous Distributed RAM based FIFO
 set_false_path -from [filter [all_fanout -from [get_ports slot_2_axi_aclk] -flat -endpoints_only] {IS_LEAF}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm*/gpr1.dout_i_reg[*]}]
 ##set core_rd_clock          [get_clocks -of_objects [get_ports core_aclk]]
  # Set max delay on cross clock domain path for Block/Distributed RAM based FIFO
 set_max_delay -from [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[*].wr_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property  -min PERIOD $core_rd_clock]
 set_max_delay -from [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*wr_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[*].rd_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property  -min PERIOD $slot2_wr_clock]
set rd_clk [get_property -min PERIOD $core_rd_clock]
set wr_clk [get_property -min PERIOD $slot2_wr_clock]
set skew_value [expr {(($wr_clk < $rd_clk) ? $wr_clk : $rd_clk)} ]

            set_bus_skew -from [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]}] $skew_value
set_bus_skew -from [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]}] $skew_value
 # External events to core clock
 set ext_clock2         [get_clocks -of_objects [get_ports ext_clk_2]]
 # Ignore paths from the write clock to the read data registers for Asynchronous Distributed RAM based FIFO
 set_false_path -from [filter [all_fanout -from [get_ports ext_clk_2] -flat -endpoints_only] {IS_LEAF}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm*/gpr1.dout_i_reg[*]}]
 # Set max delay on cross clock domain path for Block/Distributed RAM based FIFO
 set_max_delay -from [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[*].wr_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property  -min PERIOD $core_rd_clock]
 set_max_delay -from [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*wr_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[*].rd_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property  -min PERIOD $ext_clock2]
set rd_clk [get_property -min PERIOD $core_rd_clock]
set wr_clk [get_property -min PERIOD $ext_clock2]
set skew_value [expr {(($wr_clk < $rd_clk) ? $wr_clk : $rd_clk)} ]

            set_bus_skew -from [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]}] $skew_value
set_bus_skew -from [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]}] $skew_value


 #slot3 to core clock
      set slot3_wr_clock         [get_clocks -of_objects [get_ports slot_3_axi_aclk]]
       # Ignore paths from the write clock to the read data registers for Asynchronous Distributed RAM based FIFO
 set_false_path -from [filter [all_fanout -from [get_ports slot_3_axi_aclk] -flat -endpoints_only] {IS_LEAF}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm*/gpr1.dout_i_reg[*]}]
 ##set core_rd_clock          [get_clocks -of_objects [get_ports core_aclk]]
 # Set max delay on cross clock domain path for Block/Distributed RAM based FIFO
 set_max_delay -from [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[*].wr_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property  -min PERIOD $core_rd_clock]
 set_max_delay -from [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*wr_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[*].rd_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property  -min PERIOD $slot3_wr_clock]
set rd_clk [get_property -min PERIOD $core_rd_clock]
set wr_clk [get_property -min PERIOD $slot3_wr_clock]
set skew_value [expr {(($wr_clk < $rd_clk) ? $wr_clk : $rd_clk)} ]

            set_bus_skew -from [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]}] $skew_value
set_bus_skew -from [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]}] $skew_value
 # External events to core clock
 set ext_clock3         [get_clocks -of_objects [get_ports ext_clk_3]]
 # Ignore paths from the write clock to the read data registers for Asynchronous Distributed RAM based FIFO
 set_false_path -from [filter [all_fanout -from [get_ports ext_clk_3] -flat -endpoints_only] {IS_LEAF}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm*/gpr1.dout_i_reg[*]}]
 # Set max delay on cross clock domain path for Block/Distributed RAM based FIFO
 set_max_delay -from [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[*].wr_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property  -min PERIOD $core_rd_clock]
 set_max_delay -from [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*wr_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[*].rd_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property  -min PERIOD $ext_clock3]
set rd_clk [get_property -min PERIOD $core_rd_clock]
set wr_clk [get_property -min PERIOD $ext_clock3]
set skew_value [expr {(($wr_clk < $rd_clk) ? $wr_clk : $rd_clk)} ]

            set_bus_skew -from [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]}] $skew_value
set_bus_skew -from [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]}] $skew_value

 #slot4 to core clock
      set slot4_wr_clock         [get_clocks -of_objects [get_ports slot_4_axi_aclk]]
      # Ignore paths from the write clock to the read data registers for Asynchronous Distributed RAM based FIFO
 set_false_path -from [filter [all_fanout -from [get_ports slot_4_axi_aclk] -flat -endpoints_only] {IS_LEAF}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm*/gpr1.dout_i_reg[*]}]
 ##set core_rd_clock          [get_clocks -of_objects [get_ports core_aclk]]
  # Set max delay on cross clock domain path for Block/Distributed RAM based FIFO
 set_max_delay -from [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[*].wr_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property  -min PERIOD $core_rd_clock]
 set_max_delay -from [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*wr_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[*].rd_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property  -min PERIOD $slot4_wr_clock]
set rd_clk [get_property -min PERIOD $core_rd_clock]
set wr_clk [get_property -min PERIOD $slot4_wr_clock]
set skew_value [expr {(($wr_clk < $rd_clk) ? $wr_clk : $rd_clk)} ]

            set_bus_skew -from [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]}] $skew_value
set_bus_skew -from [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]}] $skew_value

 # External events to core clock
 set ext_clock4         [get_clocks -of_objects [get_ports ext_clk_4]]
 # Ignore paths from the write clock to the read data registers for Asynchronous Distributed RAM based FIFO
 set_false_path -from [filter [all_fanout -from [get_ports ext_clk_4] -flat -endpoints_only] {IS_LEAF}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm*/gpr1.dout_i_reg[*]}]
 # Set max delay on cross clock domain path for Block/Distributed RAM based FIFO
 set_max_delay -from [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[*].wr_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property  -min PERIOD $core_rd_clock]
 set_max_delay -from [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*wr_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*mon_fifo_*/USE_MON_FIFO.async_fifo_inst/inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[*].rd_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property  -min PERIOD $ext_clock4]
set rd_clk [get_property -min PERIOD $core_rd_clock]
set wr_clk [get_property -min PERIOD $ext_clock4]
set skew_value [expr {(($wr_clk < $rd_clk) ? $wr_clk : $rd_clk)} ]

            set_bus_skew -from [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]}] $skew_value
set_bus_skew -from [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]}] $skew_value




 
