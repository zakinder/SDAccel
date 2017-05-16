// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
// Date        : Tue May 16 06:11:29 2017
// Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_startup_primitive_0/xcl_design_startup_primitive_0_sim_netlist.v
// Design      : xcl_design_startup_primitive_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flvb2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xcl_design_startup_primitive_0,startup_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "startup_wrapper,Vivado 2016.3_sdx" *) 
(* NotValidForBitStream *)
module xcl_design_startup_primitive_0
   (flash_DQ_I,
    flash_DQ_O,
    flash_DQ_tri_ctrl,
    flash_CS_N,
    flash_CS_N_tri_ctrl,
    flash_clk,
    startup_eos);
  output [3:0]flash_DQ_I;
  input [3:0]flash_DQ_O;
  input [3:0]flash_DQ_tri_ctrl;
  input flash_CS_N;
  input flash_CS_N_tri_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 flash_clk CLK" *) input flash_clk;
  output startup_eos;

  wire flash_CS_N;
  wire flash_CS_N_tri_ctrl;
  wire [3:0]flash_DQ_I;
  wire [3:0]flash_DQ_O;
  wire [3:0]flash_DQ_tri_ctrl;
  wire flash_clk;
  wire startup_eos;

  xcl_design_startup_primitive_0_startup_wrapper inst
       (.flash_CS_N(flash_CS_N),
        .flash_CS_N_tri_ctrl(flash_CS_N_tri_ctrl),
        .flash_DQ_I(flash_DQ_I),
        .flash_DQ_O(flash_DQ_O),
        .flash_DQ_tri_ctrl(flash_DQ_tri_ctrl),
        .flash_clk(flash_clk),
        .startup_eos(startup_eos));
endmodule

(* ORIG_REF_NAME = "startup_wrapper" *) 
module xcl_design_startup_primitive_0_startup_wrapper
   (startup_eos,
    flash_DQ_I,
    flash_CS_N,
    flash_CS_N_tri_ctrl,
    flash_clk,
    flash_DQ_O,
    flash_DQ_tri_ctrl);
  output startup_eos;
  output [3:0]flash_DQ_I;
  input flash_CS_N;
  input flash_CS_N_tri_ctrl;
  input flash_clk;
  input [3:0]flash_DQ_O;
  input [3:0]flash_DQ_tri_ctrl;

  wire flash_CS_N;
  wire flash_CS_N_tri_ctrl;
  wire [3:0]flash_DQ_I;
  wire [3:0]flash_DQ_O;
  wire [3:0]flash_DQ_tri_ctrl;
  wire flash_clk;
  wire startup_eos;
  wire NLW_STARTUPE3_inst_CFGCLK_UNCONNECTED;
  wire NLW_STARTUPE3_inst_CFGMCLK_UNCONNECTED;
  wire NLW_STARTUPE3_inst_PREQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  STARTUPE3 #(
    .PROG_USR("FALSE"),
    .SIM_CCLK_FREQ(0.000000)) 
    STARTUPE3_inst
       (.CFGCLK(NLW_STARTUPE3_inst_CFGCLK_UNCONNECTED),
        .CFGMCLK(NLW_STARTUPE3_inst_CFGMCLK_UNCONNECTED),
        .DI(flash_DQ_I),
        .DO(flash_DQ_O),
        .DTS(flash_DQ_tri_ctrl),
        .EOS(startup_eos),
        .FCSBO(flash_CS_N),
        .FCSBTS(flash_CS_N_tri_ctrl),
        .GSR(1'b0),
        .GTS(1'b0),
        .KEYCLEARB(1'b1),
        .PACK(1'b0),
        .PREQ(NLW_STARTUPE3_inst_PREQ_UNCONNECTED),
        .USRCCLKO(flash_clk),
        .USRCCLKTS(1'b0),
        .USRDONEO(1'b0),
        .USRDONETS(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
