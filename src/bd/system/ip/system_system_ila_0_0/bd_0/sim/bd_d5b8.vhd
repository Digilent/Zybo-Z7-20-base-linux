--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_d5b8.bd
--Design : bd_d5b8
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_d5b8 is
  port (
    SLOT_0_AXIS_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_0_AXIS_tdest : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXIS_tlast : in STD_LOGIC;
    SLOT_0_AXIS_tready : in STD_LOGIC;
    SLOT_0_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXIS_tvalid : in STD_LOGIC;
    SLOT_1_IIC_scl_i : in STD_LOGIC;
    SLOT_1_IIC_scl_o : in STD_LOGIC;
    SLOT_1_IIC_scl_t : in STD_LOGIC;
    SLOT_1_IIC_sda_i : in STD_LOGIC;
    SLOT_1_IIC_sda_o : in STD_LOGIC;
    SLOT_1_IIC_sda_t : in STD_LOGIC;
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetn : in STD_LOGIC
  );
  attribute core_generation_info : string;
  attribute core_generation_info of bd_d5b8 : entity is "bd_d5b8,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_d5b8,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}";
  attribute hw_handoff : string;
  attribute hw_handoff of bd_d5b8 : entity is "system_system_ila_0_0.hwdef";
end bd_d5b8;

architecture STRUCTURE of bd_d5b8 is
  component bd_d5b8_ila_lib_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe20 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_d5b8_ila_lib_0;
  component bd_d5b8_g_inst_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    slot_0_axis_tvalid : in STD_LOGIC;
    slot_0_axis_tready : in STD_LOGIC;
    slot_0_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    slot_0_axis_tlast : in STD_LOGIC;
    slot_0_axis_tdest : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_0_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_slot_0_axis_tvalid : out STD_LOGIC;
    m_slot_0_axis_tready : out STD_LOGIC;
    m_slot_0_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_slot_0_axis_tlast : out STD_LOGIC;
    m_slot_0_axis_tdest : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_slot_0_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_d5b8_g_inst_0;
  component bd_d5b8_slot_0_apcs_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    pc_axis_tvalid : in STD_LOGIC;
    pc_axis_tready : in STD_LOGIC;
    pc_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pc_axis_tlast : in STD_LOGIC;
    pc_axis_tdest : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pc_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    pc_asserted : out STD_LOGIC;
    pc_status : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component bd_d5b8_slot_0_apcs_0;
  signal Conn_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Conn_TDEST : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn_TLAST : STD_LOGIC;
  signal Conn_TREADY : STD_LOGIC;
  signal Conn_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn_TVALID : STD_LOGIC;
  signal SLOT_1_IIC_scl_i_1 : STD_LOGIC;
  signal SLOT_1_IIC_scl_o_1 : STD_LOGIC;
  signal SLOT_1_IIC_scl_t_1 : STD_LOGIC;
  signal SLOT_1_IIC_sda_i_1 : STD_LOGIC;
  signal SLOT_1_IIC_sda_o_1 : STD_LOGIC;
  signal SLOT_1_IIC_sda_t_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal net_slot_0_apc_pc_asserted : STD_LOGIC;
  signal net_slot_0_axis_tdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal net_slot_0_axis_tdest : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal net_slot_0_axis_tlast : STD_LOGIC;
  signal net_slot_0_axis_tready : STD_LOGIC;
  signal net_slot_0_axis_tuser : STD_LOGIC_VECTOR ( 0 to 0 );
  signal net_slot_0_axis_tvalid : STD_LOGIC;
  signal probe0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe1_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe2_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe3_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe4_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe5_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe6_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal probe7_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal resetn_1 : STD_LOGIC;
  signal NLW_slot_0_apcs_pc_status_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of SLOT_0_AXIS_tlast : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TLAST";
  attribute x_interface_info of SLOT_0_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TREADY";
  attribute x_interface_info of SLOT_0_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TVALID";
  attribute x_interface_info of SLOT_1_IIC_scl_i : signal is "xilinx.com:interface:iic:1.0 SLOT_1_IIC SCL_I";
  attribute x_interface_info of SLOT_1_IIC_scl_o : signal is "xilinx.com:interface:iic:1.0 SLOT_1_IIC SCL_O";
  attribute x_interface_info of SLOT_1_IIC_scl_t : signal is "xilinx.com:interface:iic:1.0 SLOT_1_IIC SCL_T";
  attribute x_interface_info of SLOT_1_IIC_sda_i : signal is "xilinx.com:interface:iic:1.0 SLOT_1_IIC SDA_I";
  attribute x_interface_info of SLOT_1_IIC_sda_o : signal is "xilinx.com:interface:iic:1.0 SLOT_1_IIC SDA_O";
  attribute x_interface_info of SLOT_1_IIC_sda_t : signal is "xilinx.com:interface:iic:1.0 SLOT_1_IIC SDA_T";
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXIS, ASSOCIATED_CLKEN aclken, ASSOCIATED_RESET resetn, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of resetn : signal is "xilinx.com:signal:reset:1.0 RST.RESETN RST";
  attribute x_interface_parameter of resetn : signal is "XIL_INTERFACENAME RST.RESETN, POLARITY ACTIVE_LOW, TYPE INTERCONNECT";
  attribute x_interface_info of SLOT_0_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDATA";
  attribute x_interface_parameter of SLOT_0_AXIS_tdata : signal is "XIL_INTERFACENAME SLOT_0_AXIS, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 2, TDEST_WIDTH 8, TID_WIDTH 0, TUSER_WIDTH 1";
  attribute x_interface_info of SLOT_0_AXIS_tdest : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDEST";
  attribute x_interface_info of SLOT_0_AXIS_tuser : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TUSER";
begin
  Conn_TDATA(15 downto 0) <= SLOT_0_AXIS_tdata(15 downto 0);
  Conn_TDEST(7 downto 0) <= SLOT_0_AXIS_tdest(7 downto 0);
  Conn_TLAST <= SLOT_0_AXIS_tlast;
  Conn_TREADY <= SLOT_0_AXIS_tready;
  Conn_TUSER(0) <= SLOT_0_AXIS_tuser(0);
  Conn_TVALID <= SLOT_0_AXIS_tvalid;
  SLOT_1_IIC_scl_i_1 <= SLOT_1_IIC_scl_i;
  SLOT_1_IIC_scl_o_1 <= SLOT_1_IIC_scl_o;
  SLOT_1_IIC_scl_t_1 <= SLOT_1_IIC_scl_t;
  SLOT_1_IIC_sda_i_1 <= SLOT_1_IIC_sda_i;
  SLOT_1_IIC_sda_o_1 <= SLOT_1_IIC_sda_o;
  SLOT_1_IIC_sda_t_1 <= SLOT_1_IIC_sda_t;
  clk_1 <= clk;
  probe0_1(0) <= probe0(0);
  probe1_1(0) <= probe1(0);
  probe2_1(0) <= probe2(0);
  probe3_1(0) <= probe3(0);
  probe4_1(0) <= probe4(0);
  probe5_1(0) <= probe5(0);
  probe6_1(3 downto 0) <= probe6(3 downto 0);
  probe7_1(0) <= probe7(0);
  resetn_1 <= resetn;
g_inst: component bd_d5b8_g_inst_0
     port map (
      aclk => clk_1,
      aresetn => resetn_1,
      m_slot_0_axis_tdata(15 downto 0) => net_slot_0_axis_tdata(15 downto 0),
      m_slot_0_axis_tdest(7 downto 0) => net_slot_0_axis_tdest(7 downto 0),
      m_slot_0_axis_tlast => net_slot_0_axis_tlast,
      m_slot_0_axis_tready => net_slot_0_axis_tready,
      m_slot_0_axis_tuser(0) => net_slot_0_axis_tuser(0),
      m_slot_0_axis_tvalid => net_slot_0_axis_tvalid,
      slot_0_axis_tdata(15 downto 0) => Conn_TDATA(15 downto 0),
      slot_0_axis_tdest(7 downto 0) => Conn_TDEST(7 downto 0),
      slot_0_axis_tlast => Conn_TLAST,
      slot_0_axis_tready => Conn_TREADY,
      slot_0_axis_tuser(0) => Conn_TUSER(0),
      slot_0_axis_tvalid => Conn_TVALID
    );
ila_lib: component bd_d5b8_ila_lib_0
     port map (
      clk => clk_1,
      probe0(0) => probe0_1(0),
      probe1(0) => probe1_1(0),
      probe10(0) => net_slot_0_axis_tuser(0),
      probe11(0) => net_slot_0_axis_tvalid,
      probe12(0) => net_slot_0_axis_tready,
      probe13(0) => net_slot_0_axis_tlast,
      probe14(0) => net_slot_0_apc_pc_asserted,
      probe15(0) => SLOT_1_IIC_scl_i_1,
      probe16(0) => SLOT_1_IIC_scl_o_1,
      probe17(0) => SLOT_1_IIC_scl_t_1,
      probe18(0) => SLOT_1_IIC_sda_i_1,
      probe19(0) => SLOT_1_IIC_sda_o_1,
      probe2(0) => probe2_1(0),
      probe20(0) => SLOT_1_IIC_sda_t_1,
      probe3(0) => probe3_1(0),
      probe4(0) => probe4_1(0),
      probe5(0) => probe5_1(0),
      probe6(3 downto 0) => probe6_1(3 downto 0),
      probe7(0) => probe7_1(0),
      probe8(15 downto 0) => net_slot_0_axis_tdata(15 downto 0),
      probe9(7 downto 0) => net_slot_0_axis_tdest(7 downto 0)
    );
slot_0_apcs: component bd_d5b8_slot_0_apcs_0
     port map (
      aclk => clk_1,
      aresetn => resetn_1,
      pc_asserted => net_slot_0_apc_pc_asserted,
      pc_axis_tdata(15 downto 0) => Conn_TDATA(15 downto 0),
      pc_axis_tdest(7 downto 0) => Conn_TDEST(7 downto 0),
      pc_axis_tlast => Conn_TLAST,
      pc_axis_tready => Conn_TREADY,
      pc_axis_tuser(0) => Conn_TUSER(0),
      pc_axis_tvalid => Conn_TVALID,
      pc_status(11 downto 0) => NLW_slot_0_apcs_pc_status_UNCONNECTED(11 downto 0)
    );
end STRUCTURE;
