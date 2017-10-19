-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2.1 (lin64) Build 1957588 Wed Aug  9 16:32:10 MDT 2017
-- Date        : Wed Oct 11 10:52:36 2017
-- Host        : ubuntu running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/digilent/work/git/Zybo-Z7-20-base-linux/src/bd/system/ip/system_util_ds_buf_0_0/system_util_ds_buf_0_0_stub.vhdl
-- Design      : system_util_ds_buf_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_util_ds_buf_0_0 is
  Port ( 
    BUFG_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_O : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end system_util_ds_buf_0_0;

architecture stub of system_util_ds_buf_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "BUFG_I[0:0],BUFG_O[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "util_ds_buf,Vivado 2017.2.1";
begin
end;
