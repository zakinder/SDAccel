-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
-- Date        : Tue May 16 06:15:12 2017
-- Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xcl_design_iob_static_0_stub.vhdl
-- Design      : xcl_design_iob_static_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku115-flvb2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "perst_n_in,perst_n_out,init_calib_complete_in,init_calib_complete_out,led_0_in,led_0_out,emc_clk_in,emc_clk_out,ss_o,ss_t,ss,flash_DQ_I[3:0],io0_i,io0_o,io0_t,io0,io1_i,io1_o,io1_t,io1,io2_i,io2_o,io2_t,io2,io3_i,io3_o,io3_t,io3";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "iob_static,Vivado 2016.3_sdx";
begin
end;
