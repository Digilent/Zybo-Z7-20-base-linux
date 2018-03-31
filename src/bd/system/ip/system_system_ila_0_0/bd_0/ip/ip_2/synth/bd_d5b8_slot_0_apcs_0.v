// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:axis_protocol_checker:1.2
// IP Revision: 1

(* X_CORE_INFO = "axis_protocol_checker_v1_2_1_top,Vivado 2017.4" *)
(* CHECK_LICENSE_TYPE = "bd_d5b8_slot_0_apcs_0,axis_protocol_checker_v1_2_1_top,{}" *)
(* CORE_GENERATION_INFO = "bd_d5b8_slot_0_apcs_0,axis_protocol_checker_v1_2_1_top,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axis_protocol_checker,x_ipVersion=1.2,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_AXIS_TDATA_WIDTH=16,C_AXIS_TID_WIDTH=1,C_AXIS_TDEST_WIDTH=8,C_AXIS_TUSER_WIDTH=1,C_AXIS_SIGNAL_SET=0b00000000000000000000000011010011,C_PC_MAXWAITS=0,C_PC_MESSAGE_LEVEL=2,C_PC_HAS_SYSTEM_RESET=0,C_PC_STATUS_WIDTH=12}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_d5b8_slot_0_apcs_0 (
  aclk,
  aresetn,
  pc_axis_tvalid,
  pc_axis_tready,
  pc_axis_tdata,
  pc_axis_tlast,
  pc_axis_tdest,
  pc_axis_tuser,
  pc_asserted,
  pc_status
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF PC_AXIS, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_CLKEN aclken" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 PC_AXIS TVALID" *)
input wire pc_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 PC_AXIS TREADY" *)
input wire pc_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 PC_AXIS TDATA" *)
input wire [15 : 0] pc_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 PC_AXIS TLAST" *)
input wire pc_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 PC_AXIS TDEST" *)
input wire [7 : 0] pc_axis_tdest;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PC_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 8, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 PC_AXIS TUSER" *)
input wire [0 : 0] pc_axis_tuser;
output wire pc_asserted;
output wire [11 : 0] pc_status;

  axis_protocol_checker_v1_2_1_top #(
    .C_AXIS_TDATA_WIDTH(16),
    .C_AXIS_TID_WIDTH(1),
    .C_AXIS_TDEST_WIDTH(8),
    .C_AXIS_TUSER_WIDTH(1),
    .C_AXIS_SIGNAL_SET('B00000000000000000000000011010011),
    .C_PC_MAXWAITS(0),
    .C_PC_MESSAGE_LEVEL(2),
    .C_PC_HAS_SYSTEM_RESET(0),
    .C_PC_STATUS_WIDTH(12)
  ) inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .system_resetn(1'D1),
    .aclken(1'D1),
    .pc_axis_tvalid(pc_axis_tvalid),
    .pc_axis_tready(pc_axis_tready),
    .pc_axis_tdata(pc_axis_tdata),
    .pc_axis_tstrb(2'H3),
    .pc_axis_tkeep(2'H3),
    .pc_axis_tlast(pc_axis_tlast),
    .pc_axis_tid(1'D0),
    .pc_axis_tdest(pc_axis_tdest),
    .pc_axis_tuser(pc_axis_tuser),
    .pc_asserted(pc_asserted),
    .pc_status(pc_status)
  );
endmodule
