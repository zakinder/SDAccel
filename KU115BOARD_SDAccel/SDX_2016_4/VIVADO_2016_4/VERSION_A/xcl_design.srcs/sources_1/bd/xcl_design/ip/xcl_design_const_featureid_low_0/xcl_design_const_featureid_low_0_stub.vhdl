-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4_sdx (win64) Build 1806307 Thu Mar  9 15:24:31 MST 2017
-- Date        : Tue May 16 09:13:47 2017
-- Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top xcl_design_const_featureid_low_0 -prefix
--               xcl_design_const_featureid_low_0_ xcl_design_const_featureid_high_0_stub.vhdl
-- Design      : xcl_design_const_featureid_high_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku115-flvb2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xcl_design_const_featureid_low_0 is
  Port ( 
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end xcl_design_const_featureid_low_0;

architecture stub of xcl_design_const_featureid_low_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dout[31:0]";
begin
end;
