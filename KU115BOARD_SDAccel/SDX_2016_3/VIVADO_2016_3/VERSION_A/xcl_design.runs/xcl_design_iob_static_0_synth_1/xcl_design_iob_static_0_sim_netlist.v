// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
// Date        : Tue May 16 06:15:12 2017
// Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xcl_design_iob_static_0_sim_netlist.v
// Design      : xcl_design_iob_static_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flvb2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iob_static
   (perst_n_out,
    led_0_out,
    init_calib_complete_out,
    emc_clk_out,
    io0_i,
    io1_i,
    io2_i,
    io3_i,
    ss,
    io0,
    io1,
    io2,
    io3,
    perst_n_in,
    led_0_in,
    init_calib_complete_in,
    emc_clk_in,
    ss_o,
    ss_t,
    io0_o,
    io0_t,
    io1_o,
    io1_t,
    io2_o,
    io2_t,
    io3_o,
    io3_t,
    flash_DQ_I);
  output perst_n_out;
  output led_0_out;
  output init_calib_complete_out;
  output emc_clk_out;
  output io0_i;
  output io1_i;
  output io2_i;
  output io3_i;
  inout ss;
  inout io0;
  inout io1;
  inout io2;
  inout io3;
  input perst_n_in;
  input led_0_in;
  input init_calib_complete_in;
  input emc_clk_in;
  input ss_o;
  input ss_t;
  input io0_o;
  input io0_t;
  input io1_o;
  input io1_t;
  input io2_o;
  input io2_t;
  input io3_o;
  input io3_t;
  input [3:0]flash_DQ_I;

  wire emc_clk_in;
  wire emc_clk_int;
  wire emc_clk_out;
  wire [3:0]flash_DQ_I;
  wire init_calib_complete_in;
  wire init_calib_complete_out;
  wire io0;
  wire io0_i;
  wire io0_o;
  wire io0_t;
  wire io1;
  wire io1_i;
  wire io1_o;
  wire io1_t;
  wire io2;
  wire io2_i;
  wire io2_o;
  wire io2_t;
  wire io3;
  wire io3_i;
  wire io3_o;
  wire io3_t;
  wire led_0_in;
  wire led_0_out;
  wire perst_n_in;
  wire perst_n_out;
  wire qspi1_io0_i;
  wire qspi1_io1_i;
  wire qspi1_io2_i;
  wire qspi1_io3_i;
  wire ss;
  wire ss_o;
  wire ss_t;
  wire NLW_ss_iobuf_O_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC")) 
    emc_clk_bufg
       (.CE(1'b1),
        .I(emc_clk_int),
        .O(emc_clk_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    emc_clk_ibuf
       (.I(emc_clk_in),
        .O(emc_clk_int));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    init_calib_complete_obuf
       (.I(init_calib_complete_in),
        .O(init_calib_complete_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    io0_i_INST_0
       (.I0(flash_DQ_I[0]),
        .I1(ss_o),
        .I2(qspi1_io0_i),
        .O(io0_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    io0_iobuf
       (.I(io0_o),
        .IO(io0),
        .O(qspi1_io0_i),
        .T(io0_t));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    io1_i_INST_0
       (.I0(flash_DQ_I[1]),
        .I1(ss_o),
        .I2(qspi1_io1_i),
        .O(io1_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    io1_iobuf
       (.I(io1_o),
        .IO(io1),
        .O(qspi1_io1_i),
        .T(io1_t));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    io2_i_INST_0
       (.I0(flash_DQ_I[2]),
        .I1(ss_o),
        .I2(qspi1_io2_i),
        .O(io2_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    io2_iobuf
       (.I(io2_o),
        .IO(io2),
        .O(qspi1_io2_i),
        .T(io2_t));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    io3_i_INST_0
       (.I0(flash_DQ_I[3]),
        .I1(ss_o),
        .I2(qspi1_io3_i),
        .O(io3_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    io3_iobuf
       (.I(io3_o),
        .IO(io3),
        .O(qspi1_io3_i),
        .T(io3_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    led_0_obuf
       (.I(led_0_in),
        .O(led_0_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    perst_n_ibuf
       (.I(perst_n_in),
        .O(perst_n_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    ss_iobuf
       (.I(ss_o),
        .IO(ss),
        .O(NLW_ss_iobuf_O_UNCONNECTED),
        .T(ss_t));
endmodule

(* CHECK_LICENSE_TYPE = "xcl_design_iob_static_0,iob_static,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "iob_static,Vivado 2016.3_sdx" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (perst_n_in,
    perst_n_out,
    init_calib_complete_in,
    init_calib_complete_out,
    led_0_in,
    led_0_out,
    emc_clk_in,
    emc_clk_out,
    ss_o,
    ss_t,
    ss,
    flash_DQ_I,
    io0_i,
    io0_o,
    io0_t,
    io0,
    io1_i,
    io1_o,
    io1_t,
    io1,
    io2_i,
    io2_o,
    io2_t,
    io2,
    io3_i,
    io3_o,
    io3_t,
    io3);
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

  (* IBUF_LOW_PWR *) wire emc_clk_in;
  wire emc_clk_out;
  wire [3:0]flash_DQ_I;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire init_calib_complete_in;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire init_calib_complete_out;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire io0;
  wire io0_i;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire io0_o;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire io0_t;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire io1;
  wire io1_i;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire io1_o;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire io1_t;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire io2;
  wire io2_i;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire io2_o;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire io2_t;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire io3;
  wire io3_i;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire io3_o;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire io3_t;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire led_0_in;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire led_0_out;
  (* IBUF_LOW_PWR *) wire perst_n_in;
  (* IBUF_LOW_PWR *) wire perst_n_out;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire ss;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire ss_o;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire ss_t;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iob_static inst
       (.emc_clk_in(emc_clk_in),
        .emc_clk_out(emc_clk_out),
        .flash_DQ_I(flash_DQ_I),
        .init_calib_complete_in(init_calib_complete_in),
        .init_calib_complete_out(init_calib_complete_out),
        .io0(io0),
        .io0_i(io0_i),
        .io0_o(io0_o),
        .io0_t(io0_t),
        .io1(io1),
        .io1_i(io1_i),
        .io1_o(io1_o),
        .io1_t(io1_t),
        .io2(io2),
        .io2_i(io2_i),
        .io2_o(io2_o),
        .io2_t(io2_t),
        .io3(io3),
        .io3_i(io3_i),
        .io3_o(io3_o),
        .io3_t(io3_t),
        .led_0_in(led_0_in),
        .led_0_out(led_0_out),
        .perst_n_in(perst_n_in),
        .perst_n_out(perst_n_out),
        .ss(ss),
        .ss_o(ss_o),
        .ss_t(ss_t));
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
