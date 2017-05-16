// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
// Date        : Tue May 16 05:45:32 2017
// Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xcl_design_buf_refclk_bufg_0_stub.v
// Design      : xcl_design_buf_refclk_bufg_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flvb2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "util_ds_buf,Vivado 2016.3_sdx" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(BUFG_GT_I, BUFG_GT_CE, BUFG_GT_CEMASK, 
  BUFG_GT_CLR, BUFG_GT_CLRMASK, BUFG_GT_DIV, BUFG_GT_O)
/* synthesis syn_black_box black_box_pad_pin="BUFG_GT_I[0:0],BUFG_GT_CE[0:0],BUFG_GT_CEMASK[0:0],BUFG_GT_CLR[0:0],BUFG_GT_CLRMASK[0:0],BUFG_GT_DIV[2:0],BUFG_GT_O[0:0]" */;
  input [0:0]BUFG_GT_I;
  input [0:0]BUFG_GT_CE;
  input [0:0]BUFG_GT_CEMASK;
  input [0:0]BUFG_GT_CLR;
  input [0:0]BUFG_GT_CLRMASK;
  input [2:0]BUFG_GT_DIV;
  output [0:0]BUFG_GT_O;
endmodule
