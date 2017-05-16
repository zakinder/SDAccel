################################################################################
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
#
################################################################################
set prefix {inst_mi_handler/*/gen_fg_fifo*.inst_fg_fifo/inst_fg_fifo}
set wr_pntr_gc_reg {inst_mi_handler/gen_normal_area.inst_fifo_node_payld/gen_fg_fifo.inst_fg_fifo/inst_fg_fifo/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*wr_pntr_gc_reg[0]}
set rd_pntr_gc_reg {inst_mi_handler/gen_normal_area.inst_fifo_node_payld/gen_fg_fifo.inst_fg_fifo/inst_fg_fifo/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[0]}
#------------------------------------------------------------------------------#
#                         Native FIFO Constraints                              #
#------------------------------------------------------------------------------#

set wr_clock          [get_clocks -of_objects [get_cells $wr_pntr_gc_reg]]
set rd_clock          [get_clocks -of_objects [get_cells $rd_pntr_gc_reg]]
set wr_clk_period     [get_property PERIOD $wr_clock]
set rd_clk_period     [get_property PERIOD $rd_clock]
set skew_value [expr {(($wr_clk_period < $rd_clk_period) ? $wr_clk_period : $rd_clk_period)} ]

# Ignore paths from the write clock to the read data registers for Asynchronous Distributed RAM based FIFO
set mclk_rams [get_cells -hierarchical -regexp -filter {(PRIMITIVE_SUBGROUP == dram || PRIMITIVE_SUBGROUP == LUTRAM) && NAME =~ .*inst_mi_handler.*}]
set_false_path -from [get_pins -of $mclk_rams -filter {REF_PIN_NAME == CLK}] -through [get_pins -of $mclk_rams -filter {REF_PIN_NAME == O}]


# Set max delay on cross clock domain path for Block/Distributed RAM based FIFO

set_max_delay -from [get_cells ${prefix}/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]] -to [get_cells ${prefix}/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD $rd_clock]
set_bus_skew -from  [get_cells ${prefix}/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]] -to [get_cells ${prefix}/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]] $skew_value

set_max_delay -from [get_cells ${prefix}/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*wr_pntr_gc_reg[*]] -to [get_cells ${prefix}/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].rd_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD $wr_clock]
set_bus_skew  -from [get_cells ${prefix}/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*wr_pntr_gc_reg[*]] -to [get_cells ${prefix}/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].rd_stg_inst/Q_reg_reg[*]] $skew_value
################################################################################
