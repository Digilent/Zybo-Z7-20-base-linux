// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Tue Mar 13 17:49:25 2018
// Host        : ubuntu running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top system_PS_GPIO_2_0 -prefix
//               system_PS_GPIO_2_0_ system_PS_GPIO_2_0_stub.v
// Design      : system_PS_GPIO_2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlslice_v1_0_1_xlslice,Vivado 2017.4" *)
module system_PS_GPIO_2_0(Din, Dout)
/* synthesis syn_black_box black_box_pad_pin="Din[63:0],Dout[0:0]" */;
  input [63:0]Din;
  output [0:0]Dout;
endmodule
