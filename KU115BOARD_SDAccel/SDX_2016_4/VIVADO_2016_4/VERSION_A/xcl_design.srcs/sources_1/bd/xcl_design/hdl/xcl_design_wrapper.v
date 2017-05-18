//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4_sdx (win64) Build 1806307 Thu Mar  9 15:24:31 MST 2017
//Date        : Tue May 16 15:33:52 2017
//Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
//Command     : generate_target xcl_design_wrapper.bd
//Design      : xcl_design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module xcl_design_wrapper
   (c0_ddr4_act_n,
    c0_ddr4_adr,
    c0_ddr4_ba,
    c0_ddr4_bg,
    c0_ddr4_ck_c,
    c0_ddr4_ck_t,
    c0_ddr4_cke,
    c0_ddr4_cs_n,
    c0_ddr4_dm_n,
    c0_ddr4_dq,
    c0_ddr4_dqs_c,
    c0_ddr4_dqs_t,
    c0_ddr4_odt,
    c0_ddr4_reset_n,
    c0_sys_clk_n,
    c0_sys_clk_p,
    c1_ddr4_act_n,
    c1_ddr4_adr,
    c1_ddr4_ba,
    c1_ddr4_bg,
    c1_ddr4_ck_c,
    c1_ddr4_ck_t,
    c1_ddr4_cke,
    c1_ddr4_cs_n,
    c1_ddr4_dm_n,
    c1_ddr4_dq,
    c1_ddr4_dqs_c,
    c1_ddr4_dqs_t,
    c1_ddr4_odt,
    c1_ddr4_reset_n,
    c1_sys_clk_n,
    c1_sys_clk_p,
    c2_ddr4_act_n,
    c2_ddr4_adr,
    c2_ddr4_ba,
    c2_ddr4_bg,
    c2_ddr4_ck_c,
    c2_ddr4_ck_t,
    c2_ddr4_cke,
    c2_ddr4_cs_n,
    c2_ddr4_dm_n,
    c2_ddr4_dq,
    c2_ddr4_dqs_c,
    c2_ddr4_dqs_t,
    c2_ddr4_odt,
    c2_ddr4_reset_n,
    c2_sys_clk_n,
    c2_sys_clk_p,
    c3_ddr4_act_n,
    c3_ddr4_adr,
    c3_ddr4_ba,
    c3_ddr4_bg,
    c3_ddr4_ck_c,
    c3_ddr4_ck_t,
    c3_ddr4_cke,
    c3_ddr4_cs_n,
    c3_ddr4_dm_n,
    c3_ddr4_dq,
    c3_ddr4_dqs_c,
    c3_ddr4_dqs_t,
    c3_ddr4_odt,
    c3_ddr4_reset_n,
    c3_sys_clk_n,
    c3_sys_clk_p,
    emc_clk,
    iic_reset_n,
    iic_scl_io,
    iic_sda_io,
    init_calib_complete,
    led_0,
    pcie_7x_mgt_rxn,
    pcie_7x_mgt_rxp,
    pcie_7x_mgt_txn,
    pcie_7x_mgt_txp,
    perst_n,
    ref_clk_clk_n,
    ref_clk_clk_p,
    spi_1_io0_io,
    spi_1_io1_io,
    spi_1_io2_io,
    spi_1_io3_io,
    spi_1_ss_io);
  output c0_ddr4_act_n;
  output [16:0]c0_ddr4_adr;
  output [1:0]c0_ddr4_ba;
  output [0:0]c0_ddr4_bg;
  output [0:0]c0_ddr4_ck_c;
  output [0:0]c0_ddr4_ck_t;
  output [0:0]c0_ddr4_cke;
  output [0:0]c0_ddr4_cs_n;
  inout [7:0]c0_ddr4_dm_n;
  inout [63:0]c0_ddr4_dq;
  inout [7:0]c0_ddr4_dqs_c;
  inout [7:0]c0_ddr4_dqs_t;
  output [0:0]c0_ddr4_odt;
  output c0_ddr4_reset_n;
  input c0_sys_clk_n;
  input c0_sys_clk_p;
  output c1_ddr4_act_n;
  output [16:0]c1_ddr4_adr;
  output [1:0]c1_ddr4_ba;
  output [0:0]c1_ddr4_bg;
  output [0:0]c1_ddr4_ck_c;
  output [0:0]c1_ddr4_ck_t;
  output [0:0]c1_ddr4_cke;
  output [0:0]c1_ddr4_cs_n;
  inout [8:0]c1_ddr4_dm_n;
  inout [71:0]c1_ddr4_dq;
  inout [8:0]c1_ddr4_dqs_c;
  inout [8:0]c1_ddr4_dqs_t;
  output [0:0]c1_ddr4_odt;
  output c1_ddr4_reset_n;
  input c1_sys_clk_n;
  input c1_sys_clk_p;
  output c2_ddr4_act_n;
  output [16:0]c2_ddr4_adr;
  output [1:0]c2_ddr4_ba;
  output [0:0]c2_ddr4_bg;
  output [0:0]c2_ddr4_ck_c;
  output [0:0]c2_ddr4_ck_t;
  output [0:0]c2_ddr4_cke;
  output [0:0]c2_ddr4_cs_n;
  inout [8:0]c2_ddr4_dm_n;
  inout [71:0]c2_ddr4_dq;
  inout [8:0]c2_ddr4_dqs_c;
  inout [8:0]c2_ddr4_dqs_t;
  output [0:0]c2_ddr4_odt;
  output c2_ddr4_reset_n;
  input c2_sys_clk_n;
  input c2_sys_clk_p;
  output c3_ddr4_act_n;
  output [16:0]c3_ddr4_adr;
  output [1:0]c3_ddr4_ba;
  output [0:0]c3_ddr4_bg;
  output [0:0]c3_ddr4_ck_c;
  output [0:0]c3_ddr4_ck_t;
  output [0:0]c3_ddr4_cke;
  output [0:0]c3_ddr4_cs_n;
  inout [8:0]c3_ddr4_dm_n;
  inout [71:0]c3_ddr4_dq;
  inout [8:0]c3_ddr4_dqs_c;
  inout [8:0]c3_ddr4_dqs_t;
  output [0:0]c3_ddr4_odt;
  output c3_ddr4_reset_n;
  input c3_sys_clk_n;
  input c3_sys_clk_p;
  input emc_clk;
  output [0:0]iic_reset_n;
  inout iic_scl_io;
  inout iic_sda_io;
  output init_calib_complete;
  output led_0;
  input [7:0]pcie_7x_mgt_rxn;
  input [7:0]pcie_7x_mgt_rxp;
  output [7:0]pcie_7x_mgt_txn;
  output [7:0]pcie_7x_mgt_txp;
  input perst_n;
  input [0:0]ref_clk_clk_n;
  input [0:0]ref_clk_clk_p;
  inout spi_1_io0_io;
  inout spi_1_io1_io;
  inout spi_1_io2_io;
  inout spi_1_io3_io;
  inout spi_1_ss_io;

  wire c0_ddr4_act_n;
  wire [16:0]c0_ddr4_adr;
  wire [1:0]c0_ddr4_ba;
  wire [0:0]c0_ddr4_bg;
  wire [0:0]c0_ddr4_ck_c;
  wire [0:0]c0_ddr4_ck_t;
  wire [0:0]c0_ddr4_cke;
  wire [0:0]c0_ddr4_cs_n;
  wire [7:0]c0_ddr4_dm_n;
  wire [63:0]c0_ddr4_dq;
  wire [7:0]c0_ddr4_dqs_c;
  wire [7:0]c0_ddr4_dqs_t;
  wire [0:0]c0_ddr4_odt;
  wire c0_ddr4_reset_n;
  wire c0_sys_clk_n;
  wire c0_sys_clk_p;
  wire c1_ddr4_act_n;
  wire [16:0]c1_ddr4_adr;
  wire [1:0]c1_ddr4_ba;
  wire [0:0]c1_ddr4_bg;
  wire [0:0]c1_ddr4_ck_c;
  wire [0:0]c1_ddr4_ck_t;
  wire [0:0]c1_ddr4_cke;
  wire [0:0]c1_ddr4_cs_n;
  wire [8:0]c1_ddr4_dm_n;
  wire [71:0]c1_ddr4_dq;
  wire [8:0]c1_ddr4_dqs_c;
  wire [8:0]c1_ddr4_dqs_t;
  wire [0:0]c1_ddr4_odt;
  wire c1_ddr4_reset_n;
  wire c1_sys_clk_n;
  wire c1_sys_clk_p;
  wire c2_ddr4_act_n;
  wire [16:0]c2_ddr4_adr;
  wire [1:0]c2_ddr4_ba;
  wire [0:0]c2_ddr4_bg;
  wire [0:0]c2_ddr4_ck_c;
  wire [0:0]c2_ddr4_ck_t;
  wire [0:0]c2_ddr4_cke;
  wire [0:0]c2_ddr4_cs_n;
  wire [8:0]c2_ddr4_dm_n;
  wire [71:0]c2_ddr4_dq;
  wire [8:0]c2_ddr4_dqs_c;
  wire [8:0]c2_ddr4_dqs_t;
  wire [0:0]c2_ddr4_odt;
  wire c2_ddr4_reset_n;
  wire c2_sys_clk_n;
  wire c2_sys_clk_p;
  wire c3_ddr4_act_n;
  wire [16:0]c3_ddr4_adr;
  wire [1:0]c3_ddr4_ba;
  wire [0:0]c3_ddr4_bg;
  wire [0:0]c3_ddr4_ck_c;
  wire [0:0]c3_ddr4_ck_t;
  wire [0:0]c3_ddr4_cke;
  wire [0:0]c3_ddr4_cs_n;
  wire [8:0]c3_ddr4_dm_n;
  wire [71:0]c3_ddr4_dq;
  wire [8:0]c3_ddr4_dqs_c;
  wire [8:0]c3_ddr4_dqs_t;
  wire [0:0]c3_ddr4_odt;
  wire c3_ddr4_reset_n;
  wire c3_sys_clk_n;
  wire c3_sys_clk_p;
  wire emc_clk;
  wire [0:0]iic_reset_n;
  wire iic_scl_i;
  wire iic_scl_io;
  wire iic_scl_o;
  wire iic_scl_t;
  wire iic_sda_i;
  wire iic_sda_io;
  wire iic_sda_o;
  wire iic_sda_t;
  wire init_calib_complete;
  wire led_0;
  wire [7:0]pcie_7x_mgt_rxn;
  wire [7:0]pcie_7x_mgt_rxp;
  wire [7:0]pcie_7x_mgt_txn;
  wire [7:0]pcie_7x_mgt_txp;
  wire perst_n;
  wire [0:0]ref_clk_clk_n;
  wire [0:0]ref_clk_clk_p;
  wire spi_1_io0_io;
  wire spi_1_io1_io;
  wire spi_1_io2_io;
  wire spi_1_io3_io;
  wire spi_1_ss_io;

  IOBUF iic_scl_iobuf
       (.I(iic_scl_o),
        .IO(iic_scl_io),
        .O(iic_scl_i),
        .T(iic_scl_t));
  IOBUF iic_sda_iobuf
       (.I(iic_sda_o),
        .IO(iic_sda_io),
        .O(iic_sda_i),
        .T(iic_sda_t));
  xcl_design xcl_design_i
       (.c0_ddr4_act_n(c0_ddr4_act_n),
        .c0_ddr4_adr(c0_ddr4_adr),
        .c0_ddr4_ba(c0_ddr4_ba),
        .c0_ddr4_bg(c0_ddr4_bg),
        .c0_ddr4_ck_c(c0_ddr4_ck_c),
        .c0_ddr4_ck_t(c0_ddr4_ck_t),
        .c0_ddr4_cke(c0_ddr4_cke),
        .c0_ddr4_cs_n(c0_ddr4_cs_n),
        .c0_ddr4_dm_n(c0_ddr4_dm_n),
        .c0_ddr4_dq(c0_ddr4_dq),
        .c0_ddr4_dqs_c(c0_ddr4_dqs_c),
        .c0_ddr4_dqs_t(c0_ddr4_dqs_t),
        .c0_ddr4_odt(c0_ddr4_odt),
        .c0_ddr4_reset_n(c0_ddr4_reset_n),
        .c0_sys_clk_n(c0_sys_clk_n),
        .c0_sys_clk_p(c0_sys_clk_p),
        .c1_ddr4_act_n(c1_ddr4_act_n),
        .c1_ddr4_adr(c1_ddr4_adr),
        .c1_ddr4_ba(c1_ddr4_ba),
        .c1_ddr4_bg(c1_ddr4_bg),
        .c1_ddr4_ck_c(c1_ddr4_ck_c),
        .c1_ddr4_ck_t(c1_ddr4_ck_t),
        .c1_ddr4_cke(c1_ddr4_cke),
        .c1_ddr4_cs_n(c1_ddr4_cs_n),
        .c1_ddr4_dm_n(c1_ddr4_dm_n),
        .c1_ddr4_dq(c1_ddr4_dq),
        .c1_ddr4_dqs_c(c1_ddr4_dqs_c),
        .c1_ddr4_dqs_t(c1_ddr4_dqs_t),
        .c1_ddr4_odt(c1_ddr4_odt),
        .c1_ddr4_reset_n(c1_ddr4_reset_n),
        .c1_sys_clk_n(c1_sys_clk_n),
        .c1_sys_clk_p(c1_sys_clk_p),
        .c2_ddr4_act_n(c2_ddr4_act_n),
        .c2_ddr4_adr(c2_ddr4_adr),
        .c2_ddr4_ba(c2_ddr4_ba),
        .c2_ddr4_bg(c2_ddr4_bg),
        .c2_ddr4_ck_c(c2_ddr4_ck_c),
        .c2_ddr4_ck_t(c2_ddr4_ck_t),
        .c2_ddr4_cke(c2_ddr4_cke),
        .c2_ddr4_cs_n(c2_ddr4_cs_n),
        .c2_ddr4_dm_n(c2_ddr4_dm_n),
        .c2_ddr4_dq(c2_ddr4_dq),
        .c2_ddr4_dqs_c(c2_ddr4_dqs_c),
        .c2_ddr4_dqs_t(c2_ddr4_dqs_t),
        .c2_ddr4_odt(c2_ddr4_odt),
        .c2_ddr4_reset_n(c2_ddr4_reset_n),
        .c2_sys_clk_n(c2_sys_clk_n),
        .c2_sys_clk_p(c2_sys_clk_p),
        .c3_ddr4_act_n(c3_ddr4_act_n),
        .c3_ddr4_adr(c3_ddr4_adr),
        .c3_ddr4_ba(c3_ddr4_ba),
        .c3_ddr4_bg(c3_ddr4_bg),
        .c3_ddr4_ck_c(c3_ddr4_ck_c),
        .c3_ddr4_ck_t(c3_ddr4_ck_t),
        .c3_ddr4_cke(c3_ddr4_cke),
        .c3_ddr4_cs_n(c3_ddr4_cs_n),
        .c3_ddr4_dm_n(c3_ddr4_dm_n),
        .c3_ddr4_dq(c3_ddr4_dq),
        .c3_ddr4_dqs_c(c3_ddr4_dqs_c),
        .c3_ddr4_dqs_t(c3_ddr4_dqs_t),
        .c3_ddr4_odt(c3_ddr4_odt),
        .c3_ddr4_reset_n(c3_ddr4_reset_n),
        .c3_sys_clk_n(c3_sys_clk_n),
        .c3_sys_clk_p(c3_sys_clk_p),
        .emc_clk(emc_clk),
        .iic_reset_n(iic_reset_n),
        .iic_scl_i(iic_scl_i),
        .iic_scl_o(iic_scl_o),
        .iic_scl_t(iic_scl_t),
        .iic_sda_i(iic_sda_i),
        .iic_sda_o(iic_sda_o),
        .iic_sda_t(iic_sda_t),
        .init_calib_complete(init_calib_complete),
        .led_0(led_0),
        .pcie_7x_mgt_rxn(pcie_7x_mgt_rxn),
        .pcie_7x_mgt_rxp(pcie_7x_mgt_rxp),
        .pcie_7x_mgt_txn(pcie_7x_mgt_txn),
        .pcie_7x_mgt_txp(pcie_7x_mgt_txp),
        .perst_n(perst_n),
        .ref_clk_clk_n(ref_clk_clk_n),
        .ref_clk_clk_p(ref_clk_clk_p),
        .spi_1_io0_io(spi_1_io0_io),
        .spi_1_io1_io(spi_1_io1_io),
        .spi_1_io2_io(spi_1_io2_io),
        .spi_1_io3_io(spi_1_io3_io),
        .spi_1_ss_io(spi_1_ss_io));
endmodule
