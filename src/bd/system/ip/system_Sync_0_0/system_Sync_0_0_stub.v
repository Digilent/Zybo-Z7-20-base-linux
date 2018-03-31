// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Mar 19 22:13:29 2018
// Host        : ubuntu running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/digilent/work/git/Zybo-Z7-20-base-linux/src/bd/system/ip/system_Sync_0_0/system_Sync_0_0_stub.v
// Design      : system_Sync_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Sync,Vivado 2017.4" *)
module system_Sync_0_0(aRst, iIn, InClk, OutClk, oOut)
/* synthesis syn_black_box black_box_pad_pin="aRst,iIn,InClk,OutClk,oOut" */;
  input aRst;
  input iIn;
  input InClk;
  input OutClk;
  output oOut;
endmodule
