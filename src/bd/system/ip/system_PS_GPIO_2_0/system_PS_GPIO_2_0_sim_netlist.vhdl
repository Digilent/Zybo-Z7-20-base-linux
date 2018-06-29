-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Tue Mar 13 17:49:26 2018
-- Host        : ubuntu running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top system_PS_GPIO_2_0 -prefix
--               system_PS_GPIO_2_0_ system_PS_GPIO_2_0_sim_netlist.vhdl
-- Design      : system_PS_GPIO_2_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_PS_GPIO_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_PS_GPIO_2_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_PS_GPIO_2_0 : entity is "system_PS_GPIO_2_0,xlslice_v1_0_1_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_PS_GPIO_2_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_PS_GPIO_2_0 : entity is "xlslice_v1_0_1_xlslice,Vivado 2017.4";
end system_PS_GPIO_2_0;

architecture STRUCTURE of system_PS_GPIO_2_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 63 downto 0 );
begin
  Dout(0) <= \^din\(3);
  \^din\(3) <= Din(3);
end STRUCTURE;
