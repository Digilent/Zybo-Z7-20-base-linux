-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Sat Mar 10 04:43:20 2018
-- Host        : ubuntu running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top system_PS_GPIO_0_0 -prefix
--               system_PS_GPIO_0_0_ system_PS_GPIO_0_0_stub.vhdl
-- Design      : system_PS_GPIO_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_PS_GPIO_0_0 is
  Port ( 
    Din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end system_PS_GPIO_0_0;

architecture stub of system_PS_GPIO_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Din[63:0],Dout[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xlslice_v1_0_1_xlslice,Vivado 2017.4";
begin
end;
