// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4_sdx (win64) Build 1806307 Thu Mar  9 15:24:31 MST 2017
// Date        : Tue May 16 09:55:51 2017
// Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top xcl_design_sys_mgmt_wiz_0 -prefix
//               xcl_design_sys_mgmt_wiz_0_ xcl_design_sys_mgmt_wiz_0_sim_netlist.v
// Design      : xcl_design_sys_mgmt_wiz_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flvb2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module xcl_design_sys_mgmt_wiz_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    ip2intc_irpt,
    channel_out,
    busy_out,
    eoc_out,
    eos_out,
    alarm_out);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [12:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [12:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output ip2intc_irpt;
  output [5:0]channel_out;
  output busy_out;
  output eoc_out;
  output eos_out;
  output alarm_out;

  wire alarm_out;
  wire busy_out;
  wire [5:0]channel_out;
  wire eoc_out;
  wire eos_out;
  wire ip2intc_irpt;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [15:0]NLW_inst_alarm_out_UNCONNECTED;

  (* C_FAMILY = "virtex7" *) 
  (* C_INCLUDE_INTR = "1" *) 
  (* C_INSTANCE = "xcl_design_sys_mgmt_wiz_0_axi_xadc" *) 
  (* C_SIM_MONITOR_FILE = "design.txt" *) 
  (* C_S_AXI_ADDR_WIDTH = "13" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* hdl = "VHDL" *) 
  (* ip_group = "LOGICORE" *) 
  (* iptype = "PERIPHERAL" *) 
  xcl_design_sys_mgmt_wiz_0_xcl_design_sys_mgmt_wiz_0_axi_xadc inst
       (.alarm_out({NLW_inst_alarm_out_UNCONNECTED[15:8],alarm_out,NLW_inst_alarm_out_UNCONNECTED[6:0]}),
        .busy_out(busy_out),
        .channel_out(channel_out),
        .eoc_out(eoc_out),
        .eos_out(eos_out),
        .ip2intc_irpt(ip2intc_irpt),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .vn(1'b0),
        .vp(1'b0));
endmodule

module xcl_design_sys_mgmt_wiz_0_xcl_design_sys_mgmt_wiz_0_address_decoder
   (drdy_wr_ack_i_d1_reg,
    hard_macro_rst_reg_reg,
    DWE,
    bus2ip_wrce,
    D,
    bus2ip_rdce,
    Intr2Bus_RdAck0,
    irpt_rdack,
    interrupt_wrce_strb,
    irpt_wrack,
    E,
    status_reg_rdack0,
    local_reg_wrack0,
    convst_rst_wrce_or_reduce,
    local_reg_rdack0,
    local_rdce_or_reduce,
    ip2bus_wrack_int1,
    rst_ip2bus_error,
    reset_trig0,
    sw_rst_cond,
    p_5_out,
    dummy_bus2ip_rdce_intr,
    p_3_out,
    dummy_bus2ip_wrce_intr,
    dummy_local_reg_rdack0,
    dummy_local_reg_rdack_d10,
    dummy_local_reg_wrack0,
    dummy_local_reg_wrack_d10,
    rst_ip2bus_rdack0,
    p_51_out__0,
    hard_macro_rst_reg_reg_0,
    ipif_glbl_irpt_enable_reg_reg,
    Q,
    s_axi_aclk,
    ip2bus_wrack,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[6] ,
    ip2bus_rdack,
    s_axi_aresetn,
    jtaglocked_i,
    \ip_irpt_enable_reg_reg[17] ,
    p_1_in,
    jtagmodified_i,
    jtagmodified_d1,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \alarm_reg_reg[14] ,
    \do_reg_reg[15] ,
    \status_reg_reg[11] ,
    p_1_in47_in,
    p_1_in44_in,
    p_1_in41_in,
    p_1_in38_in,
    p_1_in35_in,
    p_1_in32_in,
    p_1_in29_in,
    p_1_in26_in,
    p_1_in23_in,
    p_1_in20_in,
    p_1_in17_in,
    p_1_in14_in,
    p_1_in11_in,
    p_1_in8_in,
    p_1_in5_in,
    p_1_in2_in,
    bus2ip_be,
    ipif_glbl_irpt_enable_reg,
    irpt_rdack_d1,
    bus2ip_rnw_i_reg,
    s_axi_wstrb,
    irpt_wrack_d1,
    status_reg_rdack_d1,
    local_reg_wrack_d1,
    local_reg_rdack_d1,
    intr_ip2bus_wrack,
    dummy_intr_reg_wrack,
    wrack,
    drdy_wr_ack_i,
    dummy_local_reg_wrack,
    data_is_non_reset_match__4,
    local_reg_wrack,
    sw_rst_cond_d1,
    dummy_intr_reg_rdack_d1,
    dummy_intr_reg_wrack_d1,
    dummy_local_reg_rdack_d1,
    dummy_local_reg_wrack_d1,
    rst_ip2bus_rdack_d1,
    s_axi_wdata,
    hard_macro_rst_reg,
    \bus2ip_addr_i_reg[10] );
  output drdy_wr_ack_i_d1_reg;
  output hard_macro_rst_reg_reg;
  output DWE;
  output [0:0]bus2ip_wrce;
  output [18:0]D;
  output [2:0]bus2ip_rdce;
  output Intr2Bus_RdAck0;
  output irpt_rdack;
  output interrupt_wrce_strb;
  output irpt_wrack;
  output [0:0]E;
  output status_reg_rdack0;
  output local_reg_wrack0;
  output convst_rst_wrce_or_reduce;
  output local_reg_rdack0;
  output local_rdce_or_reduce;
  output ip2bus_wrack_int1;
  output rst_ip2bus_error;
  output reset_trig0;
  output sw_rst_cond;
  output p_5_out;
  output dummy_bus2ip_rdce_intr;
  output p_3_out;
  output dummy_bus2ip_wrce_intr;
  output dummy_local_reg_rdack0;
  output dummy_local_reg_rdack_d10;
  output dummy_local_reg_wrack0;
  output dummy_local_reg_wrack_d10;
  output rst_ip2bus_rdack0;
  output p_51_out__0;
  output hard_macro_rst_reg_reg_0;
  output ipif_glbl_irpt_enable_reg_reg;
  input Q;
  input s_axi_aclk;
  input ip2bus_wrack;
  input [0:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[6] ;
  input ip2bus_rdack;
  input s_axi_aresetn;
  input jtaglocked_i;
  input [17:0]\ip_irpt_enable_reg_reg[17] ;
  input p_1_in;
  input jtagmodified_i;
  input jtagmodified_d1;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input [14:0]\alarm_reg_reg[14] ;
  input [15:0]\do_reg_reg[15] ;
  input [11:0]\status_reg_reg[11] ;
  input p_1_in47_in;
  input p_1_in44_in;
  input p_1_in41_in;
  input p_1_in38_in;
  input p_1_in35_in;
  input p_1_in32_in;
  input p_1_in29_in;
  input p_1_in26_in;
  input p_1_in23_in;
  input p_1_in20_in;
  input p_1_in17_in;
  input p_1_in14_in;
  input p_1_in11_in;
  input p_1_in8_in;
  input p_1_in5_in;
  input p_1_in2_in;
  input [0:0]bus2ip_be;
  input ipif_glbl_irpt_enable_reg;
  input irpt_rdack_d1;
  input bus2ip_rnw_i_reg;
  input [0:0]s_axi_wstrb;
  input irpt_wrack_d1;
  input status_reg_rdack_d1;
  input local_reg_wrack_d1;
  input local_reg_rdack_d1;
  input intr_ip2bus_wrack;
  input dummy_intr_reg_wrack;
  input wrack;
  input drdy_wr_ack_i;
  input dummy_local_reg_wrack;
  input data_is_non_reset_match__4;
  input local_reg_wrack;
  input sw_rst_cond_d1;
  input dummy_intr_reg_rdack_d1;
  input dummy_intr_reg_wrack_d1;
  input dummy_local_reg_rdack_d1;
  input dummy_local_reg_wrack_d1;
  input rst_ip2bus_rdack_d1;
  input [1:0]s_axi_wdata;
  input hard_macro_rst_reg;
  input [8:0]\bus2ip_addr_i_reg[10] ;

  wire Bus_RNW_reg_i_1_n_0;
  wire [18:0]D;
  wire DWE;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire [0:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[6] ;
  wire \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack191_out ;
  wire \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_3_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_3_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[18]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[19]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[22]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[24]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[25]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[26]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[27]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[28]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[29]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[30]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[31]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_wrack_i_2_n_0 ;
  wire Intr2Bus_RdAck0;
  wire Q;
  wire [14:0]\alarm_reg_reg[14] ;
  wire [8:0]\bus2ip_addr_i_reg[10] ;
  wire [0:0]bus2ip_be;
  wire [2:0]bus2ip_rdce;
  wire bus2ip_rnw_i_reg;
  wire [0:0]bus2ip_wrce;
  wire convst_rst_wrce_or_reduce;
  wire cs_ce_clr;
  wire data_is_non_reset_match__4;
  wire [15:0]\do_reg_reg[15] ;
  wire drdy_wr_ack_i;
  wire drdy_wr_ack_i_d1_reg;
  wire dummy_bus2ip_rdce_intr;
  wire dummy_bus2ip_wrce_intr;
  wire dummy_intr_reg_rdack_d1;
  wire dummy_intr_reg_wrack;
  wire dummy_intr_reg_wrack_d1;
  wire dummy_local_reg_rdack0;
  wire dummy_local_reg_rdack_d1;
  wire dummy_local_reg_rdack_d10;
  wire dummy_local_reg_wrack;
  wire dummy_local_reg_wrack0;
  wire dummy_local_reg_wrack_d1;
  wire dummy_local_reg_wrack_d10;
  wire hard_macro_rst_reg;
  wire hard_macro_rst_reg_reg;
  wire hard_macro_rst_reg_reg_0;
  wire interrupt_wrce_strb;
  wire intr_ip2bus_wrack;
  wire ip2bus_rdack;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int1;
  wire [17:0]\ip_irpt_enable_reg_reg[17] ;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire jtaglocked_i;
  wire jtagmodified_d1;
  wire jtagmodified_i;
  wire local_rdce_or_reduce;
  wire local_reg_rdack0;
  wire local_reg_rdack_d1;
  wire local_reg_wrack;
  wire local_reg_wrack0;
  wire local_reg_wrack_d1;
  wire p_10_in;
  wire p_10_out;
  wire p_11_in;
  wire p_11_out;
  wire p_12_in;
  wire p_12_out;
  wire p_13_in;
  wire p_13_out;
  wire p_14_in;
  wire p_14_out;
  wire p_15_in;
  wire p_15_out;
  wire p_16_in;
  wire p_17_in;
  wire p_18_in;
  wire p_19_in;
  wire p_1_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in20_in;
  wire p_1_in23_in;
  wire p_1_in26_in;
  wire p_1_in29_in;
  wire p_1_in2_in;
  wire p_1_in32_in;
  wire p_1_in35_in;
  wire p_1_in38_in;
  wire p_1_in41_in;
  wire p_1_in44_in;
  wire p_1_in47_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire p_1_out;
  wire p_20_in;
  wire p_21_in;
  wire p_22_in;
  wire p_23_in;
  wire p_23_out;
  wire p_24_in;
  wire p_25_in;
  wire p_2_in;
  wire p_2_out;
  wire p_3_in;
  wire p_3_out;
  wire p_3_out_1;
  wire p_4_in;
  wire p_4_out;
  wire p_51_out__0;
  wire p_5_in;
  wire p_5_out;
  wire p_5_out_0;
  wire p_6_in;
  wire p_6_out;
  wire p_7_in;
  wire p_7_out;
  wire p_8_in;
  wire p_8_out;
  wire p_9_in;
  wire p_9_out;
  wire pselect_hit_i_0;
  wire reset_trig0;
  wire rst_ip2bus_error;
  wire rst_ip2bus_rdack0;
  wire rst_ip2bus_rdack_d1;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [1:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire status_reg_rdack0;
  wire status_reg_rdack_d1;
  wire [11:0]\status_reg_reg[11] ;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire wrack;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(bus2ip_rnw_i_reg),
        .I1(Q),
        .I2(hard_macro_rst_reg_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(hard_macro_rst_reg_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [4]),
        .I4(\bus2ip_addr_i_reg[10] [0]),
        .I5(\bus2ip_addr_i_reg[10] [2]),
        .O(p_7_out));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_7_out),
        .Q(p_25_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [0]),
        .I4(\bus2ip_addr_i_reg[10] [2]),
        .O(p_13_out));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_13_out),
        .Q(p_15_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [0]),
        .I4(\bus2ip_addr_i_reg[10] [2]),
        .O(p_12_out));
  FDRE \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_12_out),
        .Q(p_14_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [0]),
        .I4(\bus2ip_addr_i_reg[10] [2]),
        .O(p_11_out));
  FDRE \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_11_out),
        .Q(p_13_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [0]),
        .I4(\bus2ip_addr_i_reg[10] [2]),
        .O(p_10_out));
  FDRE \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_10_out),
        .Q(p_12_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [0]),
        .I4(\bus2ip_addr_i_reg[10] [2]),
        .O(p_9_out));
  FDRE \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_9_out),
        .Q(p_11_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [0]),
        .I4(\bus2ip_addr_i_reg[10] [2]),
        .O(p_8_out));
  FDRE \GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_8_out),
        .Q(p_10_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [0]),
        .I4(\bus2ip_addr_i_reg[10] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ),
        .Q(p_9_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [0]),
        .I4(\bus2ip_addr_i_reg[10] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ),
        .Q(p_8_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [0]),
        .I4(\bus2ip_addr_i_reg[10] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0 ),
        .Q(p_7_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [0]),
        .I4(\bus2ip_addr_i_reg[10] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0 ),
        .Q(p_6_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [4]),
        .I4(\bus2ip_addr_i_reg[10] [0]),
        .I5(\bus2ip_addr_i_reg[10] [2]),
        .O(p_6_out));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_6_out),
        .Q(p_24_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [0]),
        .I4(\bus2ip_addr_i_reg[10] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0 ),
        .Q(p_5_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [0]),
        .I4(\bus2ip_addr_i_reg[10] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0 ),
        .Q(p_4_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [0]),
        .I4(\bus2ip_addr_i_reg[10] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0 ),
        .Q(p_3_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [0]),
        .I4(\bus2ip_addr_i_reg[10] [2]),
        .O(p_15_out));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2 
       (.I0(Q),
        .I1(\bus2ip_addr_i_reg[10] [8]),
        .I2(\bus2ip_addr_i_reg[10] [5]),
        .I3(\bus2ip_addr_i_reg[10] [6]),
        .I4(\bus2ip_addr_i_reg[10] [7]),
        .I5(\bus2ip_addr_i_reg[10] [4]),
        .O(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_15_out),
        .Q(p_2_in),
        .R(cs_ce_clr));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1 
       (.I0(ip2bus_wrack),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[6] ),
        .I2(ip2bus_rdack),
        .I3(s_axi_aresetn),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_2 
       (.I0(\bus2ip_addr_i_reg[10] [8]),
        .I1(Q),
        .O(pselect_hit_i_0));
  FDRE \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(pselect_hit_i_0),
        .Q(drdy_wr_ack_i_d1_reg),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [4]),
        .I4(\bus2ip_addr_i_reg[10] [0]),
        .I5(\bus2ip_addr_i_reg[10] [2]),
        .O(p_5_out_0));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_5_out_0),
        .Q(p_23_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [4]),
        .I4(\bus2ip_addr_i_reg[10] [0]),
        .I5(\bus2ip_addr_i_reg[10] [2]),
        .O(p_4_out));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_4_out),
        .Q(p_22_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [4]),
        .I4(\bus2ip_addr_i_reg[10] [0]),
        .I5(\bus2ip_addr_i_reg[10] [2]),
        .O(p_3_out_1));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_3_out_1),
        .Q(p_21_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [4]),
        .I4(\bus2ip_addr_i_reg[10] [0]),
        .I5(\bus2ip_addr_i_reg[10] [2]),
        .O(p_2_out));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_2_out),
        .Q(p_20_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [4]),
        .I4(\bus2ip_addr_i_reg[10] [0]),
        .I5(\bus2ip_addr_i_reg[10] [2]),
        .O(p_1_out));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_1_out),
        .Q(p_19_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [4]),
        .I4(\bus2ip_addr_i_reg[10] [0]),
        .I5(\bus2ip_addr_i_reg[10] [2]),
        .O(p_23_out));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2 
       (.I0(\bus2ip_addr_i_reg[10] [7]),
        .I1(\bus2ip_addr_i_reg[10] [6]),
        .I2(\bus2ip_addr_i_reg[10] [5]),
        .I3(\bus2ip_addr_i_reg[10] [8]),
        .I4(Q),
        .O(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_23_out),
        .Q(p_18_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [0]),
        .I4(\bus2ip_addr_i_reg[10] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1_n_0 ),
        .Q(p_17_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1 
       (.I0(\bus2ip_addr_i_reg[10] [1]),
        .I1(\bus2ip_addr_i_reg[10] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[10] [0]),
        .I4(\bus2ip_addr_i_reg[10] [2]),
        .O(p_14_out));
  FDRE \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_14_out),
        .Q(p_16_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2 
       (.I0(irpt_wrack_d1),
        .I1(hard_macro_rst_reg_reg),
        .I2(bus2ip_be),
        .I3(p_9_in),
        .O(p_51_out__0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFF00FE00)) 
    \INTR_CTRLR_GEN_I.dummy_intr_reg_rdack_d1_i_1 
       (.I0(p_2_in),
        .I1(p_13_in),
        .I2(p_15_in),
        .I3(hard_macro_rst_reg_reg),
        .I4(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0 ),
        .O(dummy_bus2ip_rdce_intr));
  LUT6 #(
    .INIT(64'h00000000CCCCCCC8)) 
    \INTR_CTRLR_GEN_I.dummy_intr_reg_rdack_i_1 
       (.I0(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0 ),
        .I1(hard_macro_rst_reg_reg),
        .I2(p_15_in),
        .I3(p_13_in),
        .I4(p_2_in),
        .I5(dummy_intr_reg_rdack_d1),
        .O(p_5_out));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_1 
       (.I0(p_2_in),
        .I1(p_13_in),
        .I2(p_15_in),
        .I3(hard_macro_rst_reg_reg),
        .I4(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0 ),
        .O(dummy_bus2ip_wrce_intr));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2 
       (.I0(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_3_n_0 ),
        .I1(p_5_in),
        .I2(p_4_in),
        .I3(p_11_in),
        .I4(p_8_in),
        .O(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_3 
       (.I0(p_14_in),
        .I1(p_17_in),
        .I2(p_3_in),
        .I3(p_6_in),
        .I4(p_12_in),
        .I5(p_16_in),
        .O(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033333332)) 
    \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_i_1 
       (.I0(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0 ),
        .I1(hard_macro_rst_reg_reg),
        .I2(p_15_in),
        .I3(p_13_in),
        .I4(p_2_in),
        .I5(dummy_intr_reg_wrack_d1),
        .O(p_3_out));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[0]_i_1 
       (.I0(p_7_in),
        .I1(p_10_in),
        .I2(hard_macro_rst_reg_reg),
        .I3(p_9_in),
        .I4(bus2ip_be),
        .I5(ipif_glbl_irpt_enable_reg),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .I1(\ip_irpt_enable_reg_reg[17] [17]),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0 ),
        .I3(p_1_in),
        .I4(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack191_out ),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00A80000)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2 
       (.I0(p_7_in),
        .I1(bus2ip_rnw_i_reg),
        .I2(s_axi_wstrb),
        .I3(p_9_in),
        .I4(hard_macro_rst_reg_reg),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000100010000000)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3 
       (.I0(p_24_in),
        .I1(p_23_in),
        .I2(drdy_wr_ack_i_d1_reg),
        .I3(hard_macro_rst_reg_reg),
        .I4(jtagmodified_i),
        .I5(jtagmodified_d1),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4 
       (.I0(hard_macro_rst_reg_reg),
        .I1(p_9_in),
        .I2(s_axi_wstrb),
        .I3(bus2ip_rnw_i_reg),
        .O(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack191_out ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .I1(\ip_irpt_enable_reg_reg[17] [16]),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I3(jtaglocked_i),
        .I4(p_1_in2_in),
        .I5(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack191_out ),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2 
       (.I0(p_24_in),
        .I1(p_23_in),
        .I2(hard_macro_rst_reg_reg),
        .I3(drdy_wr_ack_i_d1_reg),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[16]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .I1(\ip_irpt_enable_reg_reg[17] [15]),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I3(\do_reg_reg[15] [15]),
        .I4(p_1_in5_in),
        .I5(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack191_out ),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack191_out ),
        .I1(p_1_in8_in),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2_n_0 ),
        .I3(\alarm_reg_reg[14] [14]),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_3_n_0 ),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2 
       (.I0(p_24_in),
        .I1(p_23_in),
        .I2(hard_macro_rst_reg_reg),
        .I3(drdy_wr_ack_i_d1_reg),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_3 
       (.I0(\do_reg_reg[15] [14]),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I2(\ip_irpt_enable_reg_reg[17] [14]),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[18]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack191_out ),
        .I1(p_1_in11_in),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2_n_0 ),
        .I3(\alarm_reg_reg[14] [13]),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int[18]_i_2_n_0 ),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[18]_i_2 
       (.I0(\do_reg_reg[15] [13]),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I2(\ip_irpt_enable_reg_reg[17] [13]),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[19]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack191_out ),
        .I1(p_1_in14_in),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2_n_0 ),
        .I3(\alarm_reg_reg[14] [12]),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int[19]_i_2_n_0 ),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[19]_i_2 
       (.I0(\do_reg_reg[15] [12]),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I2(\ip_irpt_enable_reg_reg[17] [12]),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack191_out ),
        .I2(p_1_in17_in),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2_n_0 ),
        .I4(\alarm_reg_reg[14] [11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I1(\do_reg_reg[15] [11]),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .I3(\ip_irpt_enable_reg_reg[17] [11]),
        .I4(\status_reg_reg[11] [11]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3 
       (.I0(p_23_in),
        .I1(p_24_in),
        .I2(hard_macro_rst_reg_reg),
        .I3(drdy_wr_ack_i_d1_reg),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack191_out ),
        .I2(p_1_in20_in),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2_n_0 ),
        .I4(\alarm_reg_reg[14] [10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I1(\do_reg_reg[15] [10]),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .I3(\ip_irpt_enable_reg_reg[17] [10]),
        .I4(\status_reg_reg[11] [10]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[22]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[22]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack191_out ),
        .I2(p_1_in23_in),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2_n_0 ),
        .I4(\alarm_reg_reg[14] [9]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[22]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I1(\do_reg_reg[15] [9]),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .I3(\ip_irpt_enable_reg_reg[17] [9]),
        .I4(\status_reg_reg[11] [9]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack191_out ),
        .I2(p_1_in26_in),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2_n_0 ),
        .I4(\alarm_reg_reg[14] [8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I1(\do_reg_reg[15] [8]),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .I3(\ip_irpt_enable_reg_reg[17] [8]),
        .I4(\status_reg_reg[11] [8]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[24]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[24]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack191_out ),
        .I2(p_1_in29_in),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2_n_0 ),
        .I4(\alarm_reg_reg[14] [7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[24]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I1(\do_reg_reg[15] [7]),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .I3(\ip_irpt_enable_reg_reg[17] [7]),
        .I4(\status_reg_reg[11] [7]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[25]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[25]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack191_out ),
        .I2(p_1_in32_in),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2_n_0 ),
        .I4(\alarm_reg_reg[14] [6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[25]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I1(\do_reg_reg[15] [6]),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .I3(\ip_irpt_enable_reg_reg[17] [6]),
        .I4(\status_reg_reg[11] [6]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[26]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[26]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack191_out ),
        .I2(p_1_in35_in),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2_n_0 ),
        .I4(\alarm_reg_reg[14] [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[26]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I1(\do_reg_reg[15] [5]),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .I3(\ip_irpt_enable_reg_reg[17] [5]),
        .I4(\status_reg_reg[11] [5]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[27]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[27]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack191_out ),
        .I2(p_1_in38_in),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2_n_0 ),
        .I4(\alarm_reg_reg[14] [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[27]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I1(\do_reg_reg[15] [4]),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .I3(\ip_irpt_enable_reg_reg[17] [4]),
        .I4(\status_reg_reg[11] [4]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[28]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[28]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack191_out ),
        .I2(p_1_in41_in),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2_n_0 ),
        .I4(\alarm_reg_reg[14] [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[28]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I1(\do_reg_reg[15] [3]),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .I3(\ip_irpt_enable_reg_reg[17] [3]),
        .I4(\status_reg_reg[11] [3]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[29]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[29]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack191_out ),
        .I2(p_1_in44_in),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2_n_0 ),
        .I4(\alarm_reg_reg[14] [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[29]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I1(\do_reg_reg[15] [2]),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .I3(\ip_irpt_enable_reg_reg[17] [2]),
        .I4(\status_reg_reg[11] [2]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[30]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[30]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack191_out ),
        .I2(p_1_in47_in),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2_n_0 ),
        .I4(\alarm_reg_reg[14] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[30]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I1(\do_reg_reg[15] [1]),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .I3(\ip_irpt_enable_reg_reg[17] [1]),
        .I4(\status_reg_reg[11] [1]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[31]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[31]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack191_out ),
        .I2(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2_n_0 ),
        .I4(\alarm_reg_reg[14] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[31]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I1(\do_reg_reg[15] [0]),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .I3(\ip_irpt_enable_reg_reg[17] [0]),
        .I4(\status_reg_reg[11] [0]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \INTR_CTRLR_GEN_I.ip2bus_error_i_5 
       (.I0(hard_macro_rst_reg_reg),
        .I1(p_25_in),
        .I2(data_is_non_reset_match__4),
        .O(rst_ip2bus_error));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \INTR_CTRLR_GEN_I.ip2bus_wrack_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_wrack_i_2_n_0 ),
        .I1(intr_ip2bus_wrack),
        .I2(dummy_intr_reg_wrack),
        .I3(wrack),
        .O(ip2bus_wrack_int1));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEEEEEE)) 
    \INTR_CTRLR_GEN_I.ip2bus_wrack_i_2 
       (.I0(drdy_wr_ack_i),
        .I1(dummy_local_reg_wrack),
        .I2(hard_macro_rst_reg_reg),
        .I3(p_25_in),
        .I4(data_is_non_reset_match__4),
        .I5(local_reg_wrack),
        .O(\INTR_CTRLR_GEN_I.ip2bus_wrack_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A0A0A080)) 
    Intr2Bus_RdAck_i_1
       (.I0(hard_macro_rst_reg_reg),
        .I1(p_7_in),
        .I2(bus2ip_be),
        .I3(p_10_in),
        .I4(p_9_in),
        .I5(irpt_rdack_d1),
        .O(Intr2Bus_RdAck0));
  LUT6 #(
    .INIT(64'h0000000050505040)) 
    Intr2Bus_WrAck_i_1
       (.I0(hard_macro_rst_reg_reg),
        .I1(p_7_in),
        .I2(bus2ip_be),
        .I3(p_9_in),
        .I4(p_10_in),
        .I5(irpt_wrack_d1),
        .O(interrupt_wrce_strb));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    drdy_rd_ack_i_d1_i_1
       (.I0(drdy_wr_ack_i_d1_reg),
        .I1(hard_macro_rst_reg_reg),
        .O(bus2ip_rdce[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    drdy_wr_ack_i_d1_i_1
       (.I0(drdy_wr_ack_i_d1_reg),
        .I1(hard_macro_rst_reg_reg),
        .O(bus2ip_wrce));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    dummy_local_reg_rdack_d1_i_1
       (.I0(p_20_in),
        .I1(p_19_in),
        .I2(p_18_in),
        .I3(hard_macro_rst_reg_reg),
        .O(dummy_local_reg_rdack_d10));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h0000AAA8)) 
    dummy_local_reg_rdack_i_1
       (.I0(hard_macro_rst_reg_reg),
        .I1(p_18_in),
        .I2(p_19_in),
        .I3(p_20_in),
        .I4(dummy_local_reg_rdack_d1),
        .O(dummy_local_reg_rdack0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    dummy_local_reg_wrack_d1_i_1
       (.I0(p_20_in),
        .I1(p_19_in),
        .I2(p_18_in),
        .I3(hard_macro_rst_reg_reg),
        .O(dummy_local_reg_wrack_d10));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00005554)) 
    dummy_local_reg_wrack_i_1
       (.I0(hard_macro_rst_reg_reg),
        .I1(p_18_in),
        .I2(p_19_in),
        .I3(p_20_in),
        .I4(dummy_local_reg_wrack_d1),
        .O(dummy_local_reg_wrack0));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    hard_macro_rst_reg_i_1
       (.I0(s_axi_wdata[0]),
        .I1(p_21_in),
        .I2(hard_macro_rst_reg_reg),
        .I3(p_22_in),
        .I4(hard_macro_rst_reg),
        .O(hard_macro_rst_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h04)) 
    inst_sysmon_i_2
       (.I0(hard_macro_rst_reg_reg),
        .I1(drdy_wr_ack_i_d1_reg),
        .I2(jtaglocked_i),
        .O(DWE));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    \ip_irpt_enable_reg[17]_i_1 
       (.I0(hard_macro_rst_reg_reg),
        .I1(p_7_in),
        .I2(s_axi_wstrb),
        .I3(bus2ip_rnw_i_reg),
        .O(E));
  LUT6 #(
    .INIT(64'hEFEFEFFF20202000)) 
    ipif_glbl_irpt_enable_reg_i_1
       (.I0(s_axi_wdata[1]),
        .I1(hard_macro_rst_reg_reg),
        .I2(p_10_in),
        .I3(s_axi_wstrb),
        .I4(bus2ip_rnw_i_reg),
        .I5(ipif_glbl_irpt_enable_reg),
        .O(ipif_glbl_irpt_enable_reg_reg));
  LUT6 #(
    .INIT(64'hFFF0EEE000000000)) 
    irpt_rdack_d1_i_1
       (.I0(p_9_in),
        .I1(p_10_in),
        .I2(bus2ip_rnw_i_reg),
        .I3(s_axi_wstrb),
        .I4(p_7_in),
        .I5(hard_macro_rst_reg_reg),
        .O(irpt_rdack));
  LUT6 #(
    .INIT(64'h00000000FFF0EEE0)) 
    irpt_wrack_d1_i_1
       (.I0(p_10_in),
        .I1(p_9_in),
        .I2(bus2ip_rnw_i_reg),
        .I3(s_axi_wstrb),
        .I4(p_7_in),
        .I5(hard_macro_rst_reg_reg),
        .O(irpt_wrack));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF0E0)) 
    local_reg_rdack_d1_i_1
       (.I0(p_23_in),
        .I1(p_22_in),
        .I2(hard_macro_rst_reg_reg),
        .I3(p_21_in),
        .O(local_rdce_or_reduce));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h0000CCC8)) 
    local_reg_rdack_i_1
       (.I0(p_21_in),
        .I1(hard_macro_rst_reg_reg),
        .I2(p_22_in),
        .I3(p_23_in),
        .I4(local_reg_rdack_d1),
        .O(local_reg_rdack0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    local_reg_wrack_d1_i_1
       (.I0(p_21_in),
        .I1(p_23_in),
        .I2(p_22_in),
        .I3(hard_macro_rst_reg_reg),
        .I4(p_24_in),
        .O(convst_rst_wrce_or_reduce));
  LUT6 #(
    .INIT(64'h0000000033333332)) 
    local_reg_wrack_i_1
       (.I0(p_24_in),
        .I1(hard_macro_rst_reg_reg),
        .I2(p_22_in),
        .I3(p_23_in),
        .I4(p_21_in),
        .I5(local_reg_wrack_d1),
        .O(local_reg_wrack0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    reset_trig_i_1
       (.I0(data_is_non_reset_match__4),
        .I1(p_25_in),
        .I2(hard_macro_rst_reg_reg),
        .I3(sw_rst_cond_d1),
        .O(reset_trig0));
  LUT2 #(
    .INIT(4'h8)) 
    rst_ip2bus_rdack_d1_i_1
       (.I0(p_25_in),
        .I1(hard_macro_rst_reg_reg),
        .O(bus2ip_rdce[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h08)) 
    rst_ip2bus_rdack_i_1
       (.I0(hard_macro_rst_reg_reg),
        .I1(p_25_in),
        .I2(rst_ip2bus_rdack_d1),
        .O(rst_ip2bus_rdack0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    status_reg_rdack_d1_i_1
       (.I0(p_24_in),
        .I1(hard_macro_rst_reg_reg),
        .O(bus2ip_rdce[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    status_reg_rdack_i_1
       (.I0(hard_macro_rst_reg_reg),
        .I1(p_24_in),
        .I2(status_reg_rdack_d1),
        .O(status_reg_rdack0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h04)) 
    sw_rst_cond_d1_i_1
       (.I0(hard_macro_rst_reg_reg),
        .I1(p_25_in),
        .I2(data_is_non_reset_match__4),
        .O(sw_rst_cond));
endmodule

module xcl_design_sys_mgmt_wiz_0_xcl_design_sys_mgmt_wiz_0_axi_lite_ipif
   (bus2ip_reset_active_high,
    drdy_wr_ack_i_d1_reg,
    s_axi_rresp,
    Bus_RNW_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_arready,
    s_axi_wready,
    DWE,
    bus2ip_wrce,
    D,
    bus2ip_rdce,
    reset2ip_reset,
    and_reduce_be,
    Intr2Bus_RdAck0,
    irpt_rdack,
    interrupt_wrce_strb,
    irpt_wrack,
    E,
    status_reg_rdack0,
    local_reg_wrack0,
    convst_rst_wrce_or_reduce,
    local_reg_rdack0,
    local_rdce_or_reduce,
    ip2bus_wrack_int1,
    rst_ip2bus_error,
    reset_trig0,
    sw_rst_cond,
    p_5_out,
    dummy_bus2ip_rdce_intr,
    p_3_out,
    dummy_bus2ip_wrce_intr,
    dummy_local_reg_rdack0,
    dummy_local_reg_rdack_d10,
    dummy_local_reg_wrack0,
    dummy_local_reg_wrack_d10,
    rst_ip2bus_rdack0,
    p_51_out__0,
    hard_macro_rst_reg_reg,
    ipif_glbl_irpt_enable_reg_reg,
    RESET,
    SR,
    \status_reg_reg[8] ,
    s_axi_rdata,
    s_axi_aclk,
    ip2bus_error,
    s_axi_arvalid,
    ip2bus_rdack,
    ip2bus_wrack,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_araddr,
    s_axi_awaddr,
    jtaglocked_i,
    Q,
    p_1_in,
    jtagmodified_i,
    jtagmodified_d1,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \alarm_reg_reg[14] ,
    \do_reg_reg[15] ,
    \status_reg_reg[11] ,
    p_1_in47_in,
    p_1_in44_in,
    p_1_in41_in,
    p_1_in38_in,
    p_1_in35_in,
    p_1_in32_in,
    p_1_in29_in,
    p_1_in26_in,
    p_1_in23_in,
    p_1_in20_in,
    p_1_in17_in,
    p_1_in14_in,
    p_1_in11_in,
    p_1_in8_in,
    p_1_in5_in,
    p_1_in2_in,
    \RESET_FLOPS[15].RST_FLOPS ,
    s_axi_wstrb,
    ipif_glbl_irpt_enable_reg,
    irpt_rdack_d1,
    irpt_wrack_d1,
    status_reg_rdack_d1,
    local_reg_wrack_d1,
    local_reg_rdack_d1,
    intr_ip2bus_wrack,
    dummy_intr_reg_wrack,
    wrack,
    drdy_wr_ack_i,
    dummy_local_reg_wrack,
    local_reg_wrack,
    sw_rst_cond_d1,
    s_axi_wdata,
    dummy_intr_reg_rdack_d1,
    dummy_intr_reg_wrack_d1,
    dummy_local_reg_rdack_d1,
    dummy_local_reg_wrack_d1,
    rst_ip2bus_rdack_d1,
    s_axi_rready,
    s_axi_bready,
    hard_macro_rst_reg,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] );
  output bus2ip_reset_active_high;
  output drdy_wr_ack_i_d1_reg;
  output [0:0]s_axi_rresp;
  output Bus_RNW_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output s_axi_arready;
  output s_axi_wready;
  output DWE;
  output [0:0]bus2ip_wrce;
  output [18:0]D;
  output [2:0]bus2ip_rdce;
  output reset2ip_reset;
  output and_reduce_be;
  output Intr2Bus_RdAck0;
  output irpt_rdack;
  output interrupt_wrce_strb;
  output irpt_wrack;
  output [0:0]E;
  output status_reg_rdack0;
  output local_reg_wrack0;
  output convst_rst_wrce_or_reduce;
  output local_reg_rdack0;
  output local_rdce_or_reduce;
  output ip2bus_wrack_int1;
  output rst_ip2bus_error;
  output reset_trig0;
  output sw_rst_cond;
  output p_5_out;
  output dummy_bus2ip_rdce_intr;
  output p_3_out;
  output dummy_bus2ip_wrce_intr;
  output dummy_local_reg_rdack0;
  output dummy_local_reg_rdack_d10;
  output dummy_local_reg_wrack0;
  output dummy_local_reg_wrack_d10;
  output rst_ip2bus_rdack0;
  output p_51_out__0;
  output hard_macro_rst_reg_reg;
  output ipif_glbl_irpt_enable_reg_reg;
  output RESET;
  output [0:0]SR;
  output [7:0]\status_reg_reg[8] ;
  output [18:0]s_axi_rdata;
  input s_axi_aclk;
  input ip2bus_error;
  input s_axi_arvalid;
  input ip2bus_rdack;
  input ip2bus_wrack;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [8:0]s_axi_araddr;
  input [8:0]s_axi_awaddr;
  input jtaglocked_i;
  input [17:0]Q;
  input p_1_in;
  input jtagmodified_i;
  input jtagmodified_d1;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input [14:0]\alarm_reg_reg[14] ;
  input [15:0]\do_reg_reg[15] ;
  input [11:0]\status_reg_reg[11] ;
  input p_1_in47_in;
  input p_1_in44_in;
  input p_1_in41_in;
  input p_1_in38_in;
  input p_1_in35_in;
  input p_1_in32_in;
  input p_1_in29_in;
  input p_1_in26_in;
  input p_1_in23_in;
  input p_1_in20_in;
  input p_1_in17_in;
  input p_1_in14_in;
  input p_1_in11_in;
  input p_1_in8_in;
  input p_1_in5_in;
  input p_1_in2_in;
  input \RESET_FLOPS[15].RST_FLOPS ;
  input [3:0]s_axi_wstrb;
  input ipif_glbl_irpt_enable_reg;
  input irpt_rdack_d1;
  input irpt_wrack_d1;
  input status_reg_rdack_d1;
  input local_reg_wrack_d1;
  input local_reg_rdack_d1;
  input intr_ip2bus_wrack;
  input dummy_intr_reg_wrack;
  input wrack;
  input drdy_wr_ack_i;
  input dummy_local_reg_wrack;
  input local_reg_wrack;
  input sw_rst_cond_d1;
  input [4:0]s_axi_wdata;
  input dummy_intr_reg_rdack_d1;
  input dummy_intr_reg_wrack_d1;
  input dummy_local_reg_rdack_d1;
  input dummy_local_reg_wrack_d1;
  input rst_ip2bus_rdack_d1;
  input s_axi_rready;
  input s_axi_bready;
  input hard_macro_rst_reg;
  input [18:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] ;

  wire Bus_RNW_reg;
  wire [18:0]D;
  wire DWE;
  wire [0:0]E;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire [18:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] ;
  wire Intr2Bus_RdAck0;
  wire [17:0]Q;
  wire RESET;
  wire \RESET_FLOPS[15].RST_FLOPS ;
  wire [0:0]SR;
  wire [14:0]\alarm_reg_reg[14] ;
  wire and_reduce_be;
  wire [2:0]bus2ip_rdce;
  wire bus2ip_reset_active_high;
  wire [0:0]bus2ip_wrce;
  wire convst_rst_wrce_or_reduce;
  wire [15:0]\do_reg_reg[15] ;
  wire drdy_wr_ack_i;
  wire drdy_wr_ack_i_d1_reg;
  wire dummy_bus2ip_rdce_intr;
  wire dummy_bus2ip_wrce_intr;
  wire dummy_intr_reg_rdack_d1;
  wire dummy_intr_reg_wrack;
  wire dummy_intr_reg_wrack_d1;
  wire dummy_local_reg_rdack0;
  wire dummy_local_reg_rdack_d1;
  wire dummy_local_reg_rdack_d10;
  wire dummy_local_reg_wrack;
  wire dummy_local_reg_wrack0;
  wire dummy_local_reg_wrack_d1;
  wire dummy_local_reg_wrack_d10;
  wire hard_macro_rst_reg;
  wire hard_macro_rst_reg_reg;
  wire interrupt_wrce_strb;
  wire intr_ip2bus_wrack;
  wire ip2bus_error;
  wire ip2bus_rdack;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int1;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire jtaglocked_i;
  wire jtagmodified_d1;
  wire jtagmodified_i;
  wire local_rdce_or_reduce;
  wire local_reg_rdack0;
  wire local_reg_rdack_d1;
  wire local_reg_wrack;
  wire local_reg_wrack0;
  wire local_reg_wrack_d1;
  wire p_1_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in20_in;
  wire p_1_in23_in;
  wire p_1_in26_in;
  wire p_1_in29_in;
  wire p_1_in2_in;
  wire p_1_in32_in;
  wire p_1_in35_in;
  wire p_1_in38_in;
  wire p_1_in41_in;
  wire p_1_in44_in;
  wire p_1_in47_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire p_3_out;
  wire p_51_out__0;
  wire p_5_out;
  wire reset2ip_reset;
  wire reset_trig0;
  wire rst_ip2bus_error;
  wire rst_ip2bus_rdack0;
  wire rst_ip2bus_rdack_d1;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [18:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [4:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire status_reg_rdack0;
  wire status_reg_rdack_d1;
  wire [11:0]\status_reg_reg[11] ;
  wire [7:0]\status_reg_reg[8] ;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire wrack;

  xcl_design_sys_mgmt_wiz_0_xcl_design_sys_mgmt_wiz_0_slave_attachment I_SLAVE_ATTACHMENT
       (.D(D),
        .DWE(DWE),
        .E(E),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] (\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] ),
        .Intr2Bus_RdAck0(Intr2Bus_RdAck0),
        .Q(Q),
        .RESET(RESET),
        .\RESET_FLOPS[15].RST_FLOPS (\RESET_FLOPS[15].RST_FLOPS ),
        .SR(bus2ip_reset_active_high),
        .\alarm_reg_reg[14] (\alarm_reg_reg[14] ),
        .and_reduce_be(and_reduce_be),
        .bus2ip_rdce(bus2ip_rdce),
        .bus2ip_wrce(bus2ip_wrce),
        .convst_rst_wrce_or_reduce(convst_rst_wrce_or_reduce),
        .\do_reg_reg[15] (SR),
        .\do_reg_reg[15]_0 (\do_reg_reg[15] ),
        .drdy_wr_ack_i(drdy_wr_ack_i),
        .drdy_wr_ack_i_d1_reg(drdy_wr_ack_i_d1_reg),
        .dummy_bus2ip_rdce_intr(dummy_bus2ip_rdce_intr),
        .dummy_bus2ip_wrce_intr(dummy_bus2ip_wrce_intr),
        .dummy_intr_reg_rdack_d1(dummy_intr_reg_rdack_d1),
        .dummy_intr_reg_wrack(dummy_intr_reg_wrack),
        .dummy_intr_reg_wrack_d1(dummy_intr_reg_wrack_d1),
        .dummy_local_reg_rdack0(dummy_local_reg_rdack0),
        .dummy_local_reg_rdack_d1(dummy_local_reg_rdack_d1),
        .dummy_local_reg_rdack_d10(dummy_local_reg_rdack_d10),
        .dummy_local_reg_wrack(dummy_local_reg_wrack),
        .dummy_local_reg_wrack0(dummy_local_reg_wrack0),
        .dummy_local_reg_wrack_d1(dummy_local_reg_wrack_d1),
        .dummy_local_reg_wrack_d10(dummy_local_reg_wrack_d10),
        .hard_macro_rst_reg(hard_macro_rst_reg),
        .hard_macro_rst_reg_reg(Bus_RNW_reg),
        .hard_macro_rst_reg_reg_0(hard_macro_rst_reg_reg),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr_ip2bus_wrack(intr_ip2bus_wrack),
        .ip2bus_error(ip2bus_error),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_wrack(ip2bus_wrack),
        .ip2bus_wrack_int1(ip2bus_wrack_int1),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(ipif_glbl_irpt_enable_reg_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .jtaglocked_i(jtaglocked_i),
        .jtagmodified_d1(jtagmodified_d1),
        .jtagmodified_i(jtagmodified_i),
        .local_rdce_or_reduce(local_rdce_or_reduce),
        .local_reg_rdack0(local_reg_rdack0),
        .local_reg_rdack_d1(local_reg_rdack_d1),
        .local_reg_wrack(local_reg_wrack),
        .local_reg_wrack0(local_reg_wrack0),
        .local_reg_wrack_d1(local_reg_wrack_d1),
        .p_1_in(p_1_in),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in20_in(p_1_in20_in),
        .p_1_in23_in(p_1_in23_in),
        .p_1_in26_in(p_1_in26_in),
        .p_1_in29_in(p_1_in29_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in32_in(p_1_in32_in),
        .p_1_in35_in(p_1_in35_in),
        .p_1_in38_in(p_1_in38_in),
        .p_1_in41_in(p_1_in41_in),
        .p_1_in44_in(p_1_in44_in),
        .p_1_in47_in(p_1_in47_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .p_3_out(p_3_out),
        .p_51_out__0(p_51_out__0),
        .p_5_out(p_5_out),
        .reset2ip_reset(reset2ip_reset),
        .reset_trig0(reset_trig0),
        .rst_ip2bus_error(rst_ip2bus_error),
        .rst_ip2bus_rdack0(rst_ip2bus_rdack0),
        .rst_ip2bus_rdack_d1(rst_ip2bus_rdack_d1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .status_reg_rdack0(status_reg_rdack0),
        .status_reg_rdack_d1(status_reg_rdack_d1),
        .\status_reg_reg[11] (\status_reg_reg[11] ),
        .\status_reg_reg[8] (\status_reg_reg[8] ),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1),
        .wrack(wrack));
endmodule

(* C_FAMILY = "virtex7" *) (* C_INCLUDE_INTR = "1" *) (* C_INSTANCE = "xcl_design_sys_mgmt_wiz_0_axi_xadc" *) 
(* C_SIM_MONITOR_FILE = "design.txt" *) (* C_S_AXI_ADDR_WIDTH = "13" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* hdl = "VHDL" *) (* ip_group = "LOGICORE" *) (* iptype = "PERIPHERAL" *) 
module xcl_design_sys_mgmt_wiz_0_xcl_design_sys_mgmt_wiz_0_axi_xadc
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    ip2intc_irpt,
    vp,
    vn,
    busy_out,
    channel_out,
    eoc_out,
    eos_out,
    alarm_out);
  (* max_fanout = "10000" *) (* sigis = "Clk" *) input s_axi_aclk;
  (* max_fanout = "10000" *) (* sigis = "Rst" *) input s_axi_aresetn;
  input [12:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [12:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  (* sigis = "INTR_LEVEL_HIGH" *) output ip2intc_irpt;
  input vp;
  input vn;
  output busy_out;
  output [5:0]channel_out;
  output eoc_out;
  output eos_out;
  output [15:0]alarm_out;

  wire \<const0> ;
  wire AXI_LITE_IPIF_I_n_1;
  wire AXI_LITE_IPIF_I_n_59;
  wire AXI_LITE_IPIF_I_n_60;
  wire AXI_LITE_IPIF_I_n_62;
  wire AXI_SYSMONE1_CORE_I_n_37;
  wire AXI_SYSMONE1_CORE_I_n_38;
  wire DWE;
  wire \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_1 ;
  wire \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_27 ;
  wire \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_32 ;
  wire \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_37 ;
  wire \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_39 ;
  wire \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_40 ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire Intr2Bus_RdAck0;
  wire RESET;
  wire SOFT_RESET_I_n_2;
  wire [15:0]alarm_out;
  wire [14:0]alarm_reg;
  wire and_reduce_be;
  wire [9:2]bus2ip_addr;
  wire [24:0]bus2ip_rdce;
  wire bus2ip_reset_active_high;
  wire [0:0]bus2ip_wrce;
  wire busy_out;
  wire [5:0]channel_out;
  wire convst_rst_wrce_or_reduce;
  wire [15:0]do_reg;
  wire drdy_wr_ack_i;
  wire dummy_bus2ip_rdce_intr;
  wire dummy_bus2ip_wrce_intr;
  wire dummy_intr_reg_rdack;
  wire dummy_intr_reg_rdack_d1;
  wire dummy_intr_reg_wrack;
  wire dummy_intr_reg_wrack_d1;
  wire dummy_local_reg_rdack;
  wire dummy_local_reg_rdack0;
  wire dummy_local_reg_rdack_d1;
  wire dummy_local_reg_rdack_d10;
  wire dummy_local_reg_wrack;
  wire dummy_local_reg_wrack0;
  wire dummy_local_reg_wrack_d1;
  wire dummy_local_reg_wrack_d10;
  wire eoc_out;
  wire eos_out;
  wire hard_macro_rst_reg;
  wire interrupt_wrce_strb;
  wire [0:0]intr_ip2bus_data;
  wire intr_ip2bus_wrack;
  wire [31:0]ip2bus_data;
  wire [14:31]ip2bus_data_int1;
  wire ip2bus_error;
  wire ip2bus_error_int1;
  wire ip2bus_rdack;
  wire ip2bus_rdack_int1;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int1;
  wire ip2intc_irpt;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire irpt_wrack_d11;
  wire jtaglocked_i;
  wire jtagmodified_d1;
  wire jtagmodified_i;
  wire local_rdce_or_reduce;
  wire local_reg_rdack0;
  wire local_reg_rdack_d1;
  wire local_reg_wrack;
  wire local_reg_wrack0;
  wire local_reg_wrack_d1;
  wire ot_i;
  wire p_0_in10_in;
  wire p_0_in13_in;
  wire p_0_in16_in;
  wire p_0_in1_in;
  wire p_0_in22_in;
  wire p_0_in25_in;
  wire p_0_in28_in;
  wire p_0_in31_in;
  wire p_0_in37_in;
  wire p_0_in40_in;
  wire p_0_in43_in;
  wire p_0_in46_in;
  wire p_0_in7_in;
  wire p_1_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in20_in;
  wire p_1_in23_in;
  wire p_1_in26_in;
  wire p_1_in29_in;
  wire p_1_in2_in;
  wire p_1_in32_in;
  wire p_1_in35_in;
  wire p_1_in38_in;
  wire p_1_in41_in;
  wire p_1_in44_in;
  wire p_1_in47_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire p_3_out;
  wire p_51_out__0;
  wire p_5_out;
  wire reset2ip_reset;
  wire reset_trig0;
  wire rst_ip2bus_error;
  wire rst_ip2bus_rdack;
  wire rst_ip2bus_rdack0;
  wire rst_ip2bus_rdack_d1;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) (* sigis = "Clk" *) wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) (* sigis = "Rst" *) wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [11:0]status_reg;
  wire status_reg_rdack0;
  wire status_reg_rdack_d1;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire vn;
  wire vp;
  wire wrack;
  wire xadc_ip2bus_rdack;

  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [31];
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17:0] = \^s_axi_rdata [17:0];
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  xcl_design_sys_mgmt_wiz_0_xcl_design_sys_mgmt_wiz_0_axi_lite_ipif AXI_LITE_IPIF_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .D({intr_ip2bus_data,ip2bus_data_int1[14],ip2bus_data_int1[15],ip2bus_data_int1[16],ip2bus_data_int1[17],ip2bus_data_int1[18],ip2bus_data_int1[19],ip2bus_data_int1[20],ip2bus_data_int1[21],ip2bus_data_int1[22],ip2bus_data_int1[23],ip2bus_data_int1[24],ip2bus_data_int1[25],ip2bus_data_int1[26],ip2bus_data_int1[27],ip2bus_data_int1[28],ip2bus_data_int1[29],ip2bus_data_int1[30],ip2bus_data_int1[31]}),
        .DWE(DWE),
        .E(irpt_wrack_d11),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_1 ),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] ({ip2bus_data[31],ip2bus_data[17:0]}),
        .Intr2Bus_RdAck0(Intr2Bus_RdAck0),
        .Q({p_0_in46_in,p_0_in43_in,p_0_in40_in,p_0_in37_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_27 ,p_0_in31_in,p_0_in28_in,p_0_in25_in,p_0_in22_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_32 ,p_0_in16_in,p_0_in13_in,p_0_in10_in,p_0_in7_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_37 ,p_0_in1_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_39 ,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_40 }),
        .RESET(RESET),
        .\RESET_FLOPS[15].RST_FLOPS (SOFT_RESET_I_n_2),
        .SR(AXI_LITE_IPIF_I_n_62),
        .\alarm_reg_reg[14] (alarm_reg),
        .and_reduce_be(and_reduce_be),
        .bus2ip_rdce({bus2ip_rdce[24:23],bus2ip_rdce[0]}),
        .bus2ip_reset_active_high(bus2ip_reset_active_high),
        .bus2ip_wrce(bus2ip_wrce),
        .convst_rst_wrce_or_reduce(convst_rst_wrce_or_reduce),
        .\do_reg_reg[15] (do_reg),
        .drdy_wr_ack_i(drdy_wr_ack_i),
        .drdy_wr_ack_i_d1_reg(AXI_LITE_IPIF_I_n_1),
        .dummy_bus2ip_rdce_intr(dummy_bus2ip_rdce_intr),
        .dummy_bus2ip_wrce_intr(dummy_bus2ip_wrce_intr),
        .dummy_intr_reg_rdack_d1(dummy_intr_reg_rdack_d1),
        .dummy_intr_reg_wrack(dummy_intr_reg_wrack),
        .dummy_intr_reg_wrack_d1(dummy_intr_reg_wrack_d1),
        .dummy_local_reg_rdack0(dummy_local_reg_rdack0),
        .dummy_local_reg_rdack_d1(dummy_local_reg_rdack_d1),
        .dummy_local_reg_rdack_d10(dummy_local_reg_rdack_d10),
        .dummy_local_reg_wrack(dummy_local_reg_wrack),
        .dummy_local_reg_wrack0(dummy_local_reg_wrack0),
        .dummy_local_reg_wrack_d1(dummy_local_reg_wrack_d1),
        .dummy_local_reg_wrack_d10(dummy_local_reg_wrack_d10),
        .hard_macro_rst_reg(hard_macro_rst_reg),
        .hard_macro_rst_reg_reg(AXI_LITE_IPIF_I_n_59),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr_ip2bus_wrack(intr_ip2bus_wrack),
        .ip2bus_error(ip2bus_error),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_wrack(ip2bus_wrack),
        .ip2bus_wrack_int1(ip2bus_wrack_int1),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(AXI_LITE_IPIF_I_n_60),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .jtaglocked_i(jtaglocked_i),
        .jtagmodified_d1(jtagmodified_d1),
        .jtagmodified_i(jtagmodified_i),
        .local_rdce_or_reduce(local_rdce_or_reduce),
        .local_reg_rdack0(local_reg_rdack0),
        .local_reg_rdack_d1(local_reg_rdack_d1),
        .local_reg_wrack(local_reg_wrack),
        .local_reg_wrack0(local_reg_wrack0),
        .local_reg_wrack_d1(local_reg_wrack_d1),
        .p_1_in(p_1_in),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in20_in(p_1_in20_in),
        .p_1_in23_in(p_1_in23_in),
        .p_1_in26_in(p_1_in26_in),
        .p_1_in29_in(p_1_in29_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in32_in(p_1_in32_in),
        .p_1_in35_in(p_1_in35_in),
        .p_1_in38_in(p_1_in38_in),
        .p_1_in41_in(p_1_in41_in),
        .p_1_in44_in(p_1_in44_in),
        .p_1_in47_in(p_1_in47_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .p_3_out(p_3_out),
        .p_51_out__0(p_51_out__0),
        .p_5_out(p_5_out),
        .reset2ip_reset(reset2ip_reset),
        .reset_trig0(reset_trig0),
        .rst_ip2bus_error(rst_ip2bus_error),
        .rst_ip2bus_rdack0(rst_ip2bus_rdack0),
        .rst_ip2bus_rdack_d1(rst_ip2bus_rdack_d1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[10:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[10:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata({\^s_axi_rdata [31],\^s_axi_rdata [17:0]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[31],s_axi_wdata[3:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .status_reg_rdack0(status_reg_rdack0),
        .status_reg_rdack_d1(status_reg_rdack_d1),
        .\status_reg_reg[11] (status_reg),
        .\status_reg_reg[8] (bus2ip_addr),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1),
        .wrack(wrack));
  xcl_design_sys_mgmt_wiz_0_xcl_design_sys_mgmt_wiz_0_xadc_core_drp AXI_SYSMONE1_CORE_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .D({jtaglocked_i,busy_out,channel_out}),
        .\DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg (AXI_SYSMONE1_CORE_I_n_38),
        .\DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg (AXI_SYSMONE1_CORE_I_n_37),
        .DWE(DWE),
        .\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] (AXI_LITE_IPIF_I_n_1),
        .\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] (AXI_LITE_IPIF_I_n_59),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] (alarm_reg),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] (status_reg),
        .Q(do_reg),
        .RESET(RESET),
        .\RESET_FLOPS[15].RST_FLOPS (SOFT_RESET_I_n_2),
        .SR(AXI_LITE_IPIF_I_n_62),
        .alarm_out(alarm_out[15:14]),
        .\alarm_reg_reg[14]_0 ({alarm_out[13:0],ot_i}),
        .and_reduce_be(and_reduce_be),
        .\bus2ip_addr_i_reg[9] (bus2ip_addr),
        .bus2ip_rdce({bus2ip_rdce[23],bus2ip_rdce[0]}),
        .bus2ip_reset_active_high(bus2ip_reset_active_high),
        .bus2ip_wrce(bus2ip_wrce),
        .convst_rst_wrce_or_reduce(convst_rst_wrce_or_reduce),
        .drdy_wr_ack_i(drdy_wr_ack_i),
        .eoc_out(eoc_out),
        .eos_out(eos_out),
        .hard_macro_rst_reg(hard_macro_rst_reg),
        .ip2bus_error_int1(ip2bus_error_int1),
        .jtagmodified_d1(jtagmodified_d1),
        .jtagmodified_i(jtagmodified_i),
        .local_rdce_or_reduce(local_rdce_or_reduce),
        .local_reg_rdack0(local_reg_rdack0),
        .local_reg_rdack_d1(local_reg_rdack_d1),
        .local_reg_wrack(local_reg_wrack),
        .local_reg_wrack0(local_reg_wrack0),
        .local_reg_wrack_d1(local_reg_wrack_d1),
        .reset2ip_reset(reset2ip_reset),
        .rst_ip2bus_error(rst_ip2bus_error),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[15:0]),
        .status_reg_rdack0(status_reg_rdack0),
        .status_reg_rdack_d1(status_reg_rdack_d1),
        .vn(vn),
        .vp(vp),
        .xadc_ip2bus_rdack(xadc_ip2bus_rdack));
  GND GND
       (.G(\<const0> ));
  xcl_design_sys_mgmt_wiz_0_xcl_design_sys_mgmt_wiz_0_interrupt_control \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I 
       (.Bus_RNW_reg_reg(AXI_LITE_IPIF_I_n_60),
        .D(jtaglocked_i),
        .E(irpt_wrack_d11),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_1 ),
        .Intr2Bus_RdAck0(Intr2Bus_RdAck0),
        .Q({p_0_in46_in,p_0_in43_in,p_0_in40_in,p_0_in37_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_27 ,p_0_in31_in,p_0_in28_in,p_0_in25_in,p_0_in22_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_32 ,p_0_in16_in,p_0_in13_in,p_0_in10_in,p_0_in7_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_37 ,p_0_in1_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_39 ,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_40 }),
        .alarm_0_d1_reg(AXI_SYSMONE1_CORE_I_n_37),
        .\bus2ip_addr_i_reg[9] ({alarm_out[11:8],alarm_out[6:0],ot_i}),
        .dummy_intr_reg_rdack(dummy_intr_reg_rdack),
        .dummy_local_reg_rdack(dummy_local_reg_rdack),
        .eoc_out(eoc_out),
        .eos_out(eos_out),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr_ip2bus_wrack(intr_ip2bus_wrack),
        .ip2bus_rdack_int1(ip2bus_rdack_int1),
        .ip2intc_irpt(ip2intc_irpt),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .jtagmodified_i(jtagmodified_i),
        .ot_d1_reg(AXI_SYSMONE1_CORE_I_n_38),
        .p_1_in(p_1_in),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in20_in(p_1_in20_in),
        .p_1_in23_in(p_1_in23_in),
        .p_1_in26_in(p_1_in26_in),
        .p_1_in29_in(p_1_in29_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in32_in(p_1_in32_in),
        .p_1_in35_in(p_1_in35_in),
        .p_1_in38_in(p_1_in38_in),
        .p_1_in41_in(p_1_in41_in),
        .p_1_in44_in(p_1_in44_in),
        .p_1_in47_in(p_1_in47_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .p_51_out__0(p_51_out__0),
        .reset2ip_reset(reset2ip_reset),
        .rst_ip2bus_rdack(rst_ip2bus_rdack),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[17:0]),
        .xadc_ip2bus_rdack(xadc_ip2bus_rdack));
  FDRE \INTR_CTRLR_GEN_I.dummy_intr_reg_rdack_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_bus2ip_rdce_intr),
        .Q(dummy_intr_reg_rdack_d1),
        .R(reset2ip_reset));
  FDRE \INTR_CTRLR_GEN_I.dummy_intr_reg_rdack_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_5_out),
        .Q(dummy_intr_reg_rdack),
        .R(reset2ip_reset));
  FDRE \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_bus2ip_wrce_intr),
        .Q(dummy_intr_reg_wrack_d1),
        .R(reset2ip_reset));
  FDRE \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out),
        .Q(dummy_intr_reg_wrack),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_ip2bus_data),
        .Q(ip2bus_data[31]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[14]),
        .Q(ip2bus_data[17]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[15]),
        .Q(ip2bus_data[16]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[16]),
        .Q(ip2bus_data[15]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[17]),
        .Q(ip2bus_data[14]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[18]),
        .Q(ip2bus_data[13]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[19]),
        .Q(ip2bus_data[12]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[20]),
        .Q(ip2bus_data[11]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[21]),
        .Q(ip2bus_data[10]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[22]),
        .Q(ip2bus_data[9]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[23]),
        .Q(ip2bus_data[8]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[24]),
        .Q(ip2bus_data[7]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[25]),
        .Q(ip2bus_data[6]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[26]),
        .Q(ip2bus_data[5]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[27]),
        .Q(ip2bus_data[4]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[28]),
        .Q(ip2bus_data[3]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[29]),
        .Q(ip2bus_data[2]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[30]),
        .Q(ip2bus_data[1]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[31]),
        .Q(ip2bus_data[0]),
        .R(reset2ip_reset));
  FDRE \INTR_CTRLR_GEN_I.ip2bus_error_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_error_int1),
        .Q(ip2bus_error),
        .R(reset2ip_reset));
  FDRE \INTR_CTRLR_GEN_I.ip2bus_rdack_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_int1),
        .Q(ip2bus_rdack),
        .R(reset2ip_reset));
  FDRE \INTR_CTRLR_GEN_I.ip2bus_wrack_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_int1),
        .Q(ip2bus_wrack),
        .R(reset2ip_reset));
  xcl_design_sys_mgmt_wiz_0_xcl_design_sys_mgmt_wiz_0_soft_reset SOFT_RESET_I
       (.FF_WRACK_0(SOFT_RESET_I_n_2),
        .bus2ip_reset_active_high(bus2ip_reset_active_high),
        .reset_trig0(reset_trig0),
        .s_axi_aclk(s_axi_aclk),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1),
        .wrack(wrack));
  FDRE dummy_local_reg_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_local_reg_rdack_d10),
        .Q(dummy_local_reg_rdack_d1),
        .R(reset2ip_reset));
  FDRE dummy_local_reg_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_local_reg_rdack0),
        .Q(dummy_local_reg_rdack),
        .R(reset2ip_reset));
  FDRE dummy_local_reg_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_local_reg_wrack_d10),
        .Q(dummy_local_reg_wrack_d1),
        .R(reset2ip_reset));
  FDRE dummy_local_reg_wrack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_local_reg_wrack0),
        .Q(dummy_local_reg_wrack),
        .R(reset2ip_reset));
  FDRE rst_ip2bus_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdce[24]),
        .Q(rst_ip2bus_rdack_d1),
        .R(reset2ip_reset));
  FDRE rst_ip2bus_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_ip2bus_rdack0),
        .Q(rst_ip2bus_rdack),
        .R(reset2ip_reset));
endmodule

module xcl_design_sys_mgmt_wiz_0_xcl_design_sys_mgmt_wiz_0_interrupt_control
   (irpt_wrack_d1,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    p_1_in47_in,
    p_1_in44_in,
    p_1_in41_in,
    p_1_in38_in,
    p_1_in35_in,
    p_1_in32_in,
    p_1_in29_in,
    p_1_in26_in,
    p_1_in23_in,
    p_1_in20_in,
    p_1_in17_in,
    p_1_in14_in,
    p_1_in11_in,
    p_1_in8_in,
    p_1_in5_in,
    p_1_in2_in,
    p_1_in,
    intr_ip2bus_wrack,
    irpt_rdack_d1,
    ipif_glbl_irpt_enable_reg,
    ip2intc_irpt,
    Q,
    ip2bus_rdack_int1,
    reset2ip_reset,
    irpt_wrack,
    s_axi_aclk,
    \bus2ip_addr_i_reg[9] ,
    eos_out,
    eoc_out,
    D,
    jtagmodified_i,
    ot_d1_reg,
    alarm_0_d1_reg,
    interrupt_wrce_strb,
    irpt_rdack,
    Intr2Bus_RdAck0,
    Bus_RNW_reg_reg,
    p_51_out__0,
    s_axi_wdata,
    rst_ip2bus_rdack,
    dummy_intr_reg_rdack,
    xadc_ip2bus_rdack,
    dummy_local_reg_rdack,
    E);
  output irpt_wrack_d1;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  output p_1_in47_in;
  output p_1_in44_in;
  output p_1_in41_in;
  output p_1_in38_in;
  output p_1_in35_in;
  output p_1_in32_in;
  output p_1_in29_in;
  output p_1_in26_in;
  output p_1_in23_in;
  output p_1_in20_in;
  output p_1_in17_in;
  output p_1_in14_in;
  output p_1_in11_in;
  output p_1_in8_in;
  output p_1_in5_in;
  output p_1_in2_in;
  output p_1_in;
  output intr_ip2bus_wrack;
  output irpt_rdack_d1;
  output ipif_glbl_irpt_enable_reg;
  output ip2intc_irpt;
  output [17:0]Q;
  output ip2bus_rdack_int1;
  input reset2ip_reset;
  input irpt_wrack;
  input s_axi_aclk;
  input [11:0]\bus2ip_addr_i_reg[9] ;
  input eos_out;
  input eoc_out;
  input [0:0]D;
  input jtagmodified_i;
  input ot_d1_reg;
  input alarm_0_d1_reg;
  input interrupt_wrce_strb;
  input irpt_rdack;
  input Intr2Bus_RdAck0;
  input Bus_RNW_reg_reg;
  input p_51_out__0;
  input [17:0]s_axi_wdata;
  input rst_ip2bus_rdack;
  input dummy_intr_reg_rdack;
  input xadc_ip2bus_rdack;
  input dummy_local_reg_rdack;
  input [0:0]E;

  wire Bus_RNW_reg_reg;
  wire [0:0]D;
  wire \DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire [0:0]E;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[14].GEN_REG_STATUS.ip_irpt_status_reg[14]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[15].GEN_REG_STATUS.ip_irpt_status_reg[15]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[16].GEN_REG_STATUS.ip_irpt_status_reg[16]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg[17]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg[9]_i_1_n_0 ;
  wire Intr2Bus_RdAck0;
  wire [17:0]Q;
  wire alarm_0_d1_reg;
  wire [11:0]\bus2ip_addr_i_reg[9] ;
  wire dummy_intr_reg_rdack;
  wire dummy_local_reg_rdack;
  wire eoc_out;
  wire eos_out;
  wire interrupt_wrce_strb;
  wire intr_ip2bus_rdack;
  wire intr_ip2bus_wrack;
  wire ip2bus_rdack_int1;
  wire ip2intc_irpt;
  wire ip2intc_irpt_INST_0_i_1_n_0;
  wire ip2intc_irpt_INST_0_i_2_n_0;
  wire ip2intc_irpt_INST_0_i_3_n_0;
  wire ip2intc_irpt_INST_0_i_4_n_0;
  wire ip2intc_irpt_INST_0_i_5_n_0;
  wire ip2intc_irpt_INST_0_i_6_n_0;
  wire ip2intc_irpt_INST_0_i_7_n_0;
  wire ip2intc_irpt_INST_0_i_8_n_0;
  wire ip2intc_irpt_INST_0_i_9_n_0;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_dly1;
  wire irpt_dly2;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire jtagmodified_i;
  wire ot_d1_reg;
  wire p_1_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in20_in;
  wire p_1_in23_in;
  wire p_1_in26_in;
  wire p_1_in29_in;
  wire p_1_in2_in;
  wire p_1_in32_in;
  wire p_1_in35_in;
  wire p_1_in38_in;
  wire p_1_in41_in;
  wire p_1_in44_in;
  wire p_1_in47_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire p_51_out__0;
  wire reset2ip_reset;
  wire rst_ip2bus_rdack;
  wire s_axi_aclk;
  wire [17:0]s_axi_wdata;
  wire xadc_ip2bus_rdack;

  FDSE \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i_reg[9] [0]),
        .Q(irpt_dly1),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_dly1),
        .Q(irpt_dly2),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i_reg[9] [4]),
        .Q(\DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i_reg[9] [5]),
        .Q(\DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i_reg[9] [6]),
        .Q(\DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i_reg[9] [7]),
        .Q(\DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i_reg[9] [8]),
        .Q(\DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i_reg[9] [9]),
        .Q(\DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i_reg[9] [10]),
        .Q(\DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i_reg[9] [11]),
        .Q(\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i_reg[9] [1]),
        .Q(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i_reg[9] [2]),
        .Q(\DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i_reg[9] [3]),
        .Q(\DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(eos_out),
        .Q(\DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(eoc_out),
        .Q(\DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(\DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(jtagmodified_i),
        .Q(\DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ot_d1_reg),
        .Q(\DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(alarm_0_d1_reg),
        .Q(\DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  LUT5 #(
    .INIT(32'h75BAFF30)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 
       (.I0(p_51_out__0),
        .I1(irpt_dly2),
        .I2(irpt_dly1),
        .I3(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .I4(s_axi_wdata[0]),
        .O(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ),
        .Q(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h75BAFF30)) 
    \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1 
       (.I0(p_51_out__0),
        .I1(\DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I2(\DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I3(p_1_in20_in),
        .I4(s_axi_wdata[10]),
        .O(\GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1_n_0 ),
        .Q(p_1_in20_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h75BAFF30)) 
    \GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1 
       (.I0(p_51_out__0),
        .I1(\DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I2(\DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I3(p_1_in17_in),
        .I4(s_axi_wdata[11]),
        .O(\GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1_n_0 ),
        .Q(p_1_in17_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h75BAFF30)) 
    \GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1 
       (.I0(p_51_out__0),
        .I1(\DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I2(\DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I3(p_1_in14_in),
        .I4(s_axi_wdata[12]),
        .O(\GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1_n_0 ),
        .Q(p_1_in14_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h75BAFF30)) 
    \GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1 
       (.I0(p_51_out__0),
        .I1(\DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I2(\DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I3(p_1_in11_in),
        .I4(s_axi_wdata[13]),
        .O(\GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1_n_0 ),
        .Q(p_1_in11_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h75BAFF30)) 
    \GEN_IP_IRPT_STATUS_REG[14].GEN_REG_STATUS.ip_irpt_status_reg[14]_i_1 
       (.I0(p_51_out__0),
        .I1(\DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I2(\DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I3(p_1_in8_in),
        .I4(s_axi_wdata[14]),
        .O(\GEN_IP_IRPT_STATUS_REG[14].GEN_REG_STATUS.ip_irpt_status_reg[14]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[14].GEN_REG_STATUS.ip_irpt_status_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[14].GEN_REG_STATUS.ip_irpt_status_reg[14]_i_1_n_0 ),
        .Q(p_1_in8_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h75BAFF30)) 
    \GEN_IP_IRPT_STATUS_REG[15].GEN_REG_STATUS.ip_irpt_status_reg[15]_i_1 
       (.I0(p_51_out__0),
        .I1(\DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I2(\DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I3(p_1_in5_in),
        .I4(s_axi_wdata[15]),
        .O(\GEN_IP_IRPT_STATUS_REG[15].GEN_REG_STATUS.ip_irpt_status_reg[15]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[15].GEN_REG_STATUS.ip_irpt_status_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[15].GEN_REG_STATUS.ip_irpt_status_reg[15]_i_1_n_0 ),
        .Q(p_1_in5_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h75BAFF30)) 
    \GEN_IP_IRPT_STATUS_REG[16].GEN_REG_STATUS.ip_irpt_status_reg[16]_i_1 
       (.I0(p_51_out__0),
        .I1(\DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I2(\DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I3(p_1_in2_in),
        .I4(s_axi_wdata[16]),
        .O(\GEN_IP_IRPT_STATUS_REG[16].GEN_REG_STATUS.ip_irpt_status_reg[16]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[16].GEN_REG_STATUS.ip_irpt_status_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[16].GEN_REG_STATUS.ip_irpt_status_reg[16]_i_1_n_0 ),
        .Q(p_1_in2_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h75BAFF30)) 
    \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg[17]_i_1 
       (.I0(p_51_out__0),
        .I1(\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I2(\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I3(p_1_in),
        .I4(s_axi_wdata[17]),
        .O(\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg[17]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg[17]_i_1_n_0 ),
        .Q(p_1_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h75BAFF30)) 
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1 
       (.I0(p_51_out__0),
        .I1(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I2(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I3(p_1_in47_in),
        .I4(s_axi_wdata[1]),
        .O(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ),
        .Q(p_1_in47_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h75BAFF30)) 
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1 
       (.I0(p_51_out__0),
        .I1(\DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I2(\DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I3(p_1_in44_in),
        .I4(s_axi_wdata[2]),
        .O(\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0 ),
        .Q(p_1_in44_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h75BAFF30)) 
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1 
       (.I0(p_51_out__0),
        .I1(\DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I2(\DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I3(p_1_in41_in),
        .I4(s_axi_wdata[3]),
        .O(\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0 ),
        .Q(p_1_in41_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h75BAFF30)) 
    \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1 
       (.I0(p_51_out__0),
        .I1(\DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I2(\DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I3(p_1_in38_in),
        .I4(s_axi_wdata[4]),
        .O(\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0 ),
        .Q(p_1_in38_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h75BAFF30)) 
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1 
       (.I0(p_51_out__0),
        .I1(\DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I2(\DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I3(p_1_in35_in),
        .I4(s_axi_wdata[5]),
        .O(\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0 ),
        .Q(p_1_in35_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h75BAFF30)) 
    \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1 
       (.I0(p_51_out__0),
        .I1(\DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I2(\DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I3(p_1_in32_in),
        .I4(s_axi_wdata[6]),
        .O(\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0 ),
        .Q(p_1_in32_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h75BAFF30)) 
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1 
       (.I0(p_51_out__0),
        .I1(\DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I2(\DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I3(p_1_in29_in),
        .I4(s_axi_wdata[7]),
        .O(\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0 ),
        .Q(p_1_in29_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h75BAFF30)) 
    \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_1 
       (.I0(p_51_out__0),
        .I1(\DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I2(\DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I3(p_1_in26_in),
        .I4(s_axi_wdata[8]),
        .O(\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_1_n_0 ),
        .Q(p_1_in26_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h75BAFF30)) 
    \GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg[9]_i_1 
       (.I0(p_51_out__0),
        .I1(\DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I2(\DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I3(p_1_in23_in),
        .I4(s_axi_wdata[9]),
        .O(\GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg[9]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg[9]_i_1_n_0 ),
        .Q(p_1_in23_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \INTR_CTRLR_GEN_I.ip2bus_rdack_i_1 
       (.I0(intr_ip2bus_rdack),
        .I1(rst_ip2bus_rdack),
        .I2(dummy_intr_reg_rdack),
        .I3(xadc_ip2bus_rdack),
        .I4(dummy_local_reg_rdack),
        .O(ip2bus_rdack_int1));
  FDRE Intr2Bus_RdAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Intr2Bus_RdAck0),
        .Q(intr_ip2bus_rdack),
        .R(reset2ip_reset));
  FDRE Intr2Bus_WrAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(interrupt_wrce_strb),
        .Q(intr_ip2bus_wrack),
        .R(reset2ip_reset));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    ip2intc_irpt_INST_0
       (.I0(ipif_glbl_irpt_enable_reg),
        .I1(ip2intc_irpt_INST_0_i_1_n_0),
        .I2(ip2intc_irpt_INST_0_i_2_n_0),
        .I3(ip2intc_irpt_INST_0_i_3_n_0),
        .I4(ip2intc_irpt_INST_0_i_4_n_0),
        .I5(ip2intc_irpt_INST_0_i_5_n_0),
        .O(ip2intc_irpt));
  LUT4 #(
    .INIT(16'hF888)) 
    ip2intc_irpt_INST_0_i_1
       (.I0(Q[12]),
        .I1(p_1_in14_in),
        .I2(Q[11]),
        .I3(p_1_in17_in),
        .O(ip2intc_irpt_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    ip2intc_irpt_INST_0_i_2
       (.I0(p_1_in23_in),
        .I1(Q[9]),
        .I2(p_1_in20_in),
        .I3(Q[10]),
        .I4(ip2intc_irpt_INST_0_i_6_n_0),
        .O(ip2intc_irpt_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    ip2intc_irpt_INST_0_i_3
       (.I0(p_1_in35_in),
        .I1(Q[5]),
        .I2(p_1_in32_in),
        .I3(Q[6]),
        .I4(ip2intc_irpt_INST_0_i_7_n_0),
        .O(ip2intc_irpt_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ip2intc_irpt_INST_0_i_4
       (.I0(Q[1]),
        .I1(p_1_in47_in),
        .I2(Q[2]),
        .I3(p_1_in44_in),
        .O(ip2intc_irpt_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    ip2intc_irpt_INST_0_i_5
       (.I0(ip2intc_irpt_INST_0_i_8_n_0),
        .I1(Q[16]),
        .I2(p_1_in2_in),
        .I3(Q[15]),
        .I4(p_1_in5_in),
        .I5(ip2intc_irpt_INST_0_i_9_n_0),
        .O(ip2intc_irpt_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ip2intc_irpt_INST_0_i_6
       (.I0(Q[8]),
        .I1(p_1_in26_in),
        .I2(Q[7]),
        .I3(p_1_in29_in),
        .O(ip2intc_irpt_INST_0_i_6_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ip2intc_irpt_INST_0_i_7
       (.I0(Q[4]),
        .I1(p_1_in38_in),
        .I2(Q[3]),
        .I3(p_1_in41_in),
        .O(ip2intc_irpt_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ip2intc_irpt_INST_0_i_8
       (.I0(Q[14]),
        .I1(p_1_in8_in),
        .I2(Q[13]),
        .I3(p_1_in11_in),
        .O(ip2intc_irpt_INST_0_i_8_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ip2intc_irpt_INST_0_i_9
       (.I0(Q[0]),
        .I1(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .I2(Q[17]),
        .I3(p_1_in),
        .O(ip2intc_irpt_INST_0_i_9_n_0));
  FDRE \ip_irpt_enable_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[10]),
        .Q(Q[10]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[11]),
        .Q(Q[11]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[12]),
        .Q(Q[12]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[13]),
        .Q(Q[13]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[14]),
        .Q(Q[14]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[15]),
        .Q(Q[15]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[16]),
        .Q(Q[16]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[17]),
        .Q(Q[17]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(Q[1]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(Q[2]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(Q[3]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(Q[4]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[5]),
        .Q(Q[5]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(Q[6]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(Q[7]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[8]),
        .Q(Q[8]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[9]),
        .Q(Q[9]),
        .R(reset2ip_reset));
  FDRE ipif_glbl_irpt_enable_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg),
        .Q(ipif_glbl_irpt_enable_reg),
        .R(reset2ip_reset));
  FDRE irpt_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_rdack),
        .Q(irpt_rdack_d1),
        .R(reset2ip_reset));
  FDRE irpt_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_wrack),
        .Q(irpt_wrack_d1),
        .R(reset2ip_reset));
endmodule

module xcl_design_sys_mgmt_wiz_0_xcl_design_sys_mgmt_wiz_0_slave_attachment
   (SR,
    drdy_wr_ack_i_d1_reg,
    s_axi_rresp,
    hard_macro_rst_reg_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_arready,
    s_axi_wready,
    DWE,
    bus2ip_wrce,
    D,
    bus2ip_rdce,
    reset2ip_reset,
    and_reduce_be,
    Intr2Bus_RdAck0,
    irpt_rdack,
    interrupt_wrce_strb,
    irpt_wrack,
    E,
    status_reg_rdack0,
    local_reg_wrack0,
    convst_rst_wrce_or_reduce,
    local_reg_rdack0,
    local_rdce_or_reduce,
    ip2bus_wrack_int1,
    rst_ip2bus_error,
    reset_trig0,
    sw_rst_cond,
    p_5_out,
    dummy_bus2ip_rdce_intr,
    p_3_out,
    dummy_bus2ip_wrce_intr,
    dummy_local_reg_rdack0,
    dummy_local_reg_rdack_d10,
    dummy_local_reg_wrack0,
    dummy_local_reg_wrack_d10,
    rst_ip2bus_rdack0,
    p_51_out__0,
    hard_macro_rst_reg_reg_0,
    ipif_glbl_irpt_enable_reg_reg,
    RESET,
    \do_reg_reg[15] ,
    \status_reg_reg[8] ,
    s_axi_rdata,
    s_axi_aclk,
    ip2bus_error,
    s_axi_arvalid,
    ip2bus_rdack,
    ip2bus_wrack,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_araddr,
    s_axi_awaddr,
    jtaglocked_i,
    Q,
    p_1_in,
    jtagmodified_i,
    jtagmodified_d1,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \alarm_reg_reg[14] ,
    \do_reg_reg[15]_0 ,
    \status_reg_reg[11] ,
    p_1_in47_in,
    p_1_in44_in,
    p_1_in41_in,
    p_1_in38_in,
    p_1_in35_in,
    p_1_in32_in,
    p_1_in29_in,
    p_1_in26_in,
    p_1_in23_in,
    p_1_in20_in,
    p_1_in17_in,
    p_1_in14_in,
    p_1_in11_in,
    p_1_in8_in,
    p_1_in5_in,
    p_1_in2_in,
    \RESET_FLOPS[15].RST_FLOPS ,
    s_axi_wstrb,
    ipif_glbl_irpt_enable_reg,
    irpt_rdack_d1,
    irpt_wrack_d1,
    status_reg_rdack_d1,
    local_reg_wrack_d1,
    local_reg_rdack_d1,
    intr_ip2bus_wrack,
    dummy_intr_reg_wrack,
    wrack,
    drdy_wr_ack_i,
    dummy_local_reg_wrack,
    local_reg_wrack,
    sw_rst_cond_d1,
    s_axi_wdata,
    dummy_intr_reg_rdack_d1,
    dummy_intr_reg_wrack_d1,
    dummy_local_reg_rdack_d1,
    dummy_local_reg_wrack_d1,
    rst_ip2bus_rdack_d1,
    s_axi_rready,
    s_axi_bready,
    hard_macro_rst_reg,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] );
  output SR;
  output drdy_wr_ack_i_d1_reg;
  output [0:0]s_axi_rresp;
  output hard_macro_rst_reg_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output s_axi_arready;
  output s_axi_wready;
  output DWE;
  output [0:0]bus2ip_wrce;
  output [18:0]D;
  output [2:0]bus2ip_rdce;
  output reset2ip_reset;
  output and_reduce_be;
  output Intr2Bus_RdAck0;
  output irpt_rdack;
  output interrupt_wrce_strb;
  output irpt_wrack;
  output [0:0]E;
  output status_reg_rdack0;
  output local_reg_wrack0;
  output convst_rst_wrce_or_reduce;
  output local_reg_rdack0;
  output local_rdce_or_reduce;
  output ip2bus_wrack_int1;
  output rst_ip2bus_error;
  output reset_trig0;
  output sw_rst_cond;
  output p_5_out;
  output dummy_bus2ip_rdce_intr;
  output p_3_out;
  output dummy_bus2ip_wrce_intr;
  output dummy_local_reg_rdack0;
  output dummy_local_reg_rdack_d10;
  output dummy_local_reg_wrack0;
  output dummy_local_reg_wrack_d10;
  output rst_ip2bus_rdack0;
  output p_51_out__0;
  output hard_macro_rst_reg_reg_0;
  output ipif_glbl_irpt_enable_reg_reg;
  output RESET;
  output [0:0]\do_reg_reg[15] ;
  output [7:0]\status_reg_reg[8] ;
  output [18:0]s_axi_rdata;
  input s_axi_aclk;
  input ip2bus_error;
  input s_axi_arvalid;
  input ip2bus_rdack;
  input ip2bus_wrack;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [8:0]s_axi_araddr;
  input [8:0]s_axi_awaddr;
  input jtaglocked_i;
  input [17:0]Q;
  input p_1_in;
  input jtagmodified_i;
  input jtagmodified_d1;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input [14:0]\alarm_reg_reg[14] ;
  input [15:0]\do_reg_reg[15]_0 ;
  input [11:0]\status_reg_reg[11] ;
  input p_1_in47_in;
  input p_1_in44_in;
  input p_1_in41_in;
  input p_1_in38_in;
  input p_1_in35_in;
  input p_1_in32_in;
  input p_1_in29_in;
  input p_1_in26_in;
  input p_1_in23_in;
  input p_1_in20_in;
  input p_1_in17_in;
  input p_1_in14_in;
  input p_1_in11_in;
  input p_1_in8_in;
  input p_1_in5_in;
  input p_1_in2_in;
  input \RESET_FLOPS[15].RST_FLOPS ;
  input [3:0]s_axi_wstrb;
  input ipif_glbl_irpt_enable_reg;
  input irpt_rdack_d1;
  input irpt_wrack_d1;
  input status_reg_rdack_d1;
  input local_reg_wrack_d1;
  input local_reg_rdack_d1;
  input intr_ip2bus_wrack;
  input dummy_intr_reg_wrack;
  input wrack;
  input drdy_wr_ack_i;
  input dummy_local_reg_wrack;
  input local_reg_wrack;
  input sw_rst_cond_d1;
  input [4:0]s_axi_wdata;
  input dummy_intr_reg_rdack_d1;
  input dummy_intr_reg_wrack_d1;
  input dummy_local_reg_rdack_d1;
  input dummy_local_reg_wrack_d1;
  input rst_ip2bus_rdack_d1;
  input s_axi_rready;
  input s_axi_bready;
  input hard_macro_rst_reg;
  input [18:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] ;

  wire [18:0]D;
  wire DWE;
  wire [0:0]E;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3_n_0 ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5] ;
  wire [18:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] ;
  wire Intr2Bus_RdAck0;
  wire [17:0]Q;
  wire RESET;
  wire \RESET_FLOPS[15].RST_FLOPS ;
  wire \SOFT_RESET_I/data_is_non_reset_match__4 ;
  wire SR;
  wire [14:0]\alarm_reg_reg[14] ;
  wire and_reduce_be;
  wire [10:10]bus2ip_addr;
  wire \bus2ip_addr_i[10]_i_1_n_0 ;
  wire \bus2ip_addr_i[10]_i_2_n_0 ;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire \bus2ip_addr_i[5]_i_1_n_0 ;
  wire \bus2ip_addr_i[6]_i_1_n_0 ;
  wire \bus2ip_addr_i[7]_i_1_n_0 ;
  wire \bus2ip_addr_i[8]_i_1_n_0 ;
  wire \bus2ip_addr_i[9]_i_1_n_0 ;
  wire [3:3]bus2ip_be;
  wire [2:0]bus2ip_rdce;
  wire bus2ip_rnw_i03_out;
  wire bus2ip_rnw_i_reg_n_0;
  wire [0:0]bus2ip_wrce;
  wire clear;
  wire convst_rst_wrce_or_reduce;
  wire [0:0]\do_reg_reg[15] ;
  wire [15:0]\do_reg_reg[15]_0 ;
  wire drdy_wr_ack_i;
  wire drdy_wr_ack_i_d1_reg;
  wire dummy_bus2ip_rdce_intr;
  wire dummy_bus2ip_wrce_intr;
  wire dummy_intr_reg_rdack_d1;
  wire dummy_intr_reg_wrack;
  wire dummy_intr_reg_wrack_d1;
  wire dummy_local_reg_rdack0;
  wire dummy_local_reg_rdack_d1;
  wire dummy_local_reg_rdack_d10;
  wire dummy_local_reg_wrack;
  wire dummy_local_reg_wrack0;
  wire dummy_local_reg_wrack_d1;
  wire dummy_local_reg_wrack_d10;
  wire hard_macro_rst_reg;
  wire hard_macro_rst_reg_reg;
  wire hard_macro_rst_reg_reg_0;
  wire interrupt_wrce_strb;
  wire intr_ip2bus_wrack;
  wire ip2bus_error;
  wire ip2bus_rdack;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int1;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire jtaglocked_i;
  wire jtagmodified_d1;
  wire jtagmodified_i;
  wire local_rdce_or_reduce;
  wire local_reg_rdack0;
  wire local_reg_rdack_d1;
  wire local_reg_wrack;
  wire local_reg_wrack0;
  wire local_reg_wrack_d1;
  wire p_1_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in20_in;
  wire p_1_in23_in;
  wire p_1_in26_in;
  wire p_1_in29_in;
  wire p_1_in2_in;
  wire p_1_in32_in;
  wire p_1_in35_in;
  wire p_1_in38_in;
  wire p_1_in41_in;
  wire p_1_in44_in;
  wire p_1_in47_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire p_3_out;
  wire p_51_out__0;
  wire p_5_out;
  wire [6:0]plusOp;
  wire reset2ip_reset;
  wire reset_trig0;
  wire rst_i_1_n_0;
  wire rst_ip2bus_error;
  wire rst_ip2bus_rdack0;
  wire rst_ip2bus_rdack_d1;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire \s_axi_bresp_i[1]_i_1_n_0 ;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_i_1_n_0;
  wire [18:0]s_axi_rdata;
  wire s_axi_rdata_i;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i0;
  wire s_axi_rvalid_i_i_1_n_0;
  wire [4:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire status_reg_rdack0;
  wire status_reg_rdack_d1;
  wire [11:0]\status_reg_reg[11] ;
  wire [7:0]\status_reg_reg[8] ;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire timeout;
  wire wrack;

  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4] ),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4] ),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5] ),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3_n_0 ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5] ),
        .I2(timeout),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4] ),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5] ),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(timeout),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[0]_i_2 
       (.I0(bus2ip_rnw_i_reg_n_0),
        .I1(s_axi_wstrb[3]),
        .O(bus2ip_be));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \INTR_CTRLR_GEN_I.ip2bus_error_i_1 
       (.I0(SR),
        .I1(\RESET_FLOPS[15].RST_FLOPS ),
        .O(reset2ip_reset));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \INTR_CTRLR_GEN_I.ip2bus_error_i_4 
       (.I0(s_axi_wstrb[0]),
        .I1(s_axi_wstrb[1]),
        .I2(s_axi_wstrb[2]),
        .I3(s_axi_wstrb[3]),
        .I4(bus2ip_rnw_i_reg_n_0),
        .O(and_reduce_be));
  xcl_design_sys_mgmt_wiz_0_xcl_design_sys_mgmt_wiz_0_address_decoder I_DECODER
       (.D(D),
        .DWE(DWE),
        .E(E),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[6] (timeout),
        .Intr2Bus_RdAck0(Intr2Bus_RdAck0),
        .Q(start2),
        .\alarm_reg_reg[14] (\alarm_reg_reg[14] ),
        .\bus2ip_addr_i_reg[10] ({bus2ip_addr,\status_reg_reg[8] }),
        .bus2ip_be(bus2ip_be),
        .bus2ip_rdce(bus2ip_rdce),
        .bus2ip_rnw_i_reg(bus2ip_rnw_i_reg_n_0),
        .bus2ip_wrce(bus2ip_wrce),
        .convst_rst_wrce_or_reduce(convst_rst_wrce_or_reduce),
        .data_is_non_reset_match__4(\SOFT_RESET_I/data_is_non_reset_match__4 ),
        .\do_reg_reg[15] (\do_reg_reg[15]_0 ),
        .drdy_wr_ack_i(drdy_wr_ack_i),
        .drdy_wr_ack_i_d1_reg(drdy_wr_ack_i_d1_reg),
        .dummy_bus2ip_rdce_intr(dummy_bus2ip_rdce_intr),
        .dummy_bus2ip_wrce_intr(dummy_bus2ip_wrce_intr),
        .dummy_intr_reg_rdack_d1(dummy_intr_reg_rdack_d1),
        .dummy_intr_reg_wrack(dummy_intr_reg_wrack),
        .dummy_intr_reg_wrack_d1(dummy_intr_reg_wrack_d1),
        .dummy_local_reg_rdack0(dummy_local_reg_rdack0),
        .dummy_local_reg_rdack_d1(dummy_local_reg_rdack_d1),
        .dummy_local_reg_rdack_d10(dummy_local_reg_rdack_d10),
        .dummy_local_reg_wrack(dummy_local_reg_wrack),
        .dummy_local_reg_wrack0(dummy_local_reg_wrack0),
        .dummy_local_reg_wrack_d1(dummy_local_reg_wrack_d1),
        .dummy_local_reg_wrack_d10(dummy_local_reg_wrack_d10),
        .hard_macro_rst_reg(hard_macro_rst_reg),
        .hard_macro_rst_reg_reg(hard_macro_rst_reg_reg),
        .hard_macro_rst_reg_reg_0(hard_macro_rst_reg_reg_0),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr_ip2bus_wrack(intr_ip2bus_wrack),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_wrack(ip2bus_wrack),
        .ip2bus_wrack_int1(ip2bus_wrack_int1),
        .\ip_irpt_enable_reg_reg[17] (Q),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(ipif_glbl_irpt_enable_reg_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .jtaglocked_i(jtaglocked_i),
        .jtagmodified_d1(jtagmodified_d1),
        .jtagmodified_i(jtagmodified_i),
        .local_rdce_or_reduce(local_rdce_or_reduce),
        .local_reg_rdack0(local_reg_rdack0),
        .local_reg_rdack_d1(local_reg_rdack_d1),
        .local_reg_wrack(local_reg_wrack),
        .local_reg_wrack0(local_reg_wrack0),
        .local_reg_wrack_d1(local_reg_wrack_d1),
        .p_1_in(p_1_in),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in20_in(p_1_in20_in),
        .p_1_in23_in(p_1_in23_in),
        .p_1_in26_in(p_1_in26_in),
        .p_1_in29_in(p_1_in29_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in32_in(p_1_in32_in),
        .p_1_in35_in(p_1_in35_in),
        .p_1_in38_in(p_1_in38_in),
        .p_1_in41_in(p_1_in41_in),
        .p_1_in44_in(p_1_in44_in),
        .p_1_in47_in(p_1_in47_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .p_3_out(p_3_out),
        .p_51_out__0(p_51_out__0),
        .p_5_out(p_5_out),
        .reset_trig0(reset_trig0),
        .rst_ip2bus_error(rst_ip2bus_error),
        .rst_ip2bus_rdack0(rst_ip2bus_rdack0),
        .rst_ip2bus_rdack_d1(rst_ip2bus_rdack_d1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata({s_axi_wdata[4],s_axi_wdata[0]}),
        .s_axi_wstrb(s_axi_wstrb[3]),
        .status_reg_rdack0(status_reg_rdack0),
        .status_reg_rdack_d1(status_reg_rdack_d1),
        .\status_reg_reg[11] (\status_reg_reg[11] ),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1),
        .wrack(wrack));
  LUT5 #(
    .INIT(32'h03020202)) 
    \bus2ip_addr_i[10]_i_1 
       (.I0(s_axi_arvalid),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_awvalid),
        .I4(s_axi_wvalid),
        .O(\bus2ip_addr_i[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \bus2ip_addr_i[10]_i_2 
       (.I0(s_axi_araddr[8]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_arvalid),
        .I4(s_axi_awaddr[8]),
        .O(\bus2ip_addr_i[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_arvalid),
        .I4(s_axi_awaddr[0]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_arvalid),
        .I4(s_axi_awaddr[1]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_arvalid),
        .I4(s_axi_awaddr[2]),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_arvalid),
        .I4(s_axi_awaddr[3]),
        .O(\bus2ip_addr_i[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_arvalid),
        .I4(s_axi_awaddr[4]),
        .O(\bus2ip_addr_i[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \bus2ip_addr_i[7]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_arvalid),
        .I4(s_axi_awaddr[5]),
        .O(\bus2ip_addr_i[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_araddr[6]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_arvalid),
        .I4(s_axi_awaddr[6]),
        .O(\bus2ip_addr_i[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \bus2ip_addr_i[9]_i_1 
       (.I0(s_axi_araddr[7]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_arvalid),
        .I4(s_axi_awaddr[7]),
        .O(\bus2ip_addr_i[9]_i_1_n_0 ));
  FDRE \bus2ip_addr_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(\bus2ip_addr_i[10]_i_2_n_0 ),
        .Q(bus2ip_addr),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(\status_reg_reg[8] [0]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(\status_reg_reg[8] [1]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(\bus2ip_addr_i[4]_i_1_n_0 ),
        .Q(\status_reg_reg[8] [2]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(\bus2ip_addr_i[5]_i_1_n_0 ),
        .Q(\status_reg_reg[8] [3]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(\bus2ip_addr_i[6]_i_1_n_0 ),
        .Q(\status_reg_reg[8] [4]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(\bus2ip_addr_i[7]_i_1_n_0 ),
        .Q(\status_reg_reg[8] [5]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(\bus2ip_addr_i[8]_i_1_n_0 ),
        .Q(\status_reg_reg[8] [6]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(\bus2ip_addr_i[9]_i_1_n_0 ),
        .Q(\status_reg_reg[8] [7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h10)) 
    bus2ip_rnw_i_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(s_axi_arvalid),
        .O(bus2ip_rnw_i03_out));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(bus2ip_rnw_i03_out),
        .Q(bus2ip_rnw_i_reg_n_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \do_reg[15]_i_1 
       (.I0(SR),
        .I1(\RESET_FLOPS[15].RST_FLOPS ),
        .I2(jtaglocked_i),
        .O(\do_reg_reg[15] ));
  LUT3 #(
    .INIT(8'hFE)) 
    inst_sysmon_i_3
       (.I0(SR),
        .I1(\RESET_FLOPS[15].RST_FLOPS ),
        .I2(hard_macro_rst_reg),
        .O(RESET));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(s_axi_aresetn),
        .O(rst_i_1_n_0));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_i_1_n_0),
        .Q(SR),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    s_axi_arready_INST_0
       (.I0(ip2bus_rdack),
        .I1(timeout),
        .O(s_axi_arready));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_bresp_i[1]_i_1 
       (.I0(ip2bus_error),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_bresp),
        .O(\s_axi_bresp_i[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_bresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_bresp_i[1]_i_1_n_0 ),
        .Q(s_axi_bresp),
        .R(SR));
  LUT6 #(
    .INIT(64'h00E0FFFF00E000E0)) 
    s_axi_bvalid_i_i_1
       (.I0(ip2bus_wrack),
        .I1(timeout),
        .I2(state[1]),
        .I3(state[0]),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata_i[31]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(s_axi_rdata_i));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [10]),
        .Q(s_axi_rdata[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [11]),
        .Q(s_axi_rdata[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [12]),
        .Q(s_axi_rdata[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [13]),
        .Q(s_axi_rdata[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [14]),
        .Q(s_axi_rdata[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [15]),
        .Q(s_axi_rdata[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [16]),
        .Q(s_axi_rdata[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [17]),
        .Q(s_axi_rdata[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [18]),
        .Q(s_axi_rdata[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [3]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [4]),
        .Q(s_axi_rdata[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [5]),
        .Q(s_axi_rdata[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [6]),
        .Q(s_axi_rdata[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [7]),
        .Q(s_axi_rdata[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [8]),
        .Q(s_axi_rdata[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [9]),
        .Q(s_axi_rdata[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(ip2bus_error),
        .Q(s_axi_rresp),
        .R(SR));
  LUT6 #(
    .INIT(64'h00E0FFFF00E000E0)) 
    s_axi_rvalid_i_i_1
       (.I0(ip2bus_rdack),
        .I1(timeout),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_rready),
        .I5(s_axi_rvalid),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    s_axi_wready_INST_0
       (.I0(ip2bus_wrack),
        .I1(timeout),
        .O(s_axi_wready));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(SR));
  LUT6 #(
    .INIT(64'h0F0FFFFFEFE0EFE0)) 
    \state[0]_i_1 
       (.I0(ip2bus_wrack),
        .I1(timeout),
        .I2(state[1]),
        .I3(s_axi_arvalid),
        .I4(\state[1]_i_3_n_0 ),
        .I5(state[0]),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAFABAFFBAFABAFA)) 
    \state[1]_i_1 
       (.I0(s_axi_rvalid_i0),
        .I1(\state[1]_i_3_n_0 ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(s_axi_arvalid),
        .I5(\state[1]_i_4_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    \state[1]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(timeout),
        .I3(ip2bus_rdack),
        .O(s_axi_rvalid_i0));
  LUT4 #(
    .INIT(16'hF888)) 
    \state[1]_i_3 
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid),
        .I2(s_axi_bready),
        .I3(s_axi_bvalid),
        .O(\state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_4 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(\state[1]_i_4_n_0 ));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(SR));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFF1FFFFFF)) 
    sw_rst_cond_d1_i_2
       (.I0(bus2ip_rnw_i_reg_n_0),
        .I1(s_axi_wstrb[0]),
        .I2(s_axi_wdata[2]),
        .I3(s_axi_wdata[3]),
        .I4(s_axi_wdata[1]),
        .I5(s_axi_wdata[0]),
        .O(\SOFT_RESET_I/data_is_non_reset_match__4 ));
endmodule

module xcl_design_sys_mgmt_wiz_0_xcl_design_sys_mgmt_wiz_0_soft_reset
   (sw_rst_cond_d1,
    wrack,
    FF_WRACK_0,
    bus2ip_reset_active_high,
    sw_rst_cond,
    s_axi_aclk,
    reset_trig0);
  output sw_rst_cond_d1;
  output wrack;
  output FF_WRACK_0;
  input bus2ip_reset_active_high;
  input sw_rst_cond;
  input s_axi_aclk;
  input reset_trig0;

  wire FF_WRACK_0;
  wire FF_WRACK_i_1_n_0;
  wire \RESET_FLOPS[10].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[11].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[12].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[13].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[14].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[15].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[4].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[5].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[6].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[7].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[8].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[9].RST_FLOPS_i_1_n_0 ;
  wire S;
  wire bus2ip_reset_active_high;
  wire [1:15]flop_q_chain;
  wire reset_trig0;
  wire s_axi_aclk;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire wrack;

  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    FF_WRACK
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(FF_WRACK_i_1_n_0),
        .Q(wrack),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    FF_WRACK_i_1
       (.I0(FF_WRACK_0),
        .I1(flop_q_chain[15]),
        .O(FF_WRACK_i_1_n_0));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[0].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(S),
        .Q(flop_q_chain[1]),
        .R(bus2ip_reset_active_high));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[10].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[10].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[11]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[10].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[10]),
        .O(\RESET_FLOPS[10].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[11].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[11].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[12]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[11].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[11]),
        .O(\RESET_FLOPS[11].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[12].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[12].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[13]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[12].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[12]),
        .O(\RESET_FLOPS[12].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[13].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[13].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[14]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[13].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[13]),
        .O(\RESET_FLOPS[13].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[14].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[14].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[15]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[14].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[14]),
        .O(\RESET_FLOPS[14].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[15].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[15].RST_FLOPS_i_1_n_0 ),
        .Q(FF_WRACK_0),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[15].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[15]),
        .O(\RESET_FLOPS[15].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[1].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[2]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[1].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[1]),
        .O(\RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[2].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[3]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[2].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[2]),
        .O(\RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[3].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[4]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[3].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[3]),
        .O(\RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[4].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[4].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[5]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[4].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[4]),
        .O(\RESET_FLOPS[4].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[5].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[5].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[6]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[5].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[5]),
        .O(\RESET_FLOPS[5].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[6].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[6].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[7]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[6].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[6]),
        .O(\RESET_FLOPS[6].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[7].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[7].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[8]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[7].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[7]),
        .O(\RESET_FLOPS[7].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[8].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[8].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[9]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[8].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[8]),
        .O(\RESET_FLOPS[8].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[9].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[9].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[10]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[9].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[9]),
        .O(\RESET_FLOPS[9].RST_FLOPS_i_1_n_0 ));
  FDRE reset_trig_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(reset_trig0),
        .Q(S),
        .R(bus2ip_reset_active_high));
  FDRE sw_rst_cond_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sw_rst_cond),
        .Q(sw_rst_cond_d1),
        .R(bus2ip_reset_active_high));
endmodule

module xcl_design_sys_mgmt_wiz_0_xcl_design_sys_mgmt_wiz_0_xadc_core_drp
   (D,
    eoc_out,
    eos_out,
    jtagmodified_i,
    \alarm_reg_reg[14]_0 ,
    alarm_out,
    local_reg_wrack_d1,
    local_reg_wrack,
    drdy_wr_ack_i,
    local_reg_rdack_d1,
    status_reg_rdack_d1,
    jtagmodified_d1,
    hard_macro_rst_reg,
    ip2bus_error_int1,
    xadc_ip2bus_rdack,
    \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg ,
    \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg ,
    Q,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] ,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] ,
    s_axi_aclk,
    DWE,
    RESET,
    vn,
    vp,
    s_axi_wdata,
    \bus2ip_addr_i_reg[9] ,
    reset2ip_reset,
    convst_rst_wrce_or_reduce,
    local_reg_wrack0,
    bus2ip_wrce,
    local_rdce_or_reduce,
    local_reg_rdack0,
    bus2ip_rdce,
    status_reg_rdack0,
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ,
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ,
    Bus_RNW_reg,
    and_reduce_be,
    rst_ip2bus_error,
    bus2ip_reset_active_high,
    \RESET_FLOPS[15].RST_FLOPS ,
    SR);
  output [7:0]D;
  output eoc_out;
  output eos_out;
  output jtagmodified_i;
  output [14:0]\alarm_reg_reg[14]_0 ;
  output [1:0]alarm_out;
  output local_reg_wrack_d1;
  output local_reg_wrack;
  output drdy_wr_ack_i;
  output local_reg_rdack_d1;
  output status_reg_rdack_d1;
  output jtagmodified_d1;
  output hard_macro_rst_reg;
  output ip2bus_error_int1;
  output xadc_ip2bus_rdack;
  output \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg ;
  output \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg ;
  output [15:0]Q;
  output [14:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] ;
  output [11:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] ;
  input s_axi_aclk;
  input DWE;
  input RESET;
  input vn;
  input vp;
  input [15:0]s_axi_wdata;
  input [7:0]\bus2ip_addr_i_reg[9] ;
  input reset2ip_reset;
  input convst_rst_wrce_or_reduce;
  input local_reg_wrack0;
  input [0:0]bus2ip_wrce;
  input local_rdce_or_reduce;
  input local_reg_rdack0;
  input [1:0]bus2ip_rdce;
  input status_reg_rdack0;
  input \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  input \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ;
  input Bus_RNW_reg;
  input and_reduce_be;
  input rst_ip2bus_error;
  input bus2ip_reset_active_high;
  input \RESET_FLOPS[15].RST_FLOPS ;
  input [0:0]SR;

  wire Bus_RNW_reg;
  wire [7:0]D;
  wire DEN;
  wire \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg ;
  wire \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg ;
  wire DWE;
  wire \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ;
  wire \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  wire [14:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] ;
  wire [11:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] ;
  wire [15:0]Q;
  wire RESET;
  wire \RESET_FLOPS[15].RST_FLOPS ;
  wire [0:0]SR;
  wire alarm_0_d1;
  wire [1:0]alarm_out;
  wire [14:0]\alarm_reg_reg[14]_0 ;
  wire and_reduce_be;
  wire [7:0]\bus2ip_addr_i_reg[9] ;
  wire [1:0]bus2ip_rdce;
  wire bus2ip_reset_active_high;
  wire [0:0]bus2ip_wrce;
  wire convst_rst_wrce_or_reduce;
  wire den_d1;
  wire [15:0]do_C;
  wire drdy_C;
  wire drdy_rd_ack_i;
  wire drdy_rd_ack_i_d1;
  wire drdy_rd_ack_i_d2;
  wire drdy_rd_ack_i_i_1_n_0;
  wire drdy_wr_ack_i;
  wire drdy_wr_ack_i_d1;
  wire drdy_wr_ack_i_d2;
  wire drdy_wr_ack_i_i_1_n_0;
  wire eoc_d1;
  wire eoc_d1_i_1_n_0;
  wire eoc_out;
  wire eos_d1;
  wire eos_d1_i_1_n_0;
  wire eos_out;
  wire hard_macro_rst_reg;
  wire ip2bus_error_int1;
  wire jtagbusy_i;
  wire jtagmodified_d1;
  wire jtagmodified_d1_i_1_n_0;
  wire jtagmodified_i;
  wire local_rdce_or_reduce;
  wire local_reg_rdack;
  wire local_reg_rdack0;
  wire local_reg_rdack_d1;
  wire local_reg_wrack;
  wire local_reg_wrack0;
  wire local_reg_wrack_d1;
  wire ot_d1;
  wire p_4_in;
  wire [7:6]p_5_out;
  wire reset2ip_reset;
  wire rst_ip2bus_error;
  wire s_axi_aclk;
  wire [15:0]s_axi_wdata;
  wire \status_reg[10]_i_1_n_0 ;
  wire status_reg_rdack;
  wire status_reg_rdack0;
  wire status_reg_rdack_d1;
  wire vn;
  wire vp;
  wire xadc_ip2bus_rdack;
  wire NLW_inst_sysmon_I2C_SCLK_TS_UNCONNECTED;
  wire NLW_inst_sysmon_I2C_SDA_TS_UNCONNECTED;
  wire [4:0]NLW_inst_sysmon_MUXADDR_UNCONNECTED;
  wire [15:0]NLW_inst_sysmon_VAUXN_UNCONNECTED;
  wire [15:0]NLW_inst_sysmon_VAUXP_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_i_1 
       (.I0(ot_d1),
        .I1(\alarm_reg_reg[14]_0 [0]),
        .O(\DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg ));
  LUT2 #(
    .INIT(4'h2)) 
    \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_i_1 
       (.I0(alarm_0_d1),
        .I1(\alarm_reg_reg[14]_0 [1]),
        .O(\DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg ));
  LUT5 #(
    .INIT(32'hFFFF00FE)) 
    \INTR_CTRLR_GEN_I.ip2bus_error_i_2 
       (.I0(local_reg_wrack),
        .I1(drdy_wr_ack_i),
        .I2(xadc_ip2bus_rdack),
        .I3(and_reduce_be),
        .I4(rst_ip2bus_error),
        .O(ip2bus_error_int1));
  LUT3 #(
    .INIT(8'hFE)) 
    \INTR_CTRLR_GEN_I.ip2bus_error_i_3 
       (.I0(drdy_rd_ack_i),
        .I1(local_reg_rdack),
        .I2(status_reg_rdack),
        .O(xadc_ip2bus_rdack));
  FDRE alarm_0_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[14]_0 [1]),
        .Q(alarm_0_d1),
        .R(1'b0));
  FDRE \alarm_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[14]_0 [0]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [0]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[14]_0 [10]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [10]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[14]_0 [11]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [11]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[14]_0 [12]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [12]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[14]_0 [13]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [13]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[14]_0 [14]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [14]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[14]_0 [1]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [1]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[14]_0 [2]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [2]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[14]_0 [3]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [3]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[14]_0 [4]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [4]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[14]_0 [5]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [5]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[14]_0 [6]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [6]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[14]_0 [7]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [7]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[14]_0 [8]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [8]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[14]_0 [9]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [9]),
        .R(reset2ip_reset));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h4)) 
    den_d1_i_1
       (.I0(D[7]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ),
        .O(p_4_in));
  FDRE den_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_4_in),
        .Q(den_d1),
        .R(1'b0));
  FDRE \do_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_C[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \do_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_C[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \do_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_C[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \do_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_C[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \do_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_C[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \do_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_C[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \do_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_C[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \do_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_C[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \do_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_C[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \do_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_C[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \do_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_C[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \do_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_C[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \do_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_C[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \do_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_C[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \do_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_C[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \do_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_C[9]),
        .Q(Q[9]),
        .R(SR));
  FDRE drdy_rd_ack_i_d1_reg
       (.C(s_axi_aclk),
        .CE(D[7]),
        .D(bus2ip_rdce[0]),
        .Q(drdy_rd_ack_i_d1),
        .R(reset2ip_reset));
  FDRE drdy_rd_ack_i_d2_reg
       (.C(s_axi_aclk),
        .CE(D[7]),
        .D(drdy_rd_ack_i_d1),
        .Q(drdy_rd_ack_i_d2),
        .R(reset2ip_reset));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    drdy_rd_ack_i_i_1
       (.I0(drdy_rd_ack_i_d1),
        .I1(drdy_rd_ack_i_d2),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ),
        .I3(Bus_RNW_reg),
        .I4(drdy_C),
        .I5(D[7]),
        .O(drdy_rd_ack_i_i_1_n_0));
  FDRE drdy_rd_ack_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(drdy_rd_ack_i_i_1_n_0),
        .Q(drdy_rd_ack_i),
        .R(reset2ip_reset));
  FDRE drdy_wr_ack_i_d1_reg
       (.C(s_axi_aclk),
        .CE(D[7]),
        .D(bus2ip_wrce),
        .Q(drdy_wr_ack_i_d1),
        .R(reset2ip_reset));
  FDRE drdy_wr_ack_i_d2_reg
       (.C(s_axi_aclk),
        .CE(D[7]),
        .D(drdy_wr_ack_i_d1),
        .Q(drdy_wr_ack_i_d2),
        .R(reset2ip_reset));
  LUT6 #(
    .INIT(64'h2222222200F00000)) 
    drdy_wr_ack_i_i_1
       (.I0(drdy_wr_ack_i_d1),
        .I1(drdy_wr_ack_i_d2),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ),
        .I3(Bus_RNW_reg),
        .I4(drdy_C),
        .I5(D[7]),
        .O(drdy_wr_ack_i_i_1_n_0));
  FDRE drdy_wr_ack_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(drdy_wr_ack_i_i_1_n_0),
        .Q(drdy_wr_ack_i),
        .R(reset2ip_reset));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    eoc_d1_i_1
       (.I0(eoc_out),
        .I1(status_reg_rdack),
        .I2(eoc_d1),
        .O(eoc_d1_i_1_n_0));
  FDRE eoc_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(eoc_d1_i_1_n_0),
        .Q(eoc_d1),
        .R(reset2ip_reset));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    eos_d1_i_1
       (.I0(eos_out),
        .I1(status_reg_rdack),
        .I2(eos_d1),
        .O(eos_d1_i_1_n_0));
  FDRE eos_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(eos_d1_i_1_n_0),
        .Q(eos_d1),
        .R(reset2ip_reset));
  FDRE hard_macro_rst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ),
        .Q(hard_macro_rst_reg),
        .R(reset2ip_reset));
  (* box_type = "PRIMITIVE" *) 
  SYSMONE1 #(
    .INIT_40(16'h0000),
    .INIT_41(16'h219F),
    .INIT_42(16'h0A00),
    .INIT_43(16'h200F),
    .INIT_44(16'h0000),
    .INIT_45(16'hDEDC),
    .INIT_46(16'h0000),
    .INIT_47(16'h0000),
    .INIT_48(16'h4701),
    .INIT_49(16'h0000),
    .INIT_4A(16'h4700),
    .INIT_4B(16'h0000),
    .INIT_4C(16'h0000),
    .INIT_4D(16'h0000),
    .INIT_4E(16'h0000),
    .INIT_4F(16'h0000),
    .INIT_50(16'hB723),
    .INIT_51(16'h4E81),
    .INIT_52(16'hA147),
    .INIT_53(16'hCB93),
    .INIT_54(16'hAA5F),
    .INIT_55(16'h4963),
    .INIT_56(16'h9555),
    .INIT_57(16'hAF7B),
    .INIT_58(16'h4E81),
    .INIT_59(16'h5555),
    .INIT_5A(16'h9999),
    .INIT_5B(16'h6AAA),
    .INIT_5C(16'h4963),
    .INIT_5D(16'h5111),
    .INIT_5E(16'h91EB),
    .INIT_5F(16'h6666),
    .INIT_60(16'h9A74),
    .INIT_61(16'h4DA6),
    .INIT_62(16'h9A74),
    .INIT_63(16'h4D39),
    .INIT_64(16'h0000),
    .INIT_65(16'h0000),
    .INIT_66(16'h0000),
    .INIT_67(16'h0000),
    .INIT_68(16'h98BF),
    .INIT_69(16'h4BF2),
    .INIT_6A(16'h98BF),
    .INIT_6B(16'h4C5E),
    .INIT_6C(16'h0000),
    .INIT_6D(16'h0000),
    .INIT_6E(16'h0000),
    .INIT_6F(16'h0000),
    .INIT_70(16'h0000),
    .INIT_71(16'h0000),
    .INIT_72(16'h0000),
    .INIT_73(16'h0000),
    .INIT_74(16'h0000),
    .INIT_75(16'h0000),
    .INIT_76(16'h0000),
    .INIT_77(16'h0000),
    .INIT_78(16'h0000),
    .INIT_79(16'h0000),
    .INIT_7A(16'h0000),
    .INIT_7B(16'h0000),
    .INIT_7C(16'h0000),
    .INIT_7D(16'h0000),
    .INIT_7E(16'h0000),
    .INIT_7F(16'h0000),
    .IS_CONVSTCLK_INVERTED(1'b0),
    .IS_DCLK_INVERTED(1'b0),
    .SIM_MONITOR_FILE("design.txt"),
    .SYSMON_VUSER0_BANK(0),
    .SYSMON_VUSER0_MONITOR("NONE"),
    .SYSMON_VUSER1_BANK(0),
    .SYSMON_VUSER1_MONITOR("NONE"),
    .SYSMON_VUSER2_BANK(0),
    .SYSMON_VUSER2_MONITOR("NONE"),
    .SYSMON_VUSER3_BANK(0),
    .SYSMON_VUSER3_MONITOR("NONE")) 
    inst_sysmon
       (.ALM({alarm_out,\alarm_reg_reg[14]_0 [14:1]}),
        .BUSY(D[6]),
        .CHANNEL(D[5:0]),
        .CONVST(1'b0),
        .CONVSTCLK(1'b0),
        .DADDR(\bus2ip_addr_i_reg[9] ),
        .DCLK(s_axi_aclk),
        .DEN(DEN),
        .DI(s_axi_wdata),
        .DO(do_C),
        .DRDY(drdy_C),
        .DWE(DWE),
        .EOC(eoc_out),
        .EOS(eos_out),
        .I2C_SCLK(1'b0),
        .I2C_SCLK_TS(NLW_inst_sysmon_I2C_SCLK_TS_UNCONNECTED),
        .I2C_SDA(1'b0),
        .I2C_SDA_TS(NLW_inst_sysmon_I2C_SDA_TS_UNCONNECTED),
        .JTAGBUSY(jtagbusy_i),
        .JTAGLOCKED(D[7]),
        .JTAGMODIFIED(jtagmodified_i),
        .MUXADDR(NLW_inst_sysmon_MUXADDR_UNCONNECTED[4:0]),
        .OT(\alarm_reg_reg[14]_0 [0]),
        .RESET(RESET),
        .VAUXN(NLW_inst_sysmon_VAUXN_UNCONNECTED[15:0]),
        .VAUXP(NLW_inst_sysmon_VAUXP_UNCONNECTED[15:0]),
        .VN(vn),
        .VP(vp));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h02)) 
    inst_sysmon_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ),
        .I1(D[7]),
        .I2(den_d1),
        .O(DEN));
  LUT5 #(
    .INIT(32'h00001110)) 
    jtagmodified_d1_i_1
       (.I0(bus2ip_reset_active_high),
        .I1(\RESET_FLOPS[15].RST_FLOPS ),
        .I2(jtagmodified_i),
        .I3(jtagmodified_d1),
        .I4(drdy_rd_ack_i),
        .O(jtagmodified_d1_i_1_n_0));
  FDRE jtagmodified_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(jtagmodified_d1_i_1_n_0),
        .Q(jtagmodified_d1),
        .R(1'b0));
  FDRE local_reg_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(local_rdce_or_reduce),
        .Q(local_reg_rdack_d1),
        .R(reset2ip_reset));
  FDRE local_reg_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(local_reg_rdack0),
        .Q(local_reg_rdack),
        .R(reset2ip_reset));
  FDRE local_reg_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(convst_rst_wrce_or_reduce),
        .Q(local_reg_wrack_d1),
        .R(reset2ip_reset));
  FDRE local_reg_wrack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(local_reg_wrack0),
        .Q(local_reg_wrack),
        .R(reset2ip_reset));
  FDRE ot_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[14]_0 [0]),
        .Q(ot_d1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \status_reg[10]_i_1 
       (.I0(jtagmodified_d1),
        .I1(jtagmodified_i),
        .O(\status_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \status_reg[6]_i_1 
       (.I0(eoc_d1),
        .I1(eoc_out),
        .O(p_5_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \status_reg[7]_i_1 
       (.I0(eos_d1),
        .I1(eos_out),
        .O(p_5_out[7]));
  FDRE status_reg_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdce[1]),
        .Q(status_reg_rdack_d1),
        .R(reset2ip_reset));
  FDRE status_reg_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(status_reg_rdack0),
        .Q(status_reg_rdack),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [0]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\status_reg[10]_i_1_n_0 ),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [10]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(jtagbusy_i),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [11]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [1]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [2]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [3]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [4]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [5]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_5_out[6]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [6]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_5_out[7]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [7]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [8]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [9]),
        .R(reset2ip_reset));
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
