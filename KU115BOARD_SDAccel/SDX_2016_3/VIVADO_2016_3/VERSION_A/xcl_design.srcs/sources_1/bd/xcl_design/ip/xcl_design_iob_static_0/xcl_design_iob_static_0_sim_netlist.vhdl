-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
-- Date        : Tue May 16 06:15:12 2017
-- Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_iob_static_0/xcl_design_iob_static_0_sim_netlist.vhdl
-- Design      : xcl_design_iob_static_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku115-flvb2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_iob_static_0_iob_static is
  port (
    perst_n_out : out STD_LOGIC;
    led_0_out : out STD_LOGIC;
    init_calib_complete_out : out STD_LOGIC;
    emc_clk_out : out STD_LOGIC;
    io0_i : out STD_LOGIC;
    io1_i : out STD_LOGIC;
    io2_i : out STD_LOGIC;
    io3_i : out STD_LOGIC;
    ss : inout STD_LOGIC;
    io0 : inout STD_LOGIC;
    io1 : inout STD_LOGIC;
    io2 : inout STD_LOGIC;
    io3 : inout STD_LOGIC;
    perst_n_in : in STD_LOGIC;
    led_0_in : in STD_LOGIC;
    init_calib_complete_in : in STD_LOGIC;
    emc_clk_in : in STD_LOGIC;
    ss_o : in STD_LOGIC;
    ss_t : in STD_LOGIC;
    io0_o : in STD_LOGIC;
    io0_t : in STD_LOGIC;
    io1_o : in STD_LOGIC;
    io1_t : in STD_LOGIC;
    io2_o : in STD_LOGIC;
    io2_t : in STD_LOGIC;
    io3_o : in STD_LOGIC;
    io3_t : in STD_LOGIC;
    flash_DQ_I : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_iob_static_0_iob_static : entity is "iob_static";
end xcl_design_iob_static_0_iob_static;

architecture STRUCTURE of xcl_design_iob_static_0_iob_static is
  signal emc_clk_int : STD_LOGIC;
  signal qspi1_io0_i : STD_LOGIC;
  signal qspi1_io1_i : STD_LOGIC;
  signal qspi1_io2_i : STD_LOGIC;
  signal qspi1_io3_i : STD_LOGIC;
  signal NLW_ss_iobuf_O_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of emc_clk_bufg : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of emc_clk_bufg : label is "BUFG";
  attribute BOX_TYPE of emc_clk_ibuf : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of emc_clk_ibuf : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of emc_clk_ibuf : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of emc_clk_ibuf : label is "AUTO";
  attribute BOX_TYPE of init_calib_complete_obuf : label is "PRIMITIVE";
  attribute CAPACITANCE of init_calib_complete_obuf : label is "DONT_CARE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of io0_i_INST_0 : label is "soft_lutpair0";
  attribute BOX_TYPE of io0_iobuf : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of io1_i_INST_0 : label is "soft_lutpair0";
  attribute BOX_TYPE of io1_iobuf : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of io2_i_INST_0 : label is "soft_lutpair1";
  attribute BOX_TYPE of io2_iobuf : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of io3_i_INST_0 : label is "soft_lutpair1";
  attribute BOX_TYPE of io3_iobuf : label is "PRIMITIVE";
  attribute BOX_TYPE of led_0_obuf : label is "PRIMITIVE";
  attribute CAPACITANCE of led_0_obuf : label is "DONT_CARE";
  attribute BOX_TYPE of perst_n_ibuf : label is "PRIMITIVE";
  attribute CAPACITANCE of perst_n_ibuf : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of perst_n_ibuf : label is "0";
  attribute IFD_DELAY_VALUE of perst_n_ibuf : label is "AUTO";
  attribute BOX_TYPE of ss_iobuf : label is "PRIMITIVE";
begin
emc_clk_bufg: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "ASYNC"
    )
        port map (
      CE => '1',
      I => emc_clk_int,
      O => emc_clk_out
    );
emc_clk_ibuf: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => emc_clk_in,
      O => emc_clk_int
    );
init_calib_complete_obuf: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => init_calib_complete_in,
      O => init_calib_complete_out
    );
io0_i_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => flash_DQ_I(0),
      I1 => ss_o,
      I2 => qspi1_io0_i,
      O => io0_i
    );
io0_iobuf: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => io0_o,
      IO => io0,
      O => qspi1_io0_i,
      T => io0_t
    );
io1_i_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => flash_DQ_I(1),
      I1 => ss_o,
      I2 => qspi1_io1_i,
      O => io1_i
    );
io1_iobuf: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => io1_o,
      IO => io1,
      O => qspi1_io1_i,
      T => io1_t
    );
io2_i_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => flash_DQ_I(2),
      I1 => ss_o,
      I2 => qspi1_io2_i,
      O => io2_i
    );
io2_iobuf: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => io2_o,
      IO => io2,
      O => qspi1_io2_i,
      T => io2_t
    );
io3_i_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => flash_DQ_I(3),
      I1 => ss_o,
      I2 => qspi1_io3_i,
      O => io3_i
    );
io3_iobuf: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => io3_o,
      IO => io3,
      O => qspi1_io3_i,
      T => io3_t
    );
led_0_obuf: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => led_0_in,
      O => led_0_out
    );
perst_n_ibuf: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => perst_n_in,
      O => perst_n_out
    );
ss_iobuf: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => ss_o,
      IO => ss,
      O => NLW_ss_iobuf_O_UNCONNECTED,
      T => ss_t
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_iob_static_0 is
  port (
    perst_n_in : in STD_LOGIC;
    perst_n_out : out STD_LOGIC;
    init_calib_complete_in : in STD_LOGIC;
    init_calib_complete_out : out STD_LOGIC;
    led_0_in : in STD_LOGIC;
    led_0_out : out STD_LOGIC;
    emc_clk_in : in STD_LOGIC;
    emc_clk_out : out STD_LOGIC;
    ss_o : in STD_LOGIC;
    ss_t : in STD_LOGIC;
    ss : inout STD_LOGIC;
    flash_DQ_I : in STD_LOGIC_VECTOR ( 3 downto 0 );
    io0_i : out STD_LOGIC;
    io0_o : in STD_LOGIC;
    io0_t : in STD_LOGIC;
    io0 : inout STD_LOGIC;
    io1_i : out STD_LOGIC;
    io1_o : in STD_LOGIC;
    io1_t : in STD_LOGIC;
    io1 : inout STD_LOGIC;
    io2_i : out STD_LOGIC;
    io2_o : in STD_LOGIC;
    io2_t : in STD_LOGIC;
    io2 : inout STD_LOGIC;
    io3_i : out STD_LOGIC;
    io3_o : in STD_LOGIC;
    io3_t : in STD_LOGIC;
    io3 : inout STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of xcl_design_iob_static_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of xcl_design_iob_static_0 : entity is "xcl_design_iob_static_0,iob_static,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of xcl_design_iob_static_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xcl_design_iob_static_0 : entity is "iob_static,Vivado 2016.3_sdx";
end xcl_design_iob_static_0;

architecture STRUCTURE of xcl_design_iob_static_0 is
begin
inst: entity work.xcl_design_iob_static_0_iob_static
     port map (
      emc_clk_in => emc_clk_in,
      emc_clk_out => emc_clk_out,
      flash_DQ_I(3 downto 0) => flash_DQ_I(3 downto 0),
      init_calib_complete_in => init_calib_complete_in,
      init_calib_complete_out => init_calib_complete_out,
      io0 => io0,
      io0_i => io0_i,
      io0_o => io0_o,
      io0_t => io0_t,
      io1 => io1,
      io1_i => io1_i,
      io1_o => io1_o,
      io1_t => io1_t,
      io2 => io2,
      io2_i => io2_i,
      io2_o => io2_o,
      io2_t => io2_t,
      io3 => io3,
      io3_i => io3_i,
      io3_o => io3_o,
      io3_t => io3_t,
      led_0_in => led_0_in,
      led_0_out => led_0_out,
      perst_n_in => perst_n_in,
      perst_n_out => perst_n_out,
      ss => ss,
      ss_o => ss_o,
      ss_t => ss_t
    );
end STRUCTURE;
