-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dbg_hub_CV is
  Port ( 
    update_0 : out STD_LOGIC;
    capture_0 : out STD_LOGIC;
    reset_0 : out STD_LOGIC;
    runtest_0 : out STD_LOGIC;
    tms_0 : out STD_LOGIC;
    tck_0 : out STD_LOGIC;
    tdi_0 : out STD_LOGIC;
    sel_0 : out STD_LOGIC;
    shift_0 : out STD_LOGIC;
    drck_0 : out STD_LOGIC;
    tdo_0 : in STD_LOGIC;
    bscanid_0 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end dbg_hub_CV;

architecture stub of dbg_hub_CV is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xsdbm_v2_0_1_xsdbm,Vivado 2016.3_sdx";
begin
end;
