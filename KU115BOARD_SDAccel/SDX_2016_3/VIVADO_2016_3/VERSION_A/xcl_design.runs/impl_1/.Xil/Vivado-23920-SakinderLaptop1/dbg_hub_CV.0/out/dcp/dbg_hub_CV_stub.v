// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xsdbm_v2_0_1_xsdbm,Vivado 2016.3_sdx" *)
module dbg_hub_CV(update_0, capture_0, reset_0, runtest_0, tms_0, 
  tck_0, tdi_0, sel_0, shift_0, drck_0, tdo_0, bscanid_0);
  output update_0;
  output capture_0;
  output reset_0;
  output runtest_0;
  output tms_0;
  output tck_0;
  output tdi_0;
  output sel_0;
  output shift_0;
  output drck_0;
  input tdo_0;
  input [31:0]bscanid_0;
endmodule
