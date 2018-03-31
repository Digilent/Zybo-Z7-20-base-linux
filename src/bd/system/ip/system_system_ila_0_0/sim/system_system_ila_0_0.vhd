-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:system_ila:1.1
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY system_system_ila_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe3 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe6 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    probe7 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    SLOT_0_AXIS_tdest : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    SLOT_0_AXIS_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    SLOT_0_AXIS_tlast : IN STD_LOGIC;
    SLOT_0_AXIS_tuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    SLOT_0_AXIS_tvalid : IN STD_LOGIC;
    SLOT_0_AXIS_tready : IN STD_LOGIC;
    SLOT_1_IIC_scl_i : IN STD_LOGIC;
    SLOT_1_IIC_scl_o : IN STD_LOGIC;
    SLOT_1_IIC_scl_t : IN STD_LOGIC;
    SLOT_1_IIC_sda_i : IN STD_LOGIC;
    SLOT_1_IIC_sda_o : IN STD_LOGIC;
    SLOT_1_IIC_sda_t : IN STD_LOGIC;
    resetn : IN STD_LOGIC
  );
END system_system_ila_0_0;

ARCHITECTURE system_system_ila_0_0_arch OF system_system_ila_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF system_system_ila_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT bd_d5b8 IS
    PORT (
      clk : IN STD_LOGIC;
      probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe3 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe6 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      probe7 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      SLOT_0_AXIS_tdest : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      SLOT_0_AXIS_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      SLOT_0_AXIS_tlast : IN STD_LOGIC;
      SLOT_0_AXIS_tuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      SLOT_0_AXIS_tvalid : IN STD_LOGIC;
      SLOT_0_AXIS_tready : IN STD_LOGIC;
      SLOT_1_IIC_scl_i : IN STD_LOGIC;
      SLOT_1_IIC_scl_o : IN STD_LOGIC;
      SLOT_1_IIC_scl_t : IN STD_LOGIC;
      SLOT_1_IIC_sda_i : IN STD_LOGIC;
      SLOT_1_IIC_sda_o : IN STD_LOGIC;
      SLOT_1_IIC_sda_t : IN STD_LOGIC;
      resetn : IN STD_LOGIC
    );
  END COMPONENT bd_d5b8;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF resetn: SIGNAL IS "XIL_INTERFACENAME RST.resetn, POLARITY ACTIVE_LOW, TYPE INTERCONNECT";
  ATTRIBUTE X_INTERFACE_INFO OF resetn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.resetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_IIC_sda_t: SIGNAL IS "xilinx.com:interface:iic:1.0 SLOT_1_IIC SDA_T";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_IIC_sda_o: SIGNAL IS "xilinx.com:interface:iic:1.0 SLOT_1_IIC SDA_O";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_IIC_sda_i: SIGNAL IS "xilinx.com:interface:iic:1.0 SLOT_1_IIC SDA_I";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_IIC_scl_t: SIGNAL IS "xilinx.com:interface:iic:1.0 SLOT_1_IIC SCL_T";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_IIC_scl_o: SIGNAL IS "xilinx.com:interface:iic:1.0 SLOT_1_IIC SCL_O";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_IIC_scl_i: SIGNAL IS "xilinx.com:interface:iic:1.0 SLOT_1_IIC SCL_I";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SLOT_0_AXIS_tdest: SIGNAL IS "XIL_INTERFACENAME SLOT_0_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 8, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tdest: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDEST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME CLK.clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF SLOT_0_AXIS, ASSOCIATED_RESET resetn, ASSOCIATED_CLKEN aclken";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.clk CLK";
BEGIN
  U0 : bd_d5b8
    PORT MAP (
      clk => clk,
      probe0 => probe0,
      probe1 => probe1,
      probe2 => probe2,
      probe3 => probe3,
      probe4 => probe4,
      probe5 => probe5,
      probe6 => probe6,
      probe7 => probe7,
      SLOT_0_AXIS_tdest => SLOT_0_AXIS_tdest,
      SLOT_0_AXIS_tdata => SLOT_0_AXIS_tdata,
      SLOT_0_AXIS_tlast => SLOT_0_AXIS_tlast,
      SLOT_0_AXIS_tuser => SLOT_0_AXIS_tuser,
      SLOT_0_AXIS_tvalid => SLOT_0_AXIS_tvalid,
      SLOT_0_AXIS_tready => SLOT_0_AXIS_tready,
      SLOT_1_IIC_scl_i => SLOT_1_IIC_scl_i,
      SLOT_1_IIC_scl_o => SLOT_1_IIC_scl_o,
      SLOT_1_IIC_scl_t => SLOT_1_IIC_scl_t,
      SLOT_1_IIC_sda_i => SLOT_1_IIC_sda_i,
      SLOT_1_IIC_sda_o => SLOT_1_IIC_sda_o,
      SLOT_1_IIC_sda_t => SLOT_1_IIC_sda_t,
      resetn => resetn
    );
END system_system_ila_0_0_arch;
