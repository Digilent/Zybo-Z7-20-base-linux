// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sat Mar 31 12:55:38 2018
// Host        : ubuntu running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/digilent/work/git/Zybo-Z7-20-base-linux/src/bd/system/ip/system_system_ila_0_0/system_system_ila_0_0_stub.v
// Design      : system_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "bd_d5b8,Vivado 2017.4" *)
module system_system_ila_0_0(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, SLOT_0_AXIS_tdest, SLOT_0_AXIS_tdata, SLOT_0_AXIS_tlast, SLOT_0_AXIS_tuser, 
  SLOT_0_AXIS_tvalid, SLOT_0_AXIS_tready, SLOT_1_IIC_scl_i, SLOT_1_IIC_scl_o, 
  SLOT_1_IIC_scl_t, SLOT_1_IIC_sda_i, SLOT_1_IIC_sda_o, SLOT_1_IIC_sda_t, resetn)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[0:0],probe2[0:0],probe3[0:0],probe4[0:0],probe5[0:0],probe6[3:0],probe7[0:0],SLOT_0_AXIS_tdest[7:0],SLOT_0_AXIS_tdata[15:0],SLOT_0_AXIS_tlast,SLOT_0_AXIS_tuser[0:0],SLOT_0_AXIS_tvalid,SLOT_0_AXIS_tready,SLOT_1_IIC_scl_i,SLOT_1_IIC_scl_o,SLOT_1_IIC_scl_t,SLOT_1_IIC_sda_i,SLOT_1_IIC_sda_o,SLOT_1_IIC_sda_t,resetn" */;
  input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [3:0]probe6;
  input [0:0]probe7;
  input [7:0]SLOT_0_AXIS_tdest;
  input [15:0]SLOT_0_AXIS_tdata;
  input SLOT_0_AXIS_tlast;
  input [0:0]SLOT_0_AXIS_tuser;
  input SLOT_0_AXIS_tvalid;
  input SLOT_0_AXIS_tready;
  input SLOT_1_IIC_scl_i;
  input SLOT_1_IIC_scl_o;
  input SLOT_1_IIC_scl_t;
  input SLOT_1_IIC_sda_i;
  input SLOT_1_IIC_sda_o;
  input SLOT_1_IIC_sda_t;
  input resetn;
endmodule
