-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
-- Date        : Tue May 16 06:11:29 2017
-- Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_startup_primitive_0/xcl_design_startup_primitive_0_sim_netlist.vhdl
-- Design      : xcl_design_startup_primitive_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku115-flvb2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_startup_primitive_0_startup_wrapper is
  port (
    startup_eos : out STD_LOGIC;
    flash_DQ_I : out STD_LOGIC_VECTOR ( 3 downto 0 );
    flash_CS_N : in STD_LOGIC;
    flash_CS_N_tri_ctrl : in STD_LOGIC;
    flash_clk : in STD_LOGIC;
    flash_DQ_O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    flash_DQ_tri_ctrl : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_startup_primitive_0_startup_wrapper : entity is "startup_wrapper";
end xcl_design_startup_primitive_0_startup_wrapper;

architecture STRUCTURE of xcl_design_startup_primitive_0_startup_wrapper is
  signal NLW_STARTUPE3_inst_CFGCLK_UNCONNECTED : STD_LOGIC;
  signal NLW_STARTUPE3_inst_CFGMCLK_UNCONNECTED : STD_LOGIC;
  signal NLW_STARTUPE3_inst_PREQ_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of STARTUPE3_inst : label is "PRIMITIVE";
begin
STARTUPE3_inst: unisim.vcomponents.STARTUPE3
    generic map(
      PROG_USR => "FALSE",
      SIM_CCLK_FREQ => 0.000000
    )
        port map (
      CFGCLK => NLW_STARTUPE3_inst_CFGCLK_UNCONNECTED,
      CFGMCLK => NLW_STARTUPE3_inst_CFGMCLK_UNCONNECTED,
      DI(3 downto 0) => flash_DQ_I(3 downto 0),
      DO(3 downto 0) => flash_DQ_O(3 downto 0),
      DTS(3 downto 0) => flash_DQ_tri_ctrl(3 downto 0),
      EOS => startup_eos,
      FCSBO => flash_CS_N,
      FCSBTS => flash_CS_N_tri_ctrl,
      GSR => '0',
      GTS => '0',
      KEYCLEARB => '1',
      PACK => '0',
      PREQ => NLW_STARTUPE3_inst_PREQ_UNCONNECTED,
      USRCCLKO => flash_clk,
      USRCCLKTS => '0',
      USRDONEO => '0',
      USRDONETS => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_startup_primitive_0 is
  port (
    flash_DQ_I : out STD_LOGIC_VECTOR ( 3 downto 0 );
    flash_DQ_O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    flash_DQ_tri_ctrl : in STD_LOGIC_VECTOR ( 3 downto 0 );
    flash_CS_N : in STD_LOGIC;
    flash_CS_N_tri_ctrl : in STD_LOGIC;
    flash_clk : in STD_LOGIC;
    startup_eos : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of xcl_design_startup_primitive_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of xcl_design_startup_primitive_0 : entity is "xcl_design_startup_primitive_0,startup_wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of xcl_design_startup_primitive_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xcl_design_startup_primitive_0 : entity is "startup_wrapper,Vivado 2016.3_sdx";
end xcl_design_startup_primitive_0;

architecture STRUCTURE of xcl_design_startup_primitive_0 is
begin
inst: entity work.xcl_design_startup_primitive_0_startup_wrapper
     port map (
      flash_CS_N => flash_CS_N,
      flash_CS_N_tri_ctrl => flash_CS_N_tri_ctrl,
      flash_DQ_I(3 downto 0) => flash_DQ_I(3 downto 0),
      flash_DQ_O(3 downto 0) => flash_DQ_O(3 downto 0),
      flash_DQ_tri_ctrl(3 downto 0) => flash_DQ_tri_ctrl(3 downto 0),
      flash_clk => flash_clk,
      startup_eos => startup_eos
    );
end STRUCTURE;
