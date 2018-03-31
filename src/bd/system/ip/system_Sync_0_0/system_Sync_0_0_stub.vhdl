-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Mon Mar 19 22:13:29 2018
-- Host        : ubuntu running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/digilent/work/git/Zybo-Z7-20-base-linux/src/bd/system/ip/system_Sync_0_0/system_Sync_0_0_stub.vhdl
-- Design      : system_Sync_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_Sync_0_0 is
  Port ( 
    aRst : in STD_LOGIC;
    iIn : in STD_LOGIC;
    InClk : in STD_LOGIC;
    OutClk : in STD_LOGIC;
    oOut : out STD_LOGIC
  );

end system_Sync_0_0;

architecture stub of system_Sync_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aRst,iIn,InClk,OutClk,oOut";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Sync,Vivado 2017.4";
begin
end;
