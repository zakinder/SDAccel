// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4_sdx (win64) Build 1806307 Thu Mar  9 15:24:31 MST 2017
// Date        : Tue May 16 10:30:16 2017
// Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Sim/sdaccelku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_debug_bridge_xsdbm_0/bd_0/ip/ip_1/bd_6ad6_lut_buffer_0_sim_netlist.v
// Design      : bd_6ad6_lut_buffer_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flvb2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_6ad6_lut_buffer_0,lut_buffer_v1_0_0_lut_buffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "lut_buffer_v1_0_0_lut_buffer,Vivado 2016.4_sdx" *) 
(* NotValidForBitStream *)
module bd_6ad6_lut_buffer_0
   (tdo_o,
    bscanid_o,
    tdo_i,
    bscanid_i);
  output tdo_o;
  output [31:0]bscanid_o;
  input tdo_i;
  input [31:0]bscanid_i;

  wire [31:0]bscanid_i;
  wire [31:0]bscanid_o;
  wire tdo_i;
  wire tdo_o;

  (* DONT_TOUCH *) 
  bd_6ad6_lut_buffer_0_lut_buffer_v1_0_0_lut_buffer inst
       (.bscanid_i(bscanid_i),
        .bscanid_o(bscanid_o),
        .tdo_i(tdo_i),
        .tdo_o(tdo_o));
endmodule

(* ORIG_REF_NAME = "lut_buffer_v1_0_0_lut_buffer" *) (* dont_touch = "true" *) 
module bd_6ad6_lut_buffer_0_lut_buffer_v1_0_0_lut_buffer
   (tdo_o,
    bscanid_o,
    tdo_i,
    bscanid_i);
  output tdo_o;
  output [31:0]bscanid_o;
  input tdo_i;
  input [31:0]bscanid_i;

  wire [31:0]bscanid_i;
  wire [31:0]bscanid_o;
  wire tdo_i;
  wire tdo_o;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[0].u_tdo 
       (.I0(bscanid_i[0]),
        .O(bscanid_o[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[10].u_tdo 
       (.I0(bscanid_i[10]),
        .O(bscanid_o[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[11].u_tdo 
       (.I0(bscanid_i[11]),
        .O(bscanid_o[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[12].u_tdo 
       (.I0(bscanid_i[12]),
        .O(bscanid_o[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[13].u_tdo 
       (.I0(bscanid_i[13]),
        .O(bscanid_o[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[14].u_tdo 
       (.I0(bscanid_i[14]),
        .O(bscanid_o[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[15].u_tdo 
       (.I0(bscanid_i[15]),
        .O(bscanid_o[15]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[16].u_tdo 
       (.I0(bscanid_i[16]),
        .O(bscanid_o[16]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[17].u_tdo 
       (.I0(bscanid_i[17]),
        .O(bscanid_o[17]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[18].u_tdo 
       (.I0(bscanid_i[18]),
        .O(bscanid_o[18]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[19].u_tdo 
       (.I0(bscanid_i[19]),
        .O(bscanid_o[19]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[1].u_tdo 
       (.I0(bscanid_i[1]),
        .O(bscanid_o[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[20].u_tdo 
       (.I0(bscanid_i[20]),
        .O(bscanid_o[20]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[21].u_tdo 
       (.I0(bscanid_i[21]),
        .O(bscanid_o[21]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[22].u_tdo 
       (.I0(bscanid_i[22]),
        .O(bscanid_o[22]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[23].u_tdo 
       (.I0(bscanid_i[23]),
        .O(bscanid_o[23]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[24].u_tdo 
       (.I0(bscanid_i[24]),
        .O(bscanid_o[24]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[25].u_tdo 
       (.I0(bscanid_i[25]),
        .O(bscanid_o[25]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[26].u_tdo 
       (.I0(bscanid_i[26]),
        .O(bscanid_o[26]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[27].u_tdo 
       (.I0(bscanid_i[27]),
        .O(bscanid_o[27]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[28].u_tdo 
       (.I0(bscanid_i[28]),
        .O(bscanid_o[28]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[29].u_tdo 
       (.I0(bscanid_i[29]),
        .O(bscanid_o[29]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[2].u_tdo 
       (.I0(bscanid_i[2]),
        .O(bscanid_o[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[30].u_tdo 
       (.I0(bscanid_i[30]),
        .O(bscanid_o[30]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[31].u_tdo 
       (.I0(bscanid_i[31]),
        .O(bscanid_o[31]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[3].u_tdo 
       (.I0(bscanid_i[3]),
        .O(bscanid_o[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[4].u_tdo 
       (.I0(bscanid_i[4]),
        .O(bscanid_o[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[5].u_tdo 
       (.I0(bscanid_i[5]),
        .O(bscanid_o[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[6].u_tdo 
       (.I0(bscanid_i[6]),
        .O(bscanid_o[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[7].u_tdo 
       (.I0(bscanid_i[7]),
        .O(bscanid_o[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[8].u_tdo 
       (.I0(bscanid_i[8]),
        .O(bscanid_o[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \BSCANID_BUFFER[9].u_tdo 
       (.I0(bscanid_i[9]),
        .O(bscanid_o[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    u_tdo
       (.I0(tdo_i),
        .O(tdo_o));
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
