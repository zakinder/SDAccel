-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4_sdx (win64) Build 1806307 Thu Mar  9 15:24:31 MST 2017
-- Date        : Tue May 16 10:31:54 2017
-- Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xcl_design_debug_bridge_xsdbm_0_stub.vhdl
-- Design      : xcl_design_debug_bridge_xsdbm_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku115-flvb2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    drck : in STD_LOGIC;
    shift : in STD_LOGIC;
    tdi : in STD_LOGIC;
    update : in STD_LOGIC;
    sel : in STD_LOGIC;
    tdo : out STD_LOGIC;
    tms : in STD_LOGIC;
    tck : in STD_LOGIC;
    runtest : in STD_LOGIC;
    reset : in STD_LOGIC;
    capture : in STD_LOGIC;
    bscanid : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,drck,shift,tdi,update,sel,tdo,tms,tck,runtest,reset,capture,bscanid[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_6ad6,Vivado 2016.4_sdx";
begin
end;
