-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Mon Mar 19 22:13:29 2018
-- Host        : ubuntu running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/digilent/work/git/Zybo-Z7-20-base-linux/src/bd/system/ip/system_Sync_0_0/system_Sync_0_0_sim_netlist.vhdl
-- Design      : system_Sync_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_Sync_0_0_SyncAsync is
  port (
    oOut : out STD_LOGIC;
    OutClk : in STD_LOGIC;
    aRst : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_Sync_0_0_SyncAsync : entity is "SyncAsync";
end system_Sync_0_0_SyncAsync;

architecture STRUCTURE of system_Sync_0_0_SyncAsync is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  oOut <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => OutClk,
      CE => '1',
      CLR => aRst,
      D => D(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => OutClk,
      CE => '1',
      CLR => aRst,
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_Sync_0_0_Sync is
  port (
    aRst : in STD_LOGIC;
    aRst_n : in STD_LOGIC;
    iIn : in STD_LOGIC;
    InClk : in STD_LOGIC;
    OutClk : in STD_LOGIC;
    oOut : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_Sync_0_0_Sync : entity is "Sync";
  attribute kRegisterInput : string;
  attribute kRegisterInput of system_Sync_0_0_Sync : entity is "TRUE";
  attribute kResetTo : string;
  attribute kResetTo of system_Sync_0_0_Sync : entity is "1'b0";
  attribute kRstActiveHigh : string;
  attribute kRstActiveHigh of system_Sync_0_0_Sync : entity is "TRUE";
  attribute kStages : integer;
  attribute kStages of system_Sync_0_0_Sync : entity is 2;
end system_Sync_0_0_Sync;

architecture STRUCTURE of system_Sync_0_0_Sync is
  signal iIn_q : STD_LOGIC;
begin
\ReRegister.iIn_q_reg\: unisim.vcomponents.FDCE
     port map (
      C => InClk,
      CE => '1',
      CLR => aRst,
      D => iIn,
      Q => iIn_q
    );
SyncAsyncx: entity work.system_Sync_0_0_SyncAsync
     port map (
      D(0) => iIn_q,
      OutClk => OutClk,
      aRst => aRst,
      oOut => oOut
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_Sync_0_0 is
  port (
    aRst : in STD_LOGIC;
    iIn : in STD_LOGIC;
    InClk : in STD_LOGIC;
    OutClk : in STD_LOGIC;
    oOut : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_Sync_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_Sync_0_0 : entity is "system_Sync_0_0,Sync,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_Sync_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_Sync_0_0 : entity is "Sync,Vivado 2017.4";
end system_Sync_0_0;

architecture STRUCTURE of system_Sync_0_0 is
  attribute kRegisterInput : string;
  attribute kRegisterInput of U0 : label is "TRUE";
  attribute kResetTo : string;
  attribute kResetTo of U0 : label is "1'b0";
  attribute kRstActiveHigh : string;
  attribute kRstActiveHigh of U0 : label is "TRUE";
  attribute kStages : integer;
  attribute kStages of U0 : label is 2;
begin
U0: entity work.system_Sync_0_0_Sync
     port map (
      InClk => InClk,
      OutClk => OutClk,
      aRst => aRst,
      aRst_n => '1',
      iIn => iIn,
      oOut => oOut
    );
end STRUCTURE;
