// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4_sdx (win64) Build 1806307 Thu Mar  9 15:24:31 MST 2017
// Date        : Tue May 16 09:18:10 2017
// Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top xcl_design_xilmonitor_subset0_0 -prefix
//               xcl_design_xilmonitor_subset0_0_ xcl_design_xilmonitor_subset0_0_sim_netlist.v
// Design      : xcl_design_xilmonitor_subset0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flvb2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_DEFAULT_TLAST = "0" *) (* C_FAMILY = "kintexu" *) (* C_M_AXIS_SIGNAL_SET = "32'b00000000000000000000000000100111" *) 
(* C_M_AXIS_TDATA_WIDTH = "256" *) (* C_M_AXIS_TDEST_WIDTH = "1" *) (* C_M_AXIS_TID_WIDTH = "1" *) 
(* C_M_AXIS_TUSER_WIDTH = "1" *) (* C_S_AXIS_SIGNAL_SET = "32'b00000000000000000000000000100111" *) (* C_S_AXIS_TDATA_WIDTH = "152" *) 
(* C_S_AXIS_TDEST_WIDTH = "1" *) (* C_S_AXIS_TID_WIDTH = "1" *) (* C_S_AXIS_TUSER_WIDTH = "1" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) 
module xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0
   (aclk,
    aresetn,
    aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    transfer_dropped,
    sparse_tkeep_removed);
  input aclk;
  input aresetn;
  input aclken;
  input s_axis_tvalid;
  output s_axis_tready;
  input [151:0]s_axis_tdata;
  input [18:0]s_axis_tstrb;
  input [18:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [255:0]m_axis_tdata;
  output [31:0]m_axis_tstrb;
  output [31:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output transfer_dropped;
  output sparse_tkeep_removed;

  wire \<const0> ;
  wire \<const1> ;
  wire m_axis_tready;
  wire [151:0]s_axis_tdata;
  wire [0:0]s_axis_tid;
  wire [18:0]s_axis_tstrb;
  wire s_axis_tvalid;

  assign m_axis_tdata[255] = \<const0> ;
  assign m_axis_tdata[254] = \<const0> ;
  assign m_axis_tdata[253] = \<const0> ;
  assign m_axis_tdata[252] = \<const0> ;
  assign m_axis_tdata[251] = \<const0> ;
  assign m_axis_tdata[250] = \<const0> ;
  assign m_axis_tdata[249] = \<const0> ;
  assign m_axis_tdata[248] = \<const0> ;
  assign m_axis_tdata[247] = \<const0> ;
  assign m_axis_tdata[246] = \<const0> ;
  assign m_axis_tdata[245] = \<const0> ;
  assign m_axis_tdata[244] = \<const0> ;
  assign m_axis_tdata[243] = \<const0> ;
  assign m_axis_tdata[242] = \<const0> ;
  assign m_axis_tdata[241] = \<const0> ;
  assign m_axis_tdata[240] = \<const0> ;
  assign m_axis_tdata[239] = \<const0> ;
  assign m_axis_tdata[238] = \<const0> ;
  assign m_axis_tdata[237] = \<const0> ;
  assign m_axis_tdata[236] = \<const0> ;
  assign m_axis_tdata[235] = \<const0> ;
  assign m_axis_tdata[234] = \<const0> ;
  assign m_axis_tdata[233] = \<const0> ;
  assign m_axis_tdata[232] = \<const0> ;
  assign m_axis_tdata[231] = \<const0> ;
  assign m_axis_tdata[230] = \<const0> ;
  assign m_axis_tdata[229] = \<const0> ;
  assign m_axis_tdata[228] = \<const0> ;
  assign m_axis_tdata[227] = \<const0> ;
  assign m_axis_tdata[226] = \<const0> ;
  assign m_axis_tdata[225] = \<const0> ;
  assign m_axis_tdata[224] = \<const0> ;
  assign m_axis_tdata[223] = \<const0> ;
  assign m_axis_tdata[222] = \<const0> ;
  assign m_axis_tdata[221] = \<const0> ;
  assign m_axis_tdata[220] = \<const0> ;
  assign m_axis_tdata[219] = \<const0> ;
  assign m_axis_tdata[218] = \<const0> ;
  assign m_axis_tdata[217] = \<const0> ;
  assign m_axis_tdata[216] = \<const0> ;
  assign m_axis_tdata[215] = \<const0> ;
  assign m_axis_tdata[214] = \<const0> ;
  assign m_axis_tdata[213] = \<const0> ;
  assign m_axis_tdata[212] = \<const0> ;
  assign m_axis_tdata[211] = \<const0> ;
  assign m_axis_tdata[210] = \<const0> ;
  assign m_axis_tdata[209] = \<const0> ;
  assign m_axis_tdata[208] = \<const0> ;
  assign m_axis_tdata[207] = \<const0> ;
  assign m_axis_tdata[206] = \<const0> ;
  assign m_axis_tdata[205] = \<const0> ;
  assign m_axis_tdata[204] = \<const0> ;
  assign m_axis_tdata[203] = \<const0> ;
  assign m_axis_tdata[202] = \<const0> ;
  assign m_axis_tdata[201] = \<const0> ;
  assign m_axis_tdata[200] = \<const0> ;
  assign m_axis_tdata[199] = \<const0> ;
  assign m_axis_tdata[198] = \<const0> ;
  assign m_axis_tdata[197] = \<const0> ;
  assign m_axis_tdata[196] = \<const0> ;
  assign m_axis_tdata[195] = \<const0> ;
  assign m_axis_tdata[194] = \<const0> ;
  assign m_axis_tdata[193] = \<const0> ;
  assign m_axis_tdata[192] = \<const0> ;
  assign m_axis_tdata[191] = \<const0> ;
  assign m_axis_tdata[190] = \<const0> ;
  assign m_axis_tdata[189] = \<const0> ;
  assign m_axis_tdata[188] = \<const0> ;
  assign m_axis_tdata[187] = \<const0> ;
  assign m_axis_tdata[186] = \<const0> ;
  assign m_axis_tdata[185] = \<const0> ;
  assign m_axis_tdata[184] = \<const0> ;
  assign m_axis_tdata[183] = \<const0> ;
  assign m_axis_tdata[182] = \<const0> ;
  assign m_axis_tdata[181] = \<const0> ;
  assign m_axis_tdata[180] = \<const0> ;
  assign m_axis_tdata[179] = \<const0> ;
  assign m_axis_tdata[178] = \<const0> ;
  assign m_axis_tdata[177] = \<const0> ;
  assign m_axis_tdata[176] = \<const0> ;
  assign m_axis_tdata[175] = \<const0> ;
  assign m_axis_tdata[174] = \<const0> ;
  assign m_axis_tdata[173] = \<const0> ;
  assign m_axis_tdata[172] = \<const0> ;
  assign m_axis_tdata[171] = \<const0> ;
  assign m_axis_tdata[170] = \<const0> ;
  assign m_axis_tdata[169] = \<const0> ;
  assign m_axis_tdata[168] = \<const0> ;
  assign m_axis_tdata[167] = \<const0> ;
  assign m_axis_tdata[166] = \<const0> ;
  assign m_axis_tdata[165] = \<const0> ;
  assign m_axis_tdata[164] = \<const0> ;
  assign m_axis_tdata[163] = \<const0> ;
  assign m_axis_tdata[162] = \<const0> ;
  assign m_axis_tdata[161] = \<const0> ;
  assign m_axis_tdata[160] = \<const0> ;
  assign m_axis_tdata[159] = \<const0> ;
  assign m_axis_tdata[158] = \<const0> ;
  assign m_axis_tdata[157] = \<const0> ;
  assign m_axis_tdata[156] = \<const0> ;
  assign m_axis_tdata[155] = \<const0> ;
  assign m_axis_tdata[154] = \<const0> ;
  assign m_axis_tdata[153] = \<const0> ;
  assign m_axis_tdata[152] = \<const0> ;
  assign m_axis_tdata[151:0] = s_axis_tdata;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = s_axis_tid;
  assign m_axis_tkeep[31] = \<const0> ;
  assign m_axis_tkeep[30] = \<const0> ;
  assign m_axis_tkeep[29] = \<const0> ;
  assign m_axis_tkeep[28] = \<const0> ;
  assign m_axis_tkeep[27] = \<const0> ;
  assign m_axis_tkeep[26] = \<const0> ;
  assign m_axis_tkeep[25] = \<const0> ;
  assign m_axis_tkeep[24] = \<const0> ;
  assign m_axis_tkeep[23] = \<const0> ;
  assign m_axis_tkeep[22] = \<const0> ;
  assign m_axis_tkeep[21] = \<const0> ;
  assign m_axis_tkeep[20] = \<const0> ;
  assign m_axis_tkeep[19] = \<const0> ;
  assign m_axis_tkeep[18] = \<const0> ;
  assign m_axis_tkeep[17] = \<const0> ;
  assign m_axis_tkeep[16] = \<const0> ;
  assign m_axis_tkeep[15] = \<const0> ;
  assign m_axis_tkeep[14] = \<const0> ;
  assign m_axis_tkeep[13] = \<const0> ;
  assign m_axis_tkeep[12] = \<const0> ;
  assign m_axis_tkeep[11] = \<const0> ;
  assign m_axis_tkeep[10] = \<const0> ;
  assign m_axis_tkeep[9] = \<const0> ;
  assign m_axis_tkeep[8] = \<const0> ;
  assign m_axis_tkeep[7] = \<const0> ;
  assign m_axis_tkeep[6] = \<const0> ;
  assign m_axis_tkeep[5] = \<const0> ;
  assign m_axis_tkeep[4] = \<const0> ;
  assign m_axis_tkeep[3] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[31] = \<const1> ;
  assign m_axis_tstrb[30] = \<const1> ;
  assign m_axis_tstrb[29] = \<const1> ;
  assign m_axis_tstrb[28] = \<const1> ;
  assign m_axis_tstrb[27] = \<const1> ;
  assign m_axis_tstrb[26] = \<const1> ;
  assign m_axis_tstrb[25] = \<const1> ;
  assign m_axis_tstrb[24] = \<const1> ;
  assign m_axis_tstrb[23] = \<const1> ;
  assign m_axis_tstrb[22] = \<const1> ;
  assign m_axis_tstrb[21] = \<const1> ;
  assign m_axis_tstrb[20] = \<const1> ;
  assign m_axis_tstrb[19] = \<const1> ;
  assign m_axis_tstrb[18:0] = s_axis_tstrb;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = s_axis_tvalid;
  assign s_axis_tready = m_axis_tready;
  assign sparse_tkeep_removed = \<const0> ;
  assign transfer_dropped = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* CHECK_LICENSE_TYPE = "xcl_design_xilmonitor_subset0_0,top_xcl_design_xilmonitor_subset0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "top_xcl_design_xilmonitor_subset0_0,Vivado 2016.4_sdx" *) 
(* NotValidForBitStream *)
module xcl_design_xilmonitor_subset0_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tid,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [151:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TSTRB" *) input [18:0]s_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TID" *) input [0:0]s_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [255:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TSTRB" *) output [31:0]m_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TID" *) output [0:0]m_axis_tid;

  wire aclk;
  wire aresetn;
  wire [255:0]m_axis_tdata;
  wire [0:0]m_axis_tid;
  wire m_axis_tready;
  wire [31:0]m_axis_tstrb;
  wire m_axis_tvalid;
  wire [151:0]s_axis_tdata;
  wire [0:0]s_axis_tid;
  wire s_axis_tready;
  wire [18:0]s_axis_tstrb;
  wire s_axis_tvalid;
  wire NLW_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_inst_sparse_tkeep_removed_UNCONNECTED;
  wire NLW_inst_transfer_dropped_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [31:0]NLW_inst_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tuser_UNCONNECTED;

  (* C_DEFAULT_TLAST = "0" *) 
  (* C_FAMILY = "kintexu" *) 
  (* C_M_AXIS_SIGNAL_SET = "32'b00000000000000000000000000100111" *) 
  (* C_M_AXIS_TDATA_WIDTH = "256" *) 
  (* C_M_AXIS_TDEST_WIDTH = "1" *) 
  (* C_M_AXIS_TID_WIDTH = "1" *) 
  (* C_M_AXIS_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_SIGNAL_SET = "32'b00000000000000000000000000100111" *) 
  (* C_S_AXIS_TDATA_WIDTH = "152" *) 
  (* C_S_AXIS_TDEST_WIDTH = "1" *) 
  (* C_S_AXIS_TID_WIDTH = "1" *) 
  (* C_S_AXIS_TUSER_WIDTH = "1" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 inst
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(NLW_inst_m_axis_tkeep_UNCONNECTED[31:0]),
        .m_axis_tlast(NLW_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tlast(1'b1),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid),
        .sparse_tkeep_removed(NLW_inst_sparse_tkeep_removed_UNCONNECTED),
        .transfer_dropped(NLW_inst_transfer_dropped_UNCONNECTED));
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
