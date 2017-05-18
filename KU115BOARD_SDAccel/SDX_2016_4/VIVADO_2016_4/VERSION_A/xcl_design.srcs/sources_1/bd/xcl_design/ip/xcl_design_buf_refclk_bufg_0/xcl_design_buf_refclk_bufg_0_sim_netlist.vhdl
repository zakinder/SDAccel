-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4_sdx (win64) Build 1806307 Thu Mar  9 15:24:31 MST 2017
-- Date        : Tue May 16 09:59:58 2017
-- Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Sim/sdaccelku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_buf_refclk_bufg_0/xcl_design_buf_refclk_bufg_0_sim_netlist.vhdl
-- Design      : xcl_design_buf_refclk_bufg_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku115-flvb2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_buf_refclk_bufg_0_util_ds_buf is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_ODIV2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_DS_P : inout STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_DS_N : inout STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_IO_T : in STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_IO_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_IO_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    BUFGCE_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFGCE_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFGCE_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    BUFH_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFH_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    BUFHCE_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFHCE_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFHCE_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_CEMASK : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_CLR : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_CLRMASK : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_DIV : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BUFG_GT_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    lopt : in STD_LOGIC;
    lopt_1 : in STD_LOGIC
  );
  attribute C_BUF_TYPE : string;
  attribute C_BUF_TYPE of xcl_design_buf_refclk_bufg_0_util_ds_buf : entity is "BUFG_GT";
  attribute C_SIZE : integer;
  attribute C_SIZE of xcl_design_buf_refclk_bufg_0_util_ds_buf : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_buf_refclk_bufg_0_util_ds_buf : entity is "util_ds_buf";
end xcl_design_buf_refclk_bufg_0_util_ds_buf;

architecture STRUCTURE of xcl_design_buf_refclk_bufg_0_util_ds_buf is
  signal \<const0>\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \USE_BUFG_GT.GEN_BUFG_GT[0].BUFG_GT_U\ : label is "PRIMITIVE";
begin
  BUFGCE_O(0) <= \<const0>\;
  BUFG_O(0) <= \<const0>\;
  BUFHCE_O(0) <= \<const0>\;
  BUFH_O(0) <= \<const0>\;
  IBUF_DS_ODIV2(0) <= \<const0>\;
  IBUF_OUT(0) <= \<const0>\;
  IOBUF_IO_O(0) <= \<const0>\;
  OBUF_DS_N(0) <= \<const0>\;
  OBUF_DS_P(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\USE_BUFG_GT.GEN_BUFG_GT[0].BUFG_GT_U\: unisim.vcomponents.BUFG_GT
     port map (
      CE => lopt,
      CEMASK => BUFG_GT_CEMASK(0),
      CLR => lopt_1,
      CLRMASK => BUFG_GT_CLRMASK(0),
      DIV(2 downto 0) => BUFG_GT_DIV(2 downto 0),
      I => BUFG_GT_I(0),
      O => BUFG_GT_O(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_buf_refclk_bufg_0 is
  port (
    BUFG_GT_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_CEMASK : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_CLR : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_CLRMASK : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_DIV : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BUFG_GT_O : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of xcl_design_buf_refclk_bufg_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of xcl_design_buf_refclk_bufg_0 : entity is "xcl_design_buf_refclk_bufg_0,util_ds_buf,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of xcl_design_buf_refclk_bufg_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of xcl_design_buf_refclk_bufg_0 : entity is "util_ds_buf,Vivado 2016.4_sdx";
end xcl_design_buf_refclk_bufg_0;

architecture STRUCTURE of xcl_design_buf_refclk_bufg_0 is
  signal \xlnx_opt_\ : STD_LOGIC;
  signal \xlnx_opt__1\ : STD_LOGIC;
  signal NLW_U0_BUFGCE_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_BUFG_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_BUFHCE_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_BUFH_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IBUF_DS_ODIV2_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IBUF_OUT_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IOBUF_DS_N_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IOBUF_DS_P_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IOBUF_IO_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUF_DS_N_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUF_DS_P_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_BUF_TYPE : string;
  attribute C_BUF_TYPE of U0 : label is "BUFG_GT";
  attribute C_SIZE : integer;
  attribute C_SIZE of U0 : label is 1;
begin
BUFG_GT_SYNC: unisim.vcomponents.BUFG_GT_SYNC
     port map (
      CE => BUFG_GT_CE(0),
      CESYNC => \xlnx_opt_\,
      CLK => BUFG_GT_I(0),
      CLR => BUFG_GT_CLR(0),
      CLRSYNC => \xlnx_opt__1\
    );
U0: entity work.xcl_design_buf_refclk_bufg_0_util_ds_buf
     port map (
      BUFGCE_CE(0) => '0',
      BUFGCE_I(0) => '0',
      BUFGCE_O(0) => NLW_U0_BUFGCE_O_UNCONNECTED(0),
      BUFG_GT_CE(0) => BUFG_GT_CE(0),
      BUFG_GT_CEMASK(0) => BUFG_GT_CEMASK(0),
      BUFG_GT_CLR(0) => BUFG_GT_CLR(0),
      BUFG_GT_CLRMASK(0) => BUFG_GT_CLRMASK(0),
      BUFG_GT_DIV(2 downto 0) => BUFG_GT_DIV(2 downto 0),
      BUFG_GT_I(0) => BUFG_GT_I(0),
      BUFG_GT_O(0) => BUFG_GT_O(0),
      BUFG_I(0) => '0',
      BUFG_O(0) => NLW_U0_BUFG_O_UNCONNECTED(0),
      BUFHCE_CE(0) => '0',
      BUFHCE_I(0) => '0',
      BUFHCE_O(0) => NLW_U0_BUFHCE_O_UNCONNECTED(0),
      BUFH_I(0) => '0',
      BUFH_O(0) => NLW_U0_BUFH_O_UNCONNECTED(0),
      IBUF_DS_N(0) => '0',
      IBUF_DS_ODIV2(0) => NLW_U0_IBUF_DS_ODIV2_UNCONNECTED(0),
      IBUF_DS_P(0) => '0',
      IBUF_OUT(0) => NLW_U0_IBUF_OUT_UNCONNECTED(0),
      IOBUF_DS_N(0) => NLW_U0_IOBUF_DS_N_UNCONNECTED(0),
      IOBUF_DS_P(0) => NLW_U0_IOBUF_DS_P_UNCONNECTED(0),
      IOBUF_IO_I(0) => '0',
      IOBUF_IO_O(0) => NLW_U0_IOBUF_IO_O_UNCONNECTED(0),
      IOBUF_IO_T(0) => '0',
      OBUF_DS_N(0) => NLW_U0_OBUF_DS_N_UNCONNECTED(0),
      OBUF_DS_P(0) => NLW_U0_OBUF_DS_P_UNCONNECTED(0),
      OBUF_IN(0) => '0',
      lopt => \xlnx_opt_\,
      lopt_1 => \xlnx_opt__1\
    );
end STRUCTURE;
