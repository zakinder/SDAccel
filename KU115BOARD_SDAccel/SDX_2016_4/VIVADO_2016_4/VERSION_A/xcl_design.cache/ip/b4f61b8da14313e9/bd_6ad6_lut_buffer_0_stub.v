// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4_sdx (win64) Build 1806307 Thu Mar  9 15:24:31 MST 2017
// Date        : Tue May 16 10:30:16 2017
// Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_6ad6_lut_buffer_0_stub.v
// Design      : bd_6ad6_lut_buffer_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flvb2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "lut_buffer_v1_0_0_lut_buffer,Vivado 2016.4_sdx" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(tdo_o, bscanid_o, tdo_i, bscanid_i)
/* synthesis syn_black_box black_box_pad_pin="tdo_o,bscanid_o[31:0],tdo_i,bscanid_i[31:0]" */;
  output tdo_o;
  output [31:0]bscanid_o;
  input tdo_i;
  input [31:0]bscanid_i;
endmodule
