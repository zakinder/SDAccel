// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4_sdx (win64) Build 1806307 Thu Mar  9 15:24:31 MST 2017
// Date        : Tue May 16 09:58:26 2017
// Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Sim/sdaccelku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_startup_primitive_0/xcl_design_startup_primitive_0_stub.v
// Design      : xcl_design_startup_primitive_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flvb2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "startup_wrapper,Vivado 2016.4_sdx" *)
module xcl_design_startup_primitive_0(flash_DQ_I, flash_DQ_O, flash_DQ_tri_ctrl, 
  flash_CS_N, flash_CS_N_tri_ctrl, flash_clk, startup_eos)
/* synthesis syn_black_box black_box_pad_pin="flash_DQ_I[3:0],flash_DQ_O[3:0],flash_DQ_tri_ctrl[3:0],flash_CS_N,flash_CS_N_tri_ctrl,flash_clk,startup_eos" */;
  output [3:0]flash_DQ_I;
  input [3:0]flash_DQ_O;
  input [3:0]flash_DQ_tri_ctrl;
  input flash_CS_N;
  input flash_CS_N_tri_ctrl;
  input flash_clk;
  output startup_eos;
endmodule
