// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
// Date        : Tue May 16 06:15:12 2017
// Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_iob_static_0/xcl_design_iob_static_0_stub.v
// Design      : xcl_design_iob_static_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flvb2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "iob_static,Vivado 2016.3_sdx" *)
module xcl_design_iob_static_0(perst_n_in, perst_n_out, 
  init_calib_complete_in, init_calib_complete_out, led_0_in, led_0_out, emc_clk_in, 
  emc_clk_out, ss_o, ss_t, ss, flash_DQ_I, io0_i, io0_o, io0_t, io0, io1_i, io1_o, io1_t, io1, io2_i, io2_o, 
  io2_t, io2, io3_i, io3_o, io3_t, io3)
/* synthesis syn_black_box black_box_pad_pin="perst_n_in,perst_n_out,init_calib_complete_in,init_calib_complete_out,led_0_in,led_0_out,emc_clk_in,emc_clk_out,ss_o,ss_t,ss,flash_DQ_I[3:0],io0_i,io0_o,io0_t,io0,io1_i,io1_o,io1_t,io1,io2_i,io2_o,io2_t,io2,io3_i,io3_o,io3_t,io3" */;
  input perst_n_in;
  output perst_n_out;
  input init_calib_complete_in;
  output init_calib_complete_out;
  input led_0_in;
  output led_0_out;
  input emc_clk_in;
  output emc_clk_out;
  input ss_o;
  input ss_t;
  inout ss;
  input [3:0]flash_DQ_I;
  output io0_i;
  input io0_o;
  input io0_t;
  inout io0;
  output io1_i;
  input io1_o;
  input io1_t;
  inout io1;
  output io2_i;
  input io2_o;
  input io2_t;
  inout io2;
  output io3_i;
  input io3_o;
  input io3_t;
  inout io3;
endmodule
