// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
// Date        : Tue May 16 05:45:32 2017
// Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xcl_design_buf_refclk_bufg_0_sim_netlist.v
// Design      : xcl_design_buf_refclk_bufg_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flvb2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_BUF_TYPE = "BUFG_GT" *) (* C_SIZE = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ds_buf
   (IBUF_DS_P,
    IBUF_DS_N,
    IBUF_OUT,
    IBUF_DS_ODIV2,
    OBUF_IN,
    OBUF_DS_P,
    OBUF_DS_N,
    IOBUF_DS_P,
    IOBUF_DS_N,
    IOBUF_IO_T,
    IOBUF_IO_I,
    IOBUF_IO_O,
    BUFG_I,
    BUFG_O,
    BUFGCE_I,
    BUFGCE_CE,
    BUFGCE_O,
    BUFH_I,
    BUFH_O,
    BUFHCE_I,
    BUFHCE_CE,
    BUFHCE_O,
    BUFG_GT_I,
    BUFG_GT_CE,
    BUFG_GT_CEMASK,
    BUFG_GT_CLR,
    BUFG_GT_CLRMASK,
    BUFG_GT_DIV,
    BUFG_GT_O,
    lopt,
    lopt_1);
  input [0:0]IBUF_DS_P;
  input [0:0]IBUF_DS_N;
  output [0:0]IBUF_OUT;
  output [0:0]IBUF_DS_ODIV2;
  input [0:0]OBUF_IN;
  output [0:0]OBUF_DS_P;
  output [0:0]OBUF_DS_N;
  inout [0:0]IOBUF_DS_P;
  inout [0:0]IOBUF_DS_N;
  input [0:0]IOBUF_IO_T;
  input [0:0]IOBUF_IO_I;
  output [0:0]IOBUF_IO_O;
  input [0:0]BUFG_I;
  output [0:0]BUFG_O;
  input [0:0]BUFGCE_I;
  input [0:0]BUFGCE_CE;
  output [0:0]BUFGCE_O;
  input [0:0]BUFH_I;
  output [0:0]BUFH_O;
  input [0:0]BUFHCE_I;
  input [0:0]BUFHCE_CE;
  output [0:0]BUFHCE_O;
  input [0:0]BUFG_GT_I;
  input [0:0]BUFG_GT_CE;
  input [0:0]BUFG_GT_CEMASK;
  input [0:0]BUFG_GT_CLR;
  input [0:0]BUFG_GT_CLRMASK;
  input [2:0]BUFG_GT_DIV;
  output [0:0]BUFG_GT_O;
  input lopt;
  input lopt_1;

  wire \<const0> ;
  wire [0:0]BUFG_GT_CE;
  wire [0:0]BUFG_GT_CEMASK;
  wire [0:0]BUFG_GT_CLR;
  wire [0:0]BUFG_GT_CLRMASK;
  wire [2:0]BUFG_GT_DIV;
  wire [0:0]BUFG_GT_I;
  wire [0:0]BUFG_GT_O;
  wire lopt;
  wire lopt_1;

  assign BUFGCE_O[0] = \<const0> ;
  assign BUFG_O[0] = \<const0> ;
  assign BUFHCE_O[0] = \<const0> ;
  assign BUFH_O[0] = \<const0> ;
  assign IBUF_DS_ODIV2[0] = \<const0> ;
  assign IBUF_OUT[0] = \<const0> ;
  assign IOBUF_IO_O[0] = \<const0> ;
  assign OBUF_DS_N[0] = \<const0> ;
  assign OBUF_DS_P[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* box_type = "PRIMITIVE" *) 
  BUFG_GT \USE_BUFG_GT.GEN_BUFG_GT[0].BUFG_GT_U 
       (.CE(lopt),
        .CEMASK(BUFG_GT_CEMASK),
        .CLR(lopt_1),
        .CLRMASK(BUFG_GT_CLRMASK),
        .DIV(BUFG_GT_DIV),
        .I(BUFG_GT_I),
        .O(BUFG_GT_O));
endmodule

(* CHECK_LICENSE_TYPE = "xcl_design_buf_refclk_bufg_0,util_ds_buf,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "util_ds_buf,Vivado 2016.3_sdx" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (BUFG_GT_I,
    BUFG_GT_CE,
    BUFG_GT_CEMASK,
    BUFG_GT_CLR,
    BUFG_GT_CLRMASK,
    BUFG_GT_DIV,
    BUFG_GT_O);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 BUFG_GT_I CLK" *) input [0:0]BUFG_GT_I;
  input [0:0]BUFG_GT_CE;
  input [0:0]BUFG_GT_CEMASK;
  input [0:0]BUFG_GT_CLR;
  input [0:0]BUFG_GT_CLRMASK;
  input [2:0]BUFG_GT_DIV;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 BUFG_GT_O CLK" *) output [0:0]BUFG_GT_O;

  wire [0:0]BUFG_GT_CE;
  wire [0:0]BUFG_GT_CEMASK;
  wire [0:0]BUFG_GT_CLR;
  wire [0:0]BUFG_GT_CLRMASK;
  wire [2:0]BUFG_GT_DIV;
  wire [0:0]BUFG_GT_I;
  wire [0:0]BUFG_GT_O;
  wire xlnx_opt_;
  wire xlnx_opt__1;
  wire [0:0]NLW_U0_BUFGCE_O_UNCONNECTED;
  wire [0:0]NLW_U0_BUFG_O_UNCONNECTED;
  wire [0:0]NLW_U0_BUFHCE_O_UNCONNECTED;
  wire [0:0]NLW_U0_BUFH_O_UNCONNECTED;
  wire [0:0]NLW_U0_IBUF_DS_ODIV2_UNCONNECTED;
  wire [0:0]NLW_U0_IBUF_OUT_UNCONNECTED;
  wire [0:0]NLW_U0_IOBUF_DS_N_UNCONNECTED;
  wire [0:0]NLW_U0_IOBUF_DS_P_UNCONNECTED;
  wire [0:0]NLW_U0_IOBUF_IO_O_UNCONNECTED;
  wire [0:0]NLW_U0_OBUF_DS_N_UNCONNECTED;
  wire [0:0]NLW_U0_OBUF_DS_P_UNCONNECTED;

  BUFG_GT_SYNC BUFG_GT_SYNC
       (.CE(BUFG_GT_CE),
        .CESYNC(xlnx_opt_),
        .CLK(BUFG_GT_I),
        .CLR(BUFG_GT_CLR),
        .CLRSYNC(xlnx_opt__1));
  (* C_BUF_TYPE = "BUFG_GT" *) 
  (* C_SIZE = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ds_buf U0
       (.BUFGCE_CE(1'b0),
        .BUFGCE_I(1'b0),
        .BUFGCE_O(NLW_U0_BUFGCE_O_UNCONNECTED[0]),
        .BUFG_GT_CE(BUFG_GT_CE),
        .BUFG_GT_CEMASK(BUFG_GT_CEMASK),
        .BUFG_GT_CLR(BUFG_GT_CLR),
        .BUFG_GT_CLRMASK(BUFG_GT_CLRMASK),
        .BUFG_GT_DIV(BUFG_GT_DIV),
        .BUFG_GT_I(BUFG_GT_I),
        .BUFG_GT_O(BUFG_GT_O),
        .BUFG_I(1'b0),
        .BUFG_O(NLW_U0_BUFG_O_UNCONNECTED[0]),
        .BUFHCE_CE(1'b0),
        .BUFHCE_I(1'b0),
        .BUFHCE_O(NLW_U0_BUFHCE_O_UNCONNECTED[0]),
        .BUFH_I(1'b0),
        .BUFH_O(NLW_U0_BUFH_O_UNCONNECTED[0]),
        .IBUF_DS_N(1'b0),
        .IBUF_DS_ODIV2(NLW_U0_IBUF_DS_ODIV2_UNCONNECTED[0]),
        .IBUF_DS_P(1'b0),
        .IBUF_OUT(NLW_U0_IBUF_OUT_UNCONNECTED[0]),
        .IOBUF_DS_N(NLW_U0_IOBUF_DS_N_UNCONNECTED[0]),
        .IOBUF_DS_P(NLW_U0_IOBUF_DS_P_UNCONNECTED[0]),
        .IOBUF_IO_I(1'b0),
        .IOBUF_IO_O(NLW_U0_IOBUF_IO_O_UNCONNECTED[0]),
        .IOBUF_IO_T(1'b0),
        .OBUF_DS_N(NLW_U0_OBUF_DS_N_UNCONNECTED[0]),
        .OBUF_DS_P(NLW_U0_OBUF_DS_P_UNCONNECTED[0]),
        .OBUF_IN(1'b0),
        .lopt(xlnx_opt_),
        .lopt_1(xlnx_opt__1));
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
