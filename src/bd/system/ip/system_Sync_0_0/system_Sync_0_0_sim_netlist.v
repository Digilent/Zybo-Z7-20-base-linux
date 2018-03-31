// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Mar 19 22:13:29 2018
// Host        : ubuntu running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/digilent/work/git/Zybo-Z7-20-base-linux/src/bd/system/ip/system_Sync_0_0/system_Sync_0_0_sim_netlist.v
// Design      : system_Sync_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_Sync_0_0,Sync,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "Sync,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module system_Sync_0_0
   (aRst,
    iIn,
    InClk,
    OutClk,
    oOut);
  input aRst;
  input iIn;
  input InClk;
  input OutClk;
  output oOut;

  wire InClk;
  wire OutClk;
  wire aRst;
  wire iIn;
  wire oOut;

  (* kRegisterInput = "TRUE" *) 
  (* kResetTo = "1'b0" *) 
  (* kRstActiveHigh = "TRUE" *) 
  (* kStages = "2" *) 
  system_Sync_0_0_Sync U0
       (.InClk(InClk),
        .OutClk(OutClk),
        .aRst(aRst),
        .aRst_n(1'b1),
        .iIn(iIn),
        .oOut(oOut));
endmodule

(* ORIG_REF_NAME = "Sync" *) (* kRegisterInput = "TRUE" *) (* kResetTo = "1'b0" *) 
(* kRstActiveHigh = "TRUE" *) (* kStages = "2" *) 
module system_Sync_0_0_Sync
   (aRst,
    aRst_n,
    iIn,
    InClk,
    OutClk,
    oOut);
  input aRst;
  input aRst_n;
  input iIn;
  input InClk;
  input OutClk;
  output oOut;

  wire InClk;
  wire OutClk;
  wire aRst;
  wire iIn;
  wire iIn_q;
  wire oOut;

  FDCE \ReRegister.iIn_q_reg 
       (.C(InClk),
        .CE(1'b1),
        .CLR(aRst),
        .D(iIn),
        .Q(iIn_q));
  system_Sync_0_0_SyncAsync SyncAsyncx
       (.D(iIn_q),
        .OutClk(OutClk),
        .aRst(aRst),
        .oOut(oOut));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module system_Sync_0_0_SyncAsync
   (oOut,
    OutClk,
    aRst,
    D);
  output oOut;
  input OutClk;
  input aRst;
  input [0:0]D;

  wire [0:0]D;
  wire OutClk;
  wire aRst;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign oOut = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(OutClk),
        .CE(1'b1),
        .CLR(aRst),
        .D(D),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(OutClk),
        .CE(1'b1),
        .CLR(aRst),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
