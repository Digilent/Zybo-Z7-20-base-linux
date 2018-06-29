// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sat Mar 10 04:41:59 2018
// Host        : ubuntu running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top system_axi_iic_0_0 -prefix
//               system_axi_iic_0_0_ system_axi_iic_0_0_sim_netlist.v
// Design      : system_axi_iic_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_axi_iic_0_0_SRL_FIFO
   (Rc_Data_Exists,
    Rc_addr,
    Rc_fifo_data,
    p_6_out,
    D,
    Data_Exists_DFF_0,
    Bus2IIC_Reset,
    D_0,
    s_axi_aclk,
    \data_i2c_i_reg[7] ,
    Q,
    Msms_set,
    \RD_FIFO_CNTRL.Rc_fifo_rd_reg ,
    \RD_FIFO_CNTRL.Rc_fifo_wr_reg ,
    Rc_fifo_rd,
    Rc_fifo_rd_d,
    Rc_fifo_wr_d,
    Rc_fifo_wr);
  output Rc_Data_Exists;
  output [0:3]Rc_addr;
  output [0:7]Rc_fifo_data;
  output p_6_out;
  output [1:0]D;
  output Data_Exists_DFF_0;
  input Bus2IIC_Reset;
  input D_0;
  input s_axi_aclk;
  input [7:0]\data_i2c_i_reg[7] ;
  input [3:0]Q;
  input Msms_set;
  input \RD_FIFO_CNTRL.Rc_fifo_rd_reg ;
  input \RD_FIFO_CNTRL.Rc_fifo_wr_reg ;
  input Rc_fifo_rd;
  input Rc_fifo_rd_d;
  input Rc_fifo_wr_d;
  input Rc_fifo_wr;

  wire \Addr_Counters[0].MUXCY_L_I_i_3__1_n_0 ;
  wire \Addr_Counters[3].XORCY_I_i_1__1_n_0 ;
  wire Bus2IIC_Reset;
  wire CI;
  wire [1:0]D;
  wire D_0;
  wire Data_Exists_DFF_0;
  wire Msms_set;
  wire [3:0]Q;
  wire \RD_FIFO_CNTRL.Rc_fifo_rd_reg ;
  wire \RD_FIFO_CNTRL.Rc_fifo_wr_reg ;
  wire \RD_FIFO_CNTRL.ro_prev_i_i_2_n_0 ;
  wire \RD_FIFO_CNTRL.ro_prev_i_i_3_n_0 ;
  wire Rc_Data_Exists;
  wire [0:3]Rc_addr;
  wire [0:7]Rc_fifo_data;
  wire Rc_fifo_rd;
  wire Rc_fifo_rd_d;
  wire Rc_fifo_wr;
  wire Rc_fifo_wr_d;
  wire S;
  wire S0_out;
  wire S1_out;
  wire addr_cy_1;
  wire addr_cy_2;
  wire addr_cy_3;
  wire [7:0]\data_i2c_i_reg[7] ;
  wire p_6_out;
  wire s_axi_aclk;
  wire sum_A_0;
  wire sum_A_1;
  wire sum_A_2;
  wire sum_A_3;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[0].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Rc_Data_Exists),
        .D(sum_A_3),
        .Q(Rc_addr[0]),
        .R(Bus2IIC_Reset));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3],addr_cy_1,addr_cy_2,addr_cy_3}),
        .CYINIT(CI),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],Rc_addr[2],Rc_addr[1],Rc_addr[0]}),
        .O({sum_A_0,sum_A_1,sum_A_2,sum_A_3}),
        .S({\Addr_Counters[3].XORCY_I_i_1__1_n_0 ,S0_out,S1_out,S}));
  LUT4 #(
    .INIT(16'hA208)) 
    \Addr_Counters[0].MUXCY_L_I_i_1__1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3__1_n_0 ),
        .I1(Rc_fifo_rd),
        .I2(Rc_fifo_rd_d),
        .I3(Rc_addr[0]),
        .O(S));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \Addr_Counters[0].MUXCY_L_I_i_2__0 
       (.I0(Rc_addr[1]),
        .I1(Rc_addr[2]),
        .I2(Rc_addr[3]),
        .I3(Rc_addr[0]),
        .I4(\RD_FIFO_CNTRL.Rc_fifo_rd_reg ),
        .I5(\RD_FIFO_CNTRL.Rc_fifo_wr_reg ),
        .O(CI));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \Addr_Counters[0].MUXCY_L_I_i_3__1 
       (.I0(Rc_fifo_wr_d),
        .I1(Rc_fifo_wr),
        .I2(Rc_addr[0]),
        .I3(Rc_addr[3]),
        .I4(Rc_addr[2]),
        .I5(Rc_addr[1]),
        .O(\Addr_Counters[0].MUXCY_L_I_i_3__1_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[1].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Rc_Data_Exists),
        .D(sum_A_2),
        .Q(Rc_addr[1]),
        .R(Bus2IIC_Reset));
  LUT4 #(
    .INIT(16'hA208)) 
    \Addr_Counters[1].MUXCY_L_I_i_1__1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3__1_n_0 ),
        .I1(Rc_fifo_rd),
        .I2(Rc_fifo_rd_d),
        .I3(Rc_addr[1]),
        .O(S1_out));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[2].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Rc_Data_Exists),
        .D(sum_A_1),
        .Q(Rc_addr[2]),
        .R(Bus2IIC_Reset));
  LUT4 #(
    .INIT(16'hA208)) 
    \Addr_Counters[2].MUXCY_L_I_i_1__1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3__1_n_0 ),
        .I1(Rc_fifo_rd),
        .I2(Rc_fifo_rd_d),
        .I3(Rc_addr[2]),
        .O(S0_out));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[3].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Rc_Data_Exists),
        .D(sum_A_0),
        .Q(Rc_addr[3]),
        .R(Bus2IIC_Reset));
  LUT4 #(
    .INIT(16'hA208)) 
    \Addr_Counters[3].XORCY_I_i_1__1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3__1_n_0 ),
        .I1(Rc_fifo_rd),
        .I2(Rc_fifo_rd_d),
        .I3(Rc_addr[3]),
        .O(\Addr_Counters[3].XORCY_I_i_1__1_n_0 ));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    Data_Exists_DFF
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D_0),
        .Q(Rc_Data_Exists),
        .R(Bus2IIC_Reset));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    Data_Exists_DFF_i_2__1
       (.I0(Rc_addr[1]),
        .I1(Rc_addr[2]),
        .I2(Rc_addr[3]),
        .I3(Rc_addr[0]),
        .O(Data_Exists_DFF_0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\X_IIC/READ_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[0].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[0].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(\data_i2c_i_reg[7] [7]),
        .Q(Rc_fifo_data[0]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\X_IIC/READ_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[1].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[1].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(\data_i2c_i_reg[7] [6]),
        .Q(Rc_fifo_data[1]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\X_IIC/READ_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[2].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[2].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(\data_i2c_i_reg[7] [5]),
        .Q(Rc_fifo_data[2]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\X_IIC/READ_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[3].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[3].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(\data_i2c_i_reg[7] [4]),
        .Q(Rc_fifo_data[3]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\X_IIC/READ_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[4].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[4].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(\data_i2c_i_reg[7] [3]),
        .Q(Rc_fifo_data[4]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\X_IIC/READ_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[5].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[5].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(\data_i2c_i_reg[7] [2]),
        .Q(Rc_fifo_data[5]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\X_IIC/READ_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[6].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[6].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(\data_i2c_i_reg[7] [1]),
        .Q(Rc_fifo_data[6]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\X_IIC/READ_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[7].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[7].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(\data_i2c_i_reg[7] [0]),
        .Q(Rc_fifo_data[7]));
  LUT6 #(
    .INIT(64'h0000000004000004)) 
    \RD_FIFO_CNTRL.ro_prev_i_i_1 
       (.I0(\RD_FIFO_CNTRL.ro_prev_i_i_2_n_0 ),
        .I1(\RD_FIFO_CNTRL.ro_prev_i_i_3_n_0 ),
        .I2(Bus2IIC_Reset),
        .I3(Rc_addr[2]),
        .I4(Q[2]),
        .I5(Msms_set),
        .O(p_6_out));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \RD_FIFO_CNTRL.ro_prev_i_i_2 
       (.I0(Rc_addr[0]),
        .I1(Q[0]),
        .I2(Rc_Data_Exists),
        .O(\RD_FIFO_CNTRL.ro_prev_i_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \RD_FIFO_CNTRL.ro_prev_i_i_3 
       (.I0(Rc_addr[3]),
        .I1(Q[3]),
        .I2(Rc_addr[1]),
        .I3(Q[1]),
        .O(\RD_FIFO_CNTRL.ro_prev_i_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sr_i[1]_i_1 
       (.I0(Rc_Data_Exists),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \sr_i[2]_i_1 
       (.I0(Rc_addr[1]),
        .I1(Rc_addr[2]),
        .I2(Rc_addr[3]),
        .I3(Rc_addr[0]),
        .O(D[0]));
endmodule

(* ORIG_REF_NAME = "SRL_FIFO" *) 
module system_axi_iic_0_0_SRL_FIFO_0
   (Tx_data_exists,
    Tx_addr,
    Tx_fifo_data,
    \sr_i_reg[3] ,
    p_3_in,
    \cr_i_reg[5] ,
    \sr_i_reg[0] ,
    \FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7] ,
    Data_Exists_DFF_0,
    \data_int_reg[0] ,
    Tx_fifo_rst,
    D,
    s_axi_aclk,
    s_axi_wdata,
    \FIFO_GEN_DTR.Tx_fifo_rd_reg ,
    \FIFO_GEN_DTR.Tx_fifo_wr_reg ,
    dynamic_MSMS,
    Tx_fifo_rd_d,
    Tx_fifo_rd,
    rdCntrFrmTxFifo,
    Tx_fifo_wr_d,
    Tx_fifo_wr,
    shift_reg_ld,
    scndry_out);
  output Tx_data_exists;
  output [0:3]Tx_addr;
  output [0:7]Tx_fifo_data;
  output [0:0]\sr_i_reg[3] ;
  output p_3_in;
  output \cr_i_reg[5] ;
  output \sr_i_reg[0] ;
  output \FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7] ;
  output Data_Exists_DFF_0;
  output [0:0]\data_int_reg[0] ;
  input Tx_fifo_rst;
  input D;
  input s_axi_aclk;
  input [7:0]s_axi_wdata;
  input \FIFO_GEN_DTR.Tx_fifo_rd_reg ;
  input \FIFO_GEN_DTR.Tx_fifo_wr_reg ;
  input [0:0]dynamic_MSMS;
  input Tx_fifo_rd_d;
  input Tx_fifo_rd;
  input rdCntrFrmTxFifo;
  input Tx_fifo_wr_d;
  input Tx_fifo_wr;
  input shift_reg_ld;
  input scndry_out;

  wire \Addr_Counters[0].MUXCY_L_I_i_3__0_n_0 ;
  wire \Addr_Counters[3].XORCY_I_i_1__0_n_0 ;
  wire CI;
  wire D;
  wire Data_Exists_DFF_0;
  wire \FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7] ;
  wire \FIFO_GEN_DTR.Tx_fifo_rd_reg ;
  wire \FIFO_GEN_DTR.Tx_fifo_wr_reg ;
  wire S;
  wire S0_out;
  wire S1_out;
  wire [0:3]Tx_addr;
  wire Tx_data_exists;
  wire [0:7]Tx_fifo_data;
  wire Tx_fifo_rd;
  wire Tx_fifo_rd_d;
  wire Tx_fifo_rst;
  wire Tx_fifo_wr;
  wire Tx_fifo_wr_d;
  wire addr_cy_1;
  wire addr_cy_2;
  wire addr_cy_3;
  wire \cr_i_reg[5] ;
  wire [0:0]\data_int_reg[0] ;
  wire [0:0]dynamic_MSMS;
  wire p_3_in;
  wire rdCntrFrmTxFifo;
  wire s_axi_aclk;
  wire [7:0]s_axi_wdata;
  wire scndry_out;
  wire shift_reg_ld;
  wire \sr_i_reg[0] ;
  wire [0:0]\sr_i_reg[3] ;
  wire sum_A_0;
  wire sum_A_1;
  wire sum_A_2;
  wire sum_A_3;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[0].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Tx_data_exists),
        .D(sum_A_3),
        .Q(Tx_addr[0]),
        .R(Tx_fifo_rst));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3],addr_cy_1,addr_cy_2,addr_cy_3}),
        .CYINIT(CI),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],Tx_addr[2],Tx_addr[1],Tx_addr[0]}),
        .O({sum_A_0,sum_A_1,sum_A_2,sum_A_3}),
        .S({\Addr_Counters[3].XORCY_I_i_1__0_n_0 ,S0_out,S1_out,S}));
  LUT5 #(
    .INIT(32'h00A2AA08)) 
    \Addr_Counters[0].MUXCY_L_I_i_1__0 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3__0_n_0 ),
        .I1(Tx_fifo_rd),
        .I2(Tx_fifo_rd_d),
        .I3(rdCntrFrmTxFifo),
        .I4(Tx_addr[0]),
        .O(S));
  LUT6 #(
    .INIT(64'h7FFFFFFF00000000)) 
    \Addr_Counters[0].MUXCY_L_I_i_2__1 
       (.I0(\FIFO_GEN_DTR.Tx_fifo_rd_reg ),
        .I1(Tx_addr[1]),
        .I2(Tx_addr[3]),
        .I3(Tx_addr[0]),
        .I4(Tx_addr[2]),
        .I5(\FIFO_GEN_DTR.Tx_fifo_wr_reg ),
        .O(CI));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \Addr_Counters[0].MUXCY_L_I_i_3__0 
       (.I0(Tx_fifo_wr_d),
        .I1(Tx_fifo_wr),
        .I2(Tx_addr[2]),
        .I3(Tx_addr[0]),
        .I4(Tx_addr[3]),
        .I5(Tx_addr[1]),
        .O(\Addr_Counters[0].MUXCY_L_I_i_3__0_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[1].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Tx_data_exists),
        .D(sum_A_2),
        .Q(Tx_addr[1]),
        .R(Tx_fifo_rst));
  LUT5 #(
    .INIT(32'h00A2AA08)) 
    \Addr_Counters[1].MUXCY_L_I_i_1__0 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3__0_n_0 ),
        .I1(Tx_fifo_rd),
        .I2(Tx_fifo_rd_d),
        .I3(rdCntrFrmTxFifo),
        .I4(Tx_addr[1]),
        .O(S1_out));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[2].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Tx_data_exists),
        .D(sum_A_1),
        .Q(Tx_addr[2]),
        .R(Tx_fifo_rst));
  LUT5 #(
    .INIT(32'h00A2AA08)) 
    \Addr_Counters[2].MUXCY_L_I_i_1__0 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3__0_n_0 ),
        .I1(Tx_fifo_rd),
        .I2(Tx_fifo_rd_d),
        .I3(rdCntrFrmTxFifo),
        .I4(Tx_addr[2]),
        .O(S0_out));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[3].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Tx_data_exists),
        .D(sum_A_0),
        .Q(Tx_addr[3]),
        .R(Tx_fifo_rst));
  LUT5 #(
    .INIT(32'h00A2AA08)) 
    \Addr_Counters[3].XORCY_I_i_1__0 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3__0_n_0 ),
        .I1(Tx_fifo_rd),
        .I2(Tx_fifo_rd_d),
        .I3(rdCntrFrmTxFifo),
        .I4(Tx_addr[3]),
        .O(\Addr_Counters[3].XORCY_I_i_1__0_n_0 ));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    Data_Exists_DFF
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(Tx_data_exists),
        .R(Tx_fifo_rst));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    Data_Exists_DFF_i_3
       (.I0(Tx_addr[1]),
        .I1(Tx_addr[3]),
        .I2(Tx_addr[0]),
        .I3(Tx_addr[2]),
        .O(Data_Exists_DFF_0));
  LUT1 #(
    .INIT(2'h1)) 
    \FIFO_GEN_DTR.IIC2Bus_IntrEvent[7]_i_1 
       (.I0(Tx_addr[3]),
        .O(\FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7] ));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[0].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[0].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[7]),
        .Q(Tx_fifo_data[0]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[1].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[1].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[6]),
        .Q(Tx_fifo_data[1]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[2].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[2].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[5]),
        .Q(Tx_fifo_data[2]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[3].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[3].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[4]),
        .Q(Tx_fifo_data[3]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[4].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[4].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[3]),
        .Q(Tx_fifo_data[4]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[5].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[5].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[2]),
        .Q(Tx_fifo_data[5]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[6].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[6].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[1]),
        .Q(Tx_fifo_data[6]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[7].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[7].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[0]),
        .Q(Tx_fifo_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    callingReadAccess_i_1
       (.I0(Tx_data_exists),
        .I1(dynamic_MSMS),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .O(p_3_in));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cr_i[5]_i_2 
       (.I0(Tx_data_exists),
        .I1(dynamic_MSMS),
        .O(\cr_i_reg[5] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_int[0]_i_1 
       (.I0(Tx_fifo_data[7]),
        .I1(shift_reg_ld),
        .I2(scndry_out),
        .O(\data_int_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \sr_i[0]_i_1 
       (.I0(Tx_data_exists),
        .O(\sr_i_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \sr_i[3]_i_1 
       (.I0(Tx_addr[1]),
        .I1(Tx_addr[3]),
        .I2(Tx_addr[0]),
        .I3(Tx_addr[2]),
        .O(\sr_i_reg[3] ));
endmodule

(* ORIG_REF_NAME = "SRL_FIFO" *) 
module system_axi_iic_0_0_SRL_FIFO__parameterized0
   (\Addr_Counters[0].FDRE_I_0 ,
    dynamic_MSMS,
    Data_Exists_DFF_0,
    Tx_fifo_rst,
    D,
    s_axi_aclk,
    ctrlFifoDin,
    Tx_fifo_rd,
    Tx_fifo_rd_d,
    rdCntrFrmTxFifo,
    Tx_fifo_wr_d_reg,
    \FIFO_GEN_DTR.Tx_fifo_rd_reg );
  output \Addr_Counters[0].FDRE_I_0 ;
  output [0:1]dynamic_MSMS;
  output Data_Exists_DFF_0;
  input Tx_fifo_rst;
  input D;
  input s_axi_aclk;
  input [0:1]ctrlFifoDin;
  input Tx_fifo_rd;
  input Tx_fifo_rd_d;
  input rdCntrFrmTxFifo;
  input Tx_fifo_wr_d_reg;
  input \FIFO_GEN_DTR.Tx_fifo_rd_reg ;

  wire \Addr_Counters[0].FDRE_I_0 ;
  wire \Addr_Counters[0].FDRE_I_n_0 ;
  wire \Addr_Counters[0].MUXCY_L_I_i_3_n_0 ;
  wire \Addr_Counters[1].FDRE_I_n_0 ;
  wire \Addr_Counters[2].FDRE_I_n_0 ;
  wire \Addr_Counters[3].FDRE_I_n_0 ;
  wire \Addr_Counters[3].XORCY_I_i_1_n_0 ;
  wire CI;
  wire D;
  wire Data_Exists_DFF_0;
  wire \FIFO_GEN_DTR.Tx_fifo_rd_reg ;
  wire S;
  wire S0_out;
  wire S1_out;
  wire Tx_fifo_rd;
  wire Tx_fifo_rd_d;
  wire Tx_fifo_rst;
  wire Tx_fifo_wr_d_reg;
  wire addr_cy_1;
  wire addr_cy_2;
  wire addr_cy_3;
  wire [0:1]ctrlFifoDin;
  wire [0:1]dynamic_MSMS;
  wire rdCntrFrmTxFifo;
  wire s_axi_aclk;
  wire sum_A_0;
  wire sum_A_1;
  wire sum_A_2;
  wire sum_A_3;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[0].FDRE_I 
       (.C(s_axi_aclk),
        .CE(\Addr_Counters[0].FDRE_I_0 ),
        .D(sum_A_3),
        .Q(\Addr_Counters[0].FDRE_I_n_0 ),
        .R(Tx_fifo_rst));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3],addr_cy_1,addr_cy_2,addr_cy_3}),
        .CYINIT(CI),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],\Addr_Counters[2].FDRE_I_n_0 ,\Addr_Counters[1].FDRE_I_n_0 ,\Addr_Counters[0].FDRE_I_n_0 }),
        .O({sum_A_0,sum_A_1,sum_A_2,sum_A_3}),
        .S({\Addr_Counters[3].XORCY_I_i_1_n_0 ,S0_out,S1_out,S}));
  LUT5 #(
    .INIT(32'h00A2AA08)) 
    \Addr_Counters[0].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(Tx_fifo_rd),
        .I2(Tx_fifo_rd_d),
        .I3(rdCntrFrmTxFifo),
        .I4(\Addr_Counters[0].FDRE_I_n_0 ),
        .O(S));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \Addr_Counters[0].MUXCY_L_I_i_2 
       (.I0(Tx_fifo_wr_d_reg),
        .I1(\Addr_Counters[2].FDRE_I_n_0 ),
        .I2(\Addr_Counters[3].FDRE_I_n_0 ),
        .I3(\Addr_Counters[1].FDRE_I_n_0 ),
        .I4(\Addr_Counters[0].FDRE_I_n_0 ),
        .I5(\FIFO_GEN_DTR.Tx_fifo_rd_reg ),
        .O(CI));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Addr_Counters[0].MUXCY_L_I_i_3 
       (.I0(Tx_fifo_wr_d_reg),
        .I1(\Addr_Counters[2].FDRE_I_n_0 ),
        .I2(\Addr_Counters[0].FDRE_I_n_0 ),
        .I3(\Addr_Counters[3].FDRE_I_n_0 ),
        .I4(\Addr_Counters[1].FDRE_I_n_0 ),
        .O(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[1].FDRE_I 
       (.C(s_axi_aclk),
        .CE(\Addr_Counters[0].FDRE_I_0 ),
        .D(sum_A_2),
        .Q(\Addr_Counters[1].FDRE_I_n_0 ),
        .R(Tx_fifo_rst));
  LUT5 #(
    .INIT(32'h00A2AA08)) 
    \Addr_Counters[1].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(Tx_fifo_rd),
        .I2(Tx_fifo_rd_d),
        .I3(rdCntrFrmTxFifo),
        .I4(\Addr_Counters[1].FDRE_I_n_0 ),
        .O(S1_out));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[2].FDRE_I 
       (.C(s_axi_aclk),
        .CE(\Addr_Counters[0].FDRE_I_0 ),
        .D(sum_A_1),
        .Q(\Addr_Counters[2].FDRE_I_n_0 ),
        .R(Tx_fifo_rst));
  LUT5 #(
    .INIT(32'h00A2AA08)) 
    \Addr_Counters[2].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(Tx_fifo_rd),
        .I2(Tx_fifo_rd_d),
        .I3(rdCntrFrmTxFifo),
        .I4(\Addr_Counters[2].FDRE_I_n_0 ),
        .O(S0_out));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[3].FDRE_I 
       (.C(s_axi_aclk),
        .CE(\Addr_Counters[0].FDRE_I_0 ),
        .D(sum_A_0),
        .Q(\Addr_Counters[3].FDRE_I_n_0 ),
        .R(Tx_fifo_rst));
  LUT5 #(
    .INIT(32'h00A2AA08)) 
    \Addr_Counters[3].XORCY_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(Tx_fifo_rd),
        .I2(Tx_fifo_rd_d),
        .I3(rdCntrFrmTxFifo),
        .I4(\Addr_Counters[3].FDRE_I_n_0 ),
        .O(\Addr_Counters[3].XORCY_I_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    Data_Exists_DFF
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(\Addr_Counters[0].FDRE_I_0 ),
        .R(Tx_fifo_rst));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    Data_Exists_DFF_i_3__0
       (.I0(\Addr_Counters[1].FDRE_I_n_0 ),
        .I1(\Addr_Counters[3].FDRE_I_n_0 ),
        .I2(\Addr_Counters[0].FDRE_I_n_0 ),
        .I3(\Addr_Counters[2].FDRE_I_n_0 ),
        .O(Data_Exists_DFF_0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM " *) 
  (* srl_name = "U0/\X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM[0].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[0].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(ctrlFifoDin[0]),
        .Q(dynamic_MSMS[0]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM " *) 
  (* srl_name = "U0/\X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM[1].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[1].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(ctrlFifoDin[1]),
        .Q(dynamic_MSMS[1]));
endmodule

module system_axi_iic_0_0_address_decoder
   (AXI_IP2Bus_WrAck2_reg,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    s_axi_wready,
    irpt_wrack,
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ,
    \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] ,
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ,
    \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ,
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ,
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    reset_trig0,
    sw_rst_cond,
    AXI_IP2Bus_Error,
    D,
    \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]_0 ,
    Bus2IIC_RdCE,
    E,
    \cr_i_reg[4] ,
    Bus2IIC_WrCE,
    AXI_IP2Bus_RdAck20,
    ipif_glbl_irpt_enable_reg_reg,
    \GPO_GEN.gpo_i_reg[31] ,
    \s_axi_bresp_i_reg[1] ,
    Q,
    s_axi_aclk,
    \bus2ip_addr_i_reg[8] ,
    bus2ip_rnw_i_reg,
    is_read,
    AXI_IP2Bus_RdAck1,
    AXI_IP2Bus_RdAck2,
    s_axi_aresetn,
    is_write_reg,
    AXI_IP2Bus_WrAck1,
    AXI_IP2Bus_WrAck2,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ,
    s_axi_wdata,
    irpt_wrack_d1,
    IIC2Bus_IntrEvent,
    p_1_in,
    p_1_in2_in,
    p_1_in5_in,
    p_1_in8_in,
    p_1_in11_in,
    p_1_in14_in,
    p_1_in17_in,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    sw_rst_cond_d1,
    \ip_irpt_enable_reg_reg[7] ,
    \timing_param_thdsta_i_reg[0] ,
    \timing_param_thigh_i_reg[0] ,
    \bus2ip_addr_i_reg[6] ,
    \bus2ip_addr_i_reg[2] ,
    \timing_param_tbuf_i_reg[1] ,
    \adr_i_reg[6] ,
    \bus2ip_addr_i_reg[2]_0 ,
    \timing_param_tbuf_i_reg[2] ,
    \adr_i_reg[5] ,
    \bus2ip_addr_i_reg[2]_1 ,
    \timing_param_tbuf_i_reg[3] ,
    \adr_i_reg[4] ,
    \bus2ip_addr_i_reg[5] ,
    \adr_i_reg[3] ,
    \bus2ip_addr_i_reg[5]_0 ,
    \bus2ip_addr_i_reg[5]_1 ,
    \adr_i_reg[2] ,
    \timing_param_tsudat_i_reg[5] ,
    \bus2ip_addr_i_reg[5]_2 ,
    \adr_i_reg[1] ,
    \bus2ip_addr_i_reg[5]_3 ,
    \bus2ip_addr_i_reg[5]_4 ,
    \bus2ip_addr_i_reg[5]_5 ,
    \adr_i_reg[0] ,
    \bus2ip_addr_i_reg[2]_2 ,
    \cr_i_reg[4]_0 ,
    cr_txModeSelect_set,
    cr_txModeSelect_clr,
    ipif_glbl_irpt_enable_reg,
    gpo,
    \state_reg[1] ,
    s_axi_bresp);
  output AXI_IP2Bus_WrAck2_reg;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  output s_axi_wready;
  output irpt_wrack;
  output \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  output \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] ;
  output \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ;
  output \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ;
  output \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ;
  output \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  output \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  output reset_trig0;
  output sw_rst_cond;
  output AXI_IP2Bus_Error;
  output [9:0]D;
  output \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]_0 ;
  output [0:0]Bus2IIC_RdCE;
  output [0:0]E;
  output [0:0]\cr_i_reg[4] ;
  output [11:0]Bus2IIC_WrCE;
  output AXI_IP2Bus_RdAck20;
  output ipif_glbl_irpt_enable_reg_reg;
  output \GPO_GEN.gpo_i_reg[31] ;
  output \s_axi_bresp_i_reg[1] ;
  input Q;
  input s_axi_aclk;
  input [8:0]\bus2ip_addr_i_reg[8] ;
  input bus2ip_rnw_i_reg;
  input is_read;
  input AXI_IP2Bus_RdAck1;
  input AXI_IP2Bus_RdAck2;
  input s_axi_aresetn;
  input is_write_reg;
  input AXI_IP2Bus_WrAck1;
  input AXI_IP2Bus_WrAck2;
  input [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ;
  input [8:0]s_axi_wdata;
  input irpt_wrack_d1;
  input [0:7]IIC2Bus_IntrEvent;
  input p_1_in;
  input p_1_in2_in;
  input p_1_in5_in;
  input p_1_in8_in;
  input p_1_in11_in;
  input p_1_in14_in;
  input p_1_in17_in;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  input sw_rst_cond_d1;
  input [7:0]\ip_irpt_enable_reg_reg[7] ;
  input \timing_param_thdsta_i_reg[0] ;
  input \timing_param_thigh_i_reg[0] ;
  input \bus2ip_addr_i_reg[6] ;
  input \bus2ip_addr_i_reg[2] ;
  input \timing_param_tbuf_i_reg[1] ;
  input \adr_i_reg[6] ;
  input \bus2ip_addr_i_reg[2]_0 ;
  input \timing_param_tbuf_i_reg[2] ;
  input \adr_i_reg[5] ;
  input \bus2ip_addr_i_reg[2]_1 ;
  input \timing_param_tbuf_i_reg[3] ;
  input \adr_i_reg[4] ;
  input \bus2ip_addr_i_reg[5] ;
  input \adr_i_reg[3] ;
  input \bus2ip_addr_i_reg[5]_0 ;
  input \bus2ip_addr_i_reg[5]_1 ;
  input \adr_i_reg[2] ;
  input \timing_param_tsudat_i_reg[5] ;
  input \bus2ip_addr_i_reg[5]_2 ;
  input \adr_i_reg[1] ;
  input \bus2ip_addr_i_reg[5]_3 ;
  input \bus2ip_addr_i_reg[5]_4 ;
  input \bus2ip_addr_i_reg[5]_5 ;
  input \adr_i_reg[0] ;
  input \bus2ip_addr_i_reg[2]_2 ;
  input [0:0]\cr_i_reg[4]_0 ;
  input cr_txModeSelect_set;
  input cr_txModeSelect_clr;
  input ipif_glbl_irpt_enable_reg;
  input [0:0]gpo;
  input [1:0]\state_reg[1] ;
  input [0:0]s_axi_bresp;

  wire AXI_IP2Bus_Error;
  wire AXI_IP2Bus_RdAck1;
  wire AXI_IP2Bus_RdAck2;
  wire AXI_IP2Bus_RdAck20;
  wire AXI_IP2Bus_WrAck1;
  wire AXI_IP2Bus_WrAck2;
  wire AXI_IP2Bus_WrAck2_reg;
  wire [0:0]Bus2IIC_RdCE;
  wire [11:0]Bus2IIC_WrCE;
  wire Bus_RNW_reg;
  wire Bus_RNW_reg_i_1_n_0;
  wire [9:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34] ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_2_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  wire \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ;
  wire \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ;
  wire \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ;
  wire \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] ;
  wire \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  wire \GPO_GEN.gpo_i_reg[31] ;
  wire [0:7]IIC2Bus_IntrEvent;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire \MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS ;
  wire \MEM_DECODE_GEN[1].cs_out_i[1]_i_2_n_0 ;
  wire \MEM_DECODE_GEN[1].cs_out_i_reg ;
  wire \MEM_DECODE_GEN[2].cs_out_i_reg ;
  wire Q;
  wire \adr_i_reg[0] ;
  wire \adr_i_reg[1] ;
  wire \adr_i_reg[2] ;
  wire \adr_i_reg[3] ;
  wire \adr_i_reg[4] ;
  wire \adr_i_reg[5] ;
  wire \adr_i_reg[6] ;
  wire \bus2ip_addr_i_reg[2] ;
  wire \bus2ip_addr_i_reg[2]_0 ;
  wire \bus2ip_addr_i_reg[2]_1 ;
  wire \bus2ip_addr_i_reg[2]_2 ;
  wire \bus2ip_addr_i_reg[5] ;
  wire \bus2ip_addr_i_reg[5]_0 ;
  wire \bus2ip_addr_i_reg[5]_1 ;
  wire \bus2ip_addr_i_reg[5]_2 ;
  wire \bus2ip_addr_i_reg[5]_3 ;
  wire \bus2ip_addr_i_reg[5]_4 ;
  wire \bus2ip_addr_i_reg[5]_5 ;
  wire \bus2ip_addr_i_reg[6] ;
  wire [8:0]\bus2ip_addr_i_reg[8] ;
  wire bus2ip_rnw_i_reg;
  wire [0:0]\cr_i_reg[4] ;
  wire [0:0]\cr_i_reg[4]_0 ;
  wire cr_txModeSelect_clr;
  wire cr_txModeSelect_set;
  wire cs_ce_clr;
  wire [0:0]gpo;
  wire [7:0]\ip_irpt_enable_reg_reg[7] ;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire is_read;
  wire is_write_reg;
  wire p_10_in;
  wire p_11_in;
  wire p_12_in;
  wire p_13_in;
  wire p_14_in;
  wire p_15_in;
  wire p_16_in;
  wire p_16_out;
  wire p_17_in;
  wire p_17_out;
  wire p_18_in;
  wire p_1_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire p_25_in;
  wire p_27_in;
  wire p_28_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_7_in;
  wire p_8_in;
  wire p_8_out;
  wire p_9_in;
  wire pselect_hit_i_0;
  wire pselect_hit_i_2;
  wire reset_trig0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [0:0]s_axi_bresp;
  wire \s_axi_bresp_i_reg[1] ;
  wire \s_axi_rdata_i[0]_i_2_n_0 ;
  wire \s_axi_rdata_i[1]_i_2_n_0 ;
  wire \s_axi_rdata_i[2]_i_2_n_0 ;
  wire \s_axi_rdata_i[3]_i_2_n_0 ;
  wire \s_axi_rdata_i[4]_i_2_n_0 ;
  wire \s_axi_rdata_i[5]_i_2_n_0 ;
  wire \s_axi_rdata_i[6]_i_2_n_0 ;
  wire \s_axi_rdata_i[7]_i_2_n_0 ;
  wire \s_axi_rdata_i[8]_i_2_n_0 ;
  wire \s_axi_rdata_i[8]_i_4_n_0 ;
  wire \s_axi_rdata_i[8]_i_5_n_0 ;
  wire \s_axi_rdata_i[8]_i_8_n_0 ;
  wire \s_axi_rdata_i[8]_i_9_n_0 ;
  wire [8:0]s_axi_wdata;
  wire s_axi_wready;
  wire [1:0]\state_reg[1] ;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire \timing_param_tbuf_i_reg[1] ;
  wire \timing_param_tbuf_i_reg[2] ;
  wire \timing_param_tbuf_i_reg[3] ;
  wire \timing_param_thdsta_i_reg[0] ;
  wire \timing_param_thigh_i_reg[0] ;
  wire \timing_param_tsudat_i_reg[5] ;

  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    AXI_IP2Bus_RdAck2_i_1
       (.I0(\MEM_DECODE_GEN[2].cs_out_i_reg ),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg ),
        .I2(\MEM_DECODE_GEN[1].cs_out_i_reg ),
        .I3(bus2ip_rnw_i_reg),
        .O(AXI_IP2Bus_RdAck20));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    AXI_IP2Bus_WrAck2_i_1
       (.I0(\MEM_DECODE_GEN[2].cs_out_i_reg ),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg ),
        .I2(\MEM_DECODE_GEN[1].cs_out_i_reg ),
        .I3(bus2ip_rnw_i_reg),
        .O(AXI_IP2Bus_WrAck2_reg));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(bus2ip_rnw_i_reg),
        .I1(Q),
        .I2(Bus_RNW_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \FIFO_GEN_DTR.Tx_fifo_wr_i_1 
       (.I0(p_16_in),
        .I1(Bus_RNW_reg),
        .O(Bus2IIC_WrCE[10]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [4]),
        .I1(\bus2ip_addr_i_reg[8] [5]),
        .I2(pselect_hit_i_2),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(\bus2ip_addr_i_reg[8] [3]),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1_n_0 ),
        .Q(p_25_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(pselect_hit_i_0),
        .I2(\bus2ip_addr_i_reg[8] [5]),
        .I3(\bus2ip_addr_i_reg[8] [4]),
        .I4(\bus2ip_addr_i_reg[8] [6]),
        .I5(\bus2ip_addr_i_reg[8] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ),
        .Q(p_18_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(pselect_hit_i_0),
        .I2(\bus2ip_addr_i_reg[8] [3]),
        .I3(\bus2ip_addr_i_reg[8] [4]),
        .I4(\bus2ip_addr_i_reg[8] [6]),
        .I5(\bus2ip_addr_i_reg[8] [5]),
        .O(p_16_out));
  FDRE \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_16_out),
        .Q(p_17_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [5]),
        .I1(\bus2ip_addr_i_reg[8] [4]),
        .I2(\bus2ip_addr_i_reg[8] [6]),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(pselect_hit_i_0),
        .I5(\bus2ip_addr_i_reg[8] [3]),
        .O(\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0 ),
        .Q(p_16_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]_0 ),
        .I1(\bus2ip_addr_i_reg[8] [5]),
        .I2(\bus2ip_addr_i_reg[8] [2]),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(\bus2ip_addr_i_reg[8] [8]),
        .O(\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0 ),
        .Q(p_15_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [3]),
        .I2(\bus2ip_addr_i_reg[8] [8]),
        .I3(\bus2ip_addr_i_reg[8] [4]),
        .I4(\bus2ip_addr_i_reg[8] [5]),
        .I5(\bus2ip_addr_i_reg[8] [6]),
        .O(\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0 ),
        .Q(p_14_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [3]),
        .I2(\bus2ip_addr_i_reg[8] [8]),
        .I3(\bus2ip_addr_i_reg[8] [4]),
        .I4(\bus2ip_addr_i_reg[8] [6]),
        .I5(\bus2ip_addr_i_reg[8] [5]),
        .O(\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0 ),
        .Q(p_13_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(pselect_hit_i_0),
        .I3(\bus2ip_addr_i_reg[8] [4]),
        .I4(\bus2ip_addr_i_reg[8] [6]),
        .I5(\bus2ip_addr_i_reg[8] [5]),
        .O(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1_n_0 ),
        .Q(p_12_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(pselect_hit_i_0),
        .I3(\bus2ip_addr_i_reg[8] [4]),
        .I4(\bus2ip_addr_i_reg[8] [5]),
        .I5(\bus2ip_addr_i_reg[8] [6]),
        .O(\GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0 ),
        .Q(p_11_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [3]),
        .I2(\bus2ip_addr_i_reg[8] [4]),
        .I3(\bus2ip_addr_i_reg[8] [5]),
        .I4(\bus2ip_addr_i_reg[8] [6]),
        .I5(\bus2ip_addr_i_reg[8] [8]),
        .O(\GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0 ),
        .Q(p_10_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [8]),
        .I2(\bus2ip_addr_i_reg[8] [5]),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_2 
       (.I0(\bus2ip_addr_i_reg[8] [6]),
        .I1(\bus2ip_addr_i_reg[8] [4]),
        .O(\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1_n_0 ),
        .Q(p_9_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [3]),
        .I2(\bus2ip_addr_i_reg[8] [6]),
        .I3(\bus2ip_addr_i_reg[8] [5]),
        .I4(\bus2ip_addr_i_reg[8] [4]),
        .I5(pselect_hit_i_0),
        .O(\GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0 ),
        .Q(p_8_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(\bus2ip_addr_i_reg[8] [6]),
        .I3(\bus2ip_addr_i_reg[8] [5]),
        .I4(\bus2ip_addr_i_reg[8] [4]),
        .I5(pselect_hit_i_0),
        .O(\GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0 ),
        .Q(p_7_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [3]),
        .I2(\bus2ip_addr_i_reg[8] [8]),
        .I3(\bus2ip_addr_i_reg[8] [4]),
        .I4(\bus2ip_addr_i_reg[8] [6]),
        .I5(\bus2ip_addr_i_reg[8] [5]),
        .O(\GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0 ),
        .Q(p_6_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [3]),
        .I2(\bus2ip_addr_i_reg[8] [8]),
        .I3(\bus2ip_addr_i_reg[8] [4]),
        .I4(\bus2ip_addr_i_reg[8] [5]),
        .I5(\bus2ip_addr_i_reg[8] [6]),
        .O(\GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1_n_0 ),
        .Q(p_5_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(pselect_hit_i_0),
        .I3(\bus2ip_addr_i_reg[8] [4]),
        .I4(\bus2ip_addr_i_reg[8] [5]),
        .I5(\bus2ip_addr_i_reg[8] [6]),
        .O(\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1_n_0 ),
        .Q(p_4_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [5]),
        .I1(\bus2ip_addr_i_reg[8] [4]),
        .I2(\bus2ip_addr_i_reg[8] [2]),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(pselect_hit_i_0),
        .I5(\bus2ip_addr_i_reg[8] [6]),
        .O(\GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1_n_0 ),
        .Q(p_3_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [3]),
        .I2(\bus2ip_addr_i_reg[8] [8]),
        .I3(\bus2ip_addr_i_reg[8] [5]),
        .I4(\bus2ip_addr_i_reg[8] [4]),
        .I5(\bus2ip_addr_i_reg[8] [6]),
        .O(\GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1_n_0 ),
        .Q(p_2_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'hFFFFFFFF4F44FFFF)) 
    \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I1(is_read),
        .I2(AXI_IP2Bus_RdAck1),
        .I3(AXI_IP2Bus_RdAck2),
        .I4(s_axi_aresetn),
        .I5(s_axi_wready),
        .O(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_2 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(pselect_hit_i_0),
        .I2(\bus2ip_addr_i_reg[8] [3]),
        .I3(\bus2ip_addr_i_reg[8] [4]),
        .I4(\bus2ip_addr_i_reg[8] [6]),
        .I5(\bus2ip_addr_i_reg[8] [5]),
        .O(p_17_out));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_3 
       (.I0(Q),
        .I1(\bus2ip_addr_i_reg[8] [8]),
        .O(pselect_hit_i_0));
  FDRE \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_17_out),
        .Q(\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34] ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 
       (.I0(pselect_hit_i_2),
        .I1(\bus2ip_addr_i_reg[8] [4]),
        .I2(\bus2ip_addr_i_reg[8] [5]),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(\bus2ip_addr_i_reg[8] [3]),
        .O(p_8_out));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_8_out),
        .Q(p_28_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[8] [7]),
        .I4(\bus2ip_addr_i_reg[8] [8]),
        .I5(\bus2ip_addr_i_reg[8] [6]),
        .O(\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_2 
       (.I0(\bus2ip_addr_i_reg[8] [4]),
        .I1(\bus2ip_addr_i_reg[8] [5]),
        .O(\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1_n_0 ),
        .Q(p_27_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFF0020)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(Bus_RNW_reg),
        .I2(p_27_in),
        .I3(irpt_wrack_d1),
        .I4(IIC2Bus_IntrEvent[0]),
        .I5(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFF0020)) 
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(Bus_RNW_reg),
        .I2(p_27_in),
        .I3(irpt_wrack_d1),
        .I4(IIC2Bus_IntrEvent[1]),
        .I5(p_1_in17_in),
        .O(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFF0020)) 
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1 
       (.I0(s_axi_wdata[2]),
        .I1(Bus_RNW_reg),
        .I2(p_27_in),
        .I3(irpt_wrack_d1),
        .I4(IIC2Bus_IntrEvent[2]),
        .I5(p_1_in14_in),
        .O(\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFF0020)) 
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1 
       (.I0(s_axi_wdata[3]),
        .I1(Bus_RNW_reg),
        .I2(p_27_in),
        .I3(irpt_wrack_d1),
        .I4(IIC2Bus_IntrEvent[3]),
        .I5(p_1_in11_in),
        .O(\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFF0020)) 
    \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1 
       (.I0(s_axi_wdata[4]),
        .I1(Bus_RNW_reg),
        .I2(p_27_in),
        .I3(irpt_wrack_d1),
        .I4(IIC2Bus_IntrEvent[4]),
        .I5(p_1_in8_in),
        .O(\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFF0020)) 
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1 
       (.I0(s_axi_wdata[5]),
        .I1(Bus_RNW_reg),
        .I2(p_27_in),
        .I3(irpt_wrack_d1),
        .I4(IIC2Bus_IntrEvent[5]),
        .I5(p_1_in5_in),
        .O(\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFF0020)) 
    \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1 
       (.I0(s_axi_wdata[6]),
        .I1(Bus_RNW_reg),
        .I2(p_27_in),
        .I3(irpt_wrack_d1),
        .I4(IIC2Bus_IntrEvent[6]),
        .I5(p_1_in2_in),
        .O(\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFF0020)) 
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1 
       (.I0(s_axi_wdata[7]),
        .I1(Bus_RNW_reg),
        .I2(p_27_in),
        .I3(irpt_wrack_d1),
        .I4(IIC2Bus_IntrEvent[7]),
        .I5(p_1_in),
        .O(\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \GPO_GEN.gpo_i[31]_i_2 
       (.I0(s_axi_wdata[0]),
        .I1(p_9_in),
        .I2(Bus_RNW_reg),
        .I3(gpo),
        .O(\GPO_GEN.gpo_i_reg[31] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [7]),
        .I1(\bus2ip_addr_i_reg[8] [8]),
        .I2(Q),
        .I3(\bus2ip_addr_i_reg[8] [6]),
        .O(pselect_hit_i_2));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(pselect_hit_i_2),
        .Q(\MEM_DECODE_GEN[0].cs_out_i_reg ),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \MEM_DECODE_GEN[1].cs_out_i[1]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [3]),
        .I2(\MEM_DECODE_GEN[1].cs_out_i[1]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[8] [6]),
        .I4(\bus2ip_addr_i_reg[8] [7]),
        .I5(\bus2ip_addr_i_reg[8] [8]),
        .O(\MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS ));
  LUT2 #(
    .INIT(4'hE)) 
    \MEM_DECODE_GEN[1].cs_out_i[1]_i_2 
       (.I0(\bus2ip_addr_i_reg[8] [5]),
        .I1(\bus2ip_addr_i_reg[8] [4]),
        .O(\MEM_DECODE_GEN[1].cs_out_i[1]_i_2_n_0 ));
  FDRE \MEM_DECODE_GEN[1].cs_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS ),
        .Q(\MEM_DECODE_GEN[1].cs_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \MEM_DECODE_GEN[2].cs_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\bus2ip_addr_i_reg[8] [8]),
        .Q(\MEM_DECODE_GEN[2].cs_out_i_reg ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RD_FIFO_CNTRL.Rc_fifo_rd_i_1 
       (.I0(Bus_RNW_reg),
        .I1(p_15_in),
        .O(Bus2IIC_RdCE));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \RD_FIFO_CNTRL.rc_fifo_pirq_i[4]_i_1 
       (.I0(p_10_in),
        .I1(Bus_RNW_reg),
        .O(Bus2IIC_WrCE[8]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \adr_i[0]_i_1 
       (.I0(p_14_in),
        .I1(Bus_RNW_reg),
        .O(Bus2IIC_WrCE[9]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cr_i[0]_i_1 
       (.I0(p_18_in),
        .I1(Bus_RNW_reg),
        .O(Bus2IIC_WrCE[11]));
  LUT6 #(
    .INIT(64'h08080808FBFBFB08)) 
    \cr_i[4]_i_1 
       (.I0(s_axi_wdata[3]),
        .I1(p_18_in),
        .I2(Bus_RNW_reg),
        .I3(\cr_i_reg[4]_0 ),
        .I4(cr_txModeSelect_set),
        .I5(cr_txModeSelect_clr),
        .O(\cr_i_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ip_irpt_enable_reg[7]_i_1 
       (.I0(p_25_in),
        .I1(Bus_RNW_reg),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    ipif_glbl_irpt_enable_reg_i_1
       (.I0(s_axi_wdata[8]),
        .I1(p_28_in),
        .I2(Bus_RNW_reg),
        .I3(ipif_glbl_irpt_enable_reg),
        .O(ipif_glbl_irpt_enable_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0F0E)) 
    irpt_wrack_d1_i_1
       (.I0(p_25_in),
        .I1(p_28_in),
        .I2(Bus_RNW_reg),
        .I3(p_27_in),
        .O(irpt_wrack));
  LUT2 #(
    .INIT(4'h2)) 
    reset_trig_i_1
       (.I0(sw_rst_cond),
        .I1(sw_rst_cond_d1),
        .O(reset_trig0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_bresp_i[1]_i_1 
       (.I0(AXI_IP2Bus_Error),
        .I1(\state_reg[1] [1]),
        .I2(\state_reg[1] [0]),
        .I3(s_axi_bresp),
        .O(\s_axi_bresp_i_reg[1] ));
  LUT6 #(
    .INIT(64'hFFEAAAAAAAEAAAAA)) 
    \s_axi_rdata_i[0]_i_1 
       (.I0(\s_axi_rdata_i[0]_i_2_n_0 ),
        .I1(p_25_in),
        .I2(\ip_irpt_enable_reg_reg[7] [0]),
        .I3(p_27_in),
        .I4(Bus_RNW_reg),
        .I5(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hC0C000C0C0C08080)) 
    \s_axi_rdata_i[0]_i_2 
       (.I0(\timing_param_thdsta_i_reg[0] ),
        .I1(\timing_param_thigh_i_reg[0] ),
        .I2(\s_axi_rdata_i[8]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[6] ),
        .I4(\bus2ip_addr_i_reg[8] [3]),
        .I5(\bus2ip_addr_i_reg[8] [2]),
        .O(\s_axi_rdata_i[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAAAAAAAEAAAAA)) 
    \s_axi_rdata_i[1]_i_1 
       (.I0(\s_axi_rdata_i[1]_i_2_n_0 ),
        .I1(p_25_in),
        .I2(\ip_irpt_enable_reg_reg[7] [1]),
        .I3(p_27_in),
        .I4(Bus_RNW_reg),
        .I5(p_1_in17_in),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h5050405050504000)) 
    \s_axi_rdata_i[1]_i_2 
       (.I0(\bus2ip_addr_i_reg[2] ),
        .I1(\timing_param_tbuf_i_reg[1] ),
        .I2(\s_axi_rdata_i[8]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(\bus2ip_addr_i_reg[8] [2]),
        .I5(\adr_i_reg[6] ),
        .O(\s_axi_rdata_i[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAAAAAAAEAAAAA)) 
    \s_axi_rdata_i[2]_i_1 
       (.I0(\s_axi_rdata_i[2]_i_2_n_0 ),
        .I1(p_25_in),
        .I2(\ip_irpt_enable_reg_reg[7] [2]),
        .I3(p_27_in),
        .I4(Bus_RNW_reg),
        .I5(p_1_in14_in),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h5050405050504000)) 
    \s_axi_rdata_i[2]_i_2 
       (.I0(\bus2ip_addr_i_reg[2]_0 ),
        .I1(\timing_param_tbuf_i_reg[2] ),
        .I2(\s_axi_rdata_i[8]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(\bus2ip_addr_i_reg[8] [2]),
        .I5(\adr_i_reg[5] ),
        .O(\s_axi_rdata_i[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \s_axi_rdata_i[31]_i_2 
       (.I0(p_28_in),
        .I1(ipif_glbl_irpt_enable_reg),
        .I2(Bus_RNW_reg),
        .I3(p_25_in),
        .I4(p_27_in),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFFEAAAAAAAEAAAAA)) 
    \s_axi_rdata_i[3]_i_1 
       (.I0(\s_axi_rdata_i[3]_i_2_n_0 ),
        .I1(p_25_in),
        .I2(\ip_irpt_enable_reg_reg[7] [3]),
        .I3(p_27_in),
        .I4(Bus_RNW_reg),
        .I5(p_1_in11_in),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h5050405050504000)) 
    \s_axi_rdata_i[3]_i_2 
       (.I0(\bus2ip_addr_i_reg[2]_1 ),
        .I1(\timing_param_tbuf_i_reg[3] ),
        .I2(\s_axi_rdata_i[8]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(\bus2ip_addr_i_reg[8] [2]),
        .I5(\adr_i_reg[4] ),
        .O(\s_axi_rdata_i[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAAAAAAAEAAAAA)) 
    \s_axi_rdata_i[4]_i_1 
       (.I0(\s_axi_rdata_i[4]_i_2_n_0 ),
        .I1(p_25_in),
        .I2(\ip_irpt_enable_reg_reg[7] [4]),
        .I3(p_27_in),
        .I4(Bus_RNW_reg),
        .I5(p_1_in8_in),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h000000008888CCC0)) 
    \s_axi_rdata_i[4]_i_2 
       (.I0(\bus2ip_addr_i_reg[5] ),
        .I1(\s_axi_rdata_i[8]_i_2_n_0 ),
        .I2(\adr_i_reg[3] ),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(\bus2ip_addr_i_reg[8] [3]),
        .I5(\bus2ip_addr_i_reg[5]_0 ),
        .O(\s_axi_rdata_i[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAAAAAAAEAAAAA)) 
    \s_axi_rdata_i[5]_i_1 
       (.I0(\s_axi_rdata_i[5]_i_2_n_0 ),
        .I1(p_25_in),
        .I2(\ip_irpt_enable_reg_reg[7] [5]),
        .I3(p_27_in),
        .I4(Bus_RNW_reg),
        .I5(p_1_in5_in),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h88888888CC00C0C0)) 
    \s_axi_rdata_i[5]_i_2 
       (.I0(\bus2ip_addr_i_reg[5]_1 ),
        .I1(\s_axi_rdata_i[8]_i_2_n_0 ),
        .I2(\adr_i_reg[2] ),
        .I3(\timing_param_tsudat_i_reg[5] ),
        .I4(\bus2ip_addr_i_reg[8] [2]),
        .I5(\bus2ip_addr_i_reg[8] [3]),
        .O(\s_axi_rdata_i[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAAAAAAAEAAAAA)) 
    \s_axi_rdata_i[6]_i_1 
       (.I0(\s_axi_rdata_i[6]_i_2_n_0 ),
        .I1(p_25_in),
        .I2(\ip_irpt_enable_reg_reg[7] [6]),
        .I3(p_27_in),
        .I4(Bus_RNW_reg),
        .I5(p_1_in2_in),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h000000008888CCC0)) 
    \s_axi_rdata_i[6]_i_2 
       (.I0(\bus2ip_addr_i_reg[5]_2 ),
        .I1(\s_axi_rdata_i[8]_i_2_n_0 ),
        .I2(\adr_i_reg[1] ),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(\bus2ip_addr_i_reg[8] [3]),
        .I5(\bus2ip_addr_i_reg[5]_3 ),
        .O(\s_axi_rdata_i[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAAAAAAAEAAAAA)) 
    \s_axi_rdata_i[7]_i_1 
       (.I0(\s_axi_rdata_i[7]_i_2_n_0 ),
        .I1(p_25_in),
        .I2(\ip_irpt_enable_reg_reg[7] [7]),
        .I3(p_27_in),
        .I4(Bus_RNW_reg),
        .I5(p_1_in),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h2030203020302000)) 
    \s_axi_rdata_i[7]_i_2 
       (.I0(\bus2ip_addr_i_reg[5]_4 ),
        .I1(\bus2ip_addr_i_reg[5]_5 ),
        .I2(\s_axi_rdata_i[8]_i_2_n_0 ),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(\bus2ip_addr_i_reg[8] [2]),
        .I5(\adr_i_reg[0] ),
        .O(\s_axi_rdata_i[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2020200800000000)) 
    \s_axi_rdata_i[8]_i_1 
       (.I0(\s_axi_rdata_i[8]_i_2_n_0 ),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [5]),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(\bus2ip_addr_i_reg[8] [4]),
        .I5(\bus2ip_addr_i_reg[2]_2 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0000000000000B00)) 
    \s_axi_rdata_i[8]_i_2 
       (.I0(\s_axi_rdata_i[8]_i_4_n_0 ),
        .I1(\s_axi_rdata_i[8]_i_5_n_0 ),
        .I2(\bus2ip_addr_i_reg[8] [7]),
        .I3(Bus_RNW_reg),
        .I4(\bus2ip_addr_i_reg[8] [0]),
        .I5(\bus2ip_addr_i_reg[8] [1]),
        .O(\s_axi_rdata_i[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_axi_rdata_i[8]_i_4 
       (.I0(p_2_in),
        .I1(p_8_in),
        .I2(p_7_in),
        .I3(p_15_in),
        .I4(\s_axi_rdata_i[8]_i_8_n_0 ),
        .I5(\s_axi_rdata_i[8]_i_9_n_0 ),
        .O(\s_axi_rdata_i[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \s_axi_rdata_i[8]_i_5 
       (.I0(p_12_in),
        .I1(\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34] ),
        .I2(p_5_in),
        .I3(p_10_in),
        .I4(p_9_in),
        .I5(p_13_in),
        .O(\s_axi_rdata_i[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_axi_rdata_i[8]_i_8 
       (.I0(p_18_in),
        .I1(p_4_in),
        .I2(p_16_in),
        .I3(p_6_in),
        .O(\s_axi_rdata_i[8]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_axi_rdata_i[8]_i_9 
       (.I0(p_17_in),
        .I1(p_11_in),
        .I2(p_14_in),
        .I3(p_3_in),
        .O(\s_axi_rdata_i[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4440444444444444)) 
    \s_axi_rresp_i[1]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\MEM_DECODE_GEN[1].cs_out_i_reg ),
        .I2(s_axi_wdata[0]),
        .I3(s_axi_wdata[2]),
        .I4(s_axi_wdata[1]),
        .I5(s_axi_wdata[3]),
        .O(AXI_IP2Bus_Error));
  LUT4 #(
    .INIT(16'h4F44)) 
    s_axi_wready_INST_0
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I1(is_write_reg),
        .I2(AXI_IP2Bus_WrAck1),
        .I3(AXI_IP2Bus_WrAck2),
        .O(s_axi_wready));
  LUT4 #(
    .INIT(16'hFFEF)) 
    s_axi_wready_INST_0_i_1
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [3]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [2]),
        .O(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    sw_rst_cond_d1_i_1
       (.I0(Bus_RNW_reg),
        .I1(\MEM_DECODE_GEN[1].cs_out_i_reg ),
        .I2(s_axi_wdata[0]),
        .I3(s_axi_wdata[2]),
        .I4(s_axi_wdata[1]),
        .I5(s_axi_wdata[3]),
        .O(sw_rst_cond));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timing_param_tbuf_i[8]_i_1 
       (.I0(p_4_in),
        .I1(Bus_RNW_reg),
        .O(Bus2IIC_WrCE[3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timing_param_thddat_i[8]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34] ),
        .I1(Bus_RNW_reg),
        .O(Bus2IIC_WrCE[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timing_param_thdsta_i[8]_i_1 
       (.I0(p_6_in),
        .I1(Bus_RNW_reg),
        .O(Bus2IIC_WrCE[5]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timing_param_thigh_i[8]_i_1 
       (.I0(p_3_in),
        .I1(Bus_RNW_reg),
        .O(Bus2IIC_WrCE[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timing_param_tlow_i[8]_i_1 
       (.I0(p_2_in),
        .I1(Bus_RNW_reg),
        .O(Bus2IIC_WrCE[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timing_param_tsudat_i[8]_i_1 
       (.I0(p_5_in),
        .I1(Bus_RNW_reg),
        .O(Bus2IIC_WrCE[4]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timing_param_tsusta_i[8]_i_1 
       (.I0(p_8_in),
        .I1(Bus_RNW_reg),
        .O(Bus2IIC_WrCE[7]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timing_param_tsusto_i[8]_i_1 
       (.I0(p_7_in),
        .I1(Bus_RNW_reg),
        .O(Bus2IIC_WrCE[6]));
endmodule

(* C_DEFAULT_VALUE = "8'b00000000" *) (* C_FAMILY = "zynq" *) (* C_GPO_WIDTH = "1" *) 
(* C_IIC_FREQ = "400000" *) (* C_SCL_INERTIAL_DELAY = "0" *) (* C_SDA_INERTIAL_DELAY = "0" *) 
(* C_SDA_LEVEL = "1" *) (* C_SMBUS_PMBUS_HOST = "0" *) (* C_S_AXI_ACLK_FREQ_HZ = "100000000" *) 
(* C_S_AXI_ADDR_WIDTH = "9" *) (* C_S_AXI_DATA_WIDTH = "32" *) (* C_TEN_BIT_ADR = "0" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module system_axi_iic_0_0_axi_iic
   (s_axi_aclk,
    s_axi_aresetn,
    iic2intc_irpt,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    sda_i,
    sda_o,
    sda_t,
    scl_i,
    scl_o,
    scl_t,
    gpo);
  input s_axi_aclk;
  input s_axi_aresetn;
  output iic2intc_irpt;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input sda_i;
  output sda_o;
  output sda_t;
  input scl_i;
  output scl_o;
  output scl_t;
  output [0:0]gpo;

  wire \<const0> ;
  wire [0:0]gpo;
  wire iic2intc_irpt;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire scl_i;
  wire scl_t;
  wire sda_i;
  wire sda_t;

  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [31];
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8:0] = \^s_axi_rdata [8:0];
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  assign scl_o = \<const0> ;
  assign sda_o = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_axi_iic_0_0_iic X_IIC
       (.gpo(gpo),
        .iic2intc_irpt(iic2intc_irpt),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata({\^s_axi_rdata [31],\^s_axi_rdata [8:0]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[31],s_axi_wdata[9:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .scl_i(scl_i),
        .scl_t(scl_t),
        .sda_i(sda_i),
        .sda_t(sda_t));
endmodule

module system_axi_iic_0_0_axi_ipif_ssp1
   (s_axi_rresp,
    Bus2IIC_Reset,
    Q,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_wready,
    s_axi_arready,
    ctrlFifoDin,
    Bus2IIC_RdCE,
    \cr_i_reg[4] ,
    Bus2IIC_WrCE,
    iic2intc_irpt,
    \GPO_GEN.gpo_i_reg[31] ,
    s_axi_rdata,
    s_axi_aclk,
    s_axi_arvalid,
    \timing_param_tsudat_i_reg[7] ,
    \timing_param_tbuf_i_reg[7] ,
    s_axi_aresetn,
    s_axi_rready,
    s_axi_bready,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_wdata,
    IIC2Bus_IntrEvent,
    Tx_fifo_rst,
    \timing_param_tbuf_i_reg[1] ,
    \adr_i_reg[6] ,
    \timing_param_tbuf_i_reg[2] ,
    \adr_i_reg[5] ,
    \timing_param_tbuf_i_reg[3] ,
    \adr_i_reg[4] ,
    \adr_i_reg[3] ,
    \adr_i_reg[2] ,
    \timing_param_tsudat_i_reg[5] ,
    \adr_i_reg[1] ,
    \adr_i_reg[0] ,
    Tx_fifo_data,
    \timing_param_tsusta_i_reg[7] ,
    \timing_param_tsusto_i_reg[7] ,
    Rc_fifo_data,
    \timing_param_thigh_i_reg[7] ,
    \timing_param_tbuf_i_reg[0] ,
    \bus2ip_addr_i_reg[2] ,
    \sr_i_reg[0] ,
    \timing_param_thddat_i_reg[7] ,
    \timing_param_thdsta_i_reg[0] ,
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ,
    Tx_addr,
    \GPO_GEN.gpo_i_reg[31]_0 ,
    \cr_i_reg[4]_0 ,
    cr_txModeSelect_set,
    cr_txModeSelect_clr,
    \sr_i_reg[4] ,
    \sr_i_reg[5] ,
    \IIC2Bus_IntrEvent_reg[5] ,
    s_axi_araddr,
    s_axi_awaddr,
    gpo);
  output [0:0]s_axi_rresp;
  output Bus2IIC_Reset;
  output [4:0]Q;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output s_axi_wready;
  output s_axi_arready;
  output [0:1]ctrlFifoDin;
  output [0:0]Bus2IIC_RdCE;
  output [0:0]\cr_i_reg[4] ;
  output [11:0]Bus2IIC_WrCE;
  output iic2intc_irpt;
  output \GPO_GEN.gpo_i_reg[31] ;
  output [9:0]s_axi_rdata;
  input s_axi_aclk;
  input s_axi_arvalid;
  input [6:0]\timing_param_tsudat_i_reg[7] ;
  input [3:0]\timing_param_tbuf_i_reg[7] ;
  input s_axi_aresetn;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [10:0]s_axi_wdata;
  input [0:7]IIC2Bus_IntrEvent;
  input Tx_fifo_rst;
  input \timing_param_tbuf_i_reg[1] ;
  input \adr_i_reg[6] ;
  input \timing_param_tbuf_i_reg[2] ;
  input \adr_i_reg[5] ;
  input \timing_param_tbuf_i_reg[3] ;
  input \adr_i_reg[4] ;
  input \adr_i_reg[3] ;
  input \adr_i_reg[2] ;
  input \timing_param_tsudat_i_reg[5] ;
  input \adr_i_reg[1] ;
  input \adr_i_reg[0] ;
  input [3:0]Tx_fifo_data;
  input [3:0]\timing_param_tsusta_i_reg[7] ;
  input [7:0]\timing_param_tsusto_i_reg[7] ;
  input [0:7]Rc_fifo_data;
  input [7:0]\timing_param_thigh_i_reg[7] ;
  input \timing_param_tbuf_i_reg[0] ;
  input \bus2ip_addr_i_reg[2] ;
  input [2:0]\sr_i_reg[0] ;
  input [2:0]\timing_param_thddat_i_reg[7] ;
  input [0:0]\timing_param_thdsta_i_reg[0] ;
  input \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ;
  input [0:3]Tx_addr;
  input \GPO_GEN.gpo_i_reg[31]_0 ;
  input [0:0]\cr_i_reg[4]_0 ;
  input cr_txModeSelect_set;
  input cr_txModeSelect_clr;
  input \sr_i_reg[4] ;
  input \sr_i_reg[5] ;
  input \IIC2Bus_IntrEvent_reg[5] ;
  input [8:0]s_axi_araddr;
  input [8:0]s_axi_awaddr;
  input [0:0]gpo;

  wire AXI_Bus2IP_Reset;
  wire [10:10]AXI_Bus2IP_WrCE;
  wire AXI_IP2Bus_RdAck1;
  wire AXI_IP2Bus_RdAck2;
  wire AXI_IP2Bus_RdAck20;
  wire AXI_IP2Bus_WrAck1;
  wire AXI_IP2Bus_WrAck2;
  wire AXI_LITE_IPIF_I_n_13;
  wire AXI_LITE_IPIF_I_n_14;
  wire AXI_LITE_IPIF_I_n_15;
  wire AXI_LITE_IPIF_I_n_16;
  wire AXI_LITE_IPIF_I_n_17;
  wire AXI_LITE_IPIF_I_n_18;
  wire AXI_LITE_IPIF_I_n_19;
  wire AXI_LITE_IPIF_I_n_20;
  wire AXI_LITE_IPIF_I_n_39;
  wire AXI_LITE_IPIF_I_n_9;
  wire [0:0]Bus2IIC_RdCE;
  wire Bus2IIC_Reset;
  wire [11:0]Bus2IIC_WrCE;
  wire \GPO_GEN.gpo_i_reg[31] ;
  wire \GPO_GEN.gpo_i_reg[31]_0 ;
  wire [0:7]IIC2Bus_IntrEvent;
  wire \IIC2Bus_IntrEvent_reg[5] ;
  wire [4:0]Q;
  wire \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ;
  wire [0:7]Rc_fifo_data;
  wire [0:3]Tx_addr;
  wire [3:0]Tx_fifo_data;
  wire Tx_fifo_rst;
  wire X_INTERRUPT_CONTROL_n_1;
  wire X_INTERRUPT_CONTROL_n_18;
  wire \adr_i_reg[0] ;
  wire \adr_i_reg[1] ;
  wire \adr_i_reg[2] ;
  wire \adr_i_reg[3] ;
  wire \adr_i_reg[4] ;
  wire \adr_i_reg[5] ;
  wire \adr_i_reg[6] ;
  wire \bus2ip_addr_i_reg[2] ;
  wire [0:0]\cr_i_reg[4] ;
  wire [0:0]\cr_i_reg[4]_0 ;
  wire cr_txModeSelect_clr;
  wire cr_txModeSelect_set;
  wire [0:1]ctrlFifoDin;
  wire [0:0]gpo;
  wire iic2intc_irpt;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire p_0_in;
  wire p_0_in10_in;
  wire p_0_in13_in;
  wire p_0_in16_in;
  wire p_0_in1_in;
  wire p_0_in4_in;
  wire p_0_in7_in;
  wire p_1_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire reset_trig0;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [9:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [10:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [2:0]\sr_i_reg[0] ;
  wire \sr_i_reg[4] ;
  wire \sr_i_reg[5] ;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire \timing_param_tbuf_i_reg[0] ;
  wire \timing_param_tbuf_i_reg[1] ;
  wire \timing_param_tbuf_i_reg[2] ;
  wire \timing_param_tbuf_i_reg[3] ;
  wire [3:0]\timing_param_tbuf_i_reg[7] ;
  wire [2:0]\timing_param_thddat_i_reg[7] ;
  wire [0:0]\timing_param_thdsta_i_reg[0] ;
  wire [7:0]\timing_param_thigh_i_reg[7] ;
  wire \timing_param_tsudat_i_reg[5] ;
  wire [6:0]\timing_param_tsudat_i_reg[7] ;
  wire [3:0]\timing_param_tsusta_i_reg[7] ;
  wire [7:0]\timing_param_tsusto_i_reg[7] ;

  FDRE AXI_IP2Bus_RdAck1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_IP2Bus_RdAck2),
        .Q(AXI_IP2Bus_RdAck1),
        .R(1'b0));
  FDRE AXI_IP2Bus_RdAck2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_IP2Bus_RdAck20),
        .Q(AXI_IP2Bus_RdAck2),
        .R(1'b0));
  FDRE AXI_IP2Bus_WrAck1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_IP2Bus_WrAck2),
        .Q(AXI_IP2Bus_WrAck1),
        .R(1'b0));
  FDRE AXI_IP2Bus_WrAck2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_LITE_IPIF_I_n_9),
        .Q(AXI_IP2Bus_WrAck2),
        .R(1'b0));
  system_axi_iic_0_0_axi_lite_ipif AXI_LITE_IPIF_I
       (.AXI_Bus2IP_Reset(AXI_Bus2IP_Reset),
        .AXI_IP2Bus_RdAck1(AXI_IP2Bus_RdAck1),
        .AXI_IP2Bus_RdAck2(AXI_IP2Bus_RdAck2),
        .AXI_IP2Bus_RdAck20(AXI_IP2Bus_RdAck20),
        .AXI_IP2Bus_WrAck1(AXI_IP2Bus_WrAck1),
        .AXI_IP2Bus_WrAck2(AXI_IP2Bus_WrAck2),
        .AXI_IP2Bus_WrAck2_reg(AXI_LITE_IPIF_I_n_9),
        .Bus2IIC_RdCE(Bus2IIC_RdCE),
        .Bus2IIC_WrCE(Bus2IIC_WrCE),
        .E(AXI_Bus2IP_WrCE),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (AXI_LITE_IPIF_I_n_20),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (X_INTERRUPT_CONTROL_n_1),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] (AXI_LITE_IPIF_I_n_19),
        .\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] (AXI_LITE_IPIF_I_n_18),
        .\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] (AXI_LITE_IPIF_I_n_17),
        .\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] (AXI_LITE_IPIF_I_n_16),
        .\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] (AXI_LITE_IPIF_I_n_15),
        .\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] (AXI_LITE_IPIF_I_n_14),
        .\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] (AXI_LITE_IPIF_I_n_13),
        .\GPO_GEN.gpo_i_reg[31] (\GPO_GEN.gpo_i_reg[31] ),
        .\GPO_GEN.gpo_i_reg[31]_0 (\GPO_GEN.gpo_i_reg[31]_0 ),
        .IIC2Bus_IntrEvent(IIC2Bus_IntrEvent),
        .\IIC2Bus_IntrEvent_reg[5] (\IIC2Bus_IntrEvent_reg[5] ),
        .Q(Q),
        .\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] (\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ),
        .Rc_fifo_data(Rc_fifo_data),
        .Tx_addr(Tx_addr),
        .Tx_fifo_data(Tx_fifo_data),
        .\adr_i_reg[0] (\adr_i_reg[0] ),
        .\adr_i_reg[1] (\adr_i_reg[1] ),
        .\adr_i_reg[2] (\adr_i_reg[2] ),
        .\adr_i_reg[3] (\adr_i_reg[3] ),
        .\adr_i_reg[4] (\adr_i_reg[4] ),
        .\adr_i_reg[5] (\adr_i_reg[5] ),
        .\adr_i_reg[6] (\adr_i_reg[6] ),
        .\bus2ip_addr_i_reg[2] (\bus2ip_addr_i_reg[2] ),
        .\cr_i_reg[4] (\cr_i_reg[4] ),
        .\cr_i_reg[4]_0 (\cr_i_reg[4]_0 ),
        .cr_txModeSelect_clr(cr_txModeSelect_clr),
        .cr_txModeSelect_set(cr_txModeSelect_set),
        .gpo(gpo),
        .\ip_irpt_enable_reg_reg[7] ({p_0_in16_in,p_0_in13_in,p_0_in10_in,p_0_in7_in,p_0_in4_in,p_0_in1_in,p_0_in,X_INTERRUPT_CONTROL_n_18}),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(AXI_LITE_IPIF_I_n_39),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .p_1_in(p_1_in),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .reset_trig0(reset_trig0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[10],s_axi_wdata[7:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .\sr_i_reg[0] (\sr_i_reg[0] ),
        .\sr_i_reg[4] (\sr_i_reg[4] ),
        .\sr_i_reg[5] (\sr_i_reg[5] ),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1),
        .\timing_param_tbuf_i_reg[0] (\timing_param_tbuf_i_reg[0] ),
        .\timing_param_tbuf_i_reg[1] (\timing_param_tbuf_i_reg[1] ),
        .\timing_param_tbuf_i_reg[2] (\timing_param_tbuf_i_reg[2] ),
        .\timing_param_tbuf_i_reg[3] (\timing_param_tbuf_i_reg[3] ),
        .\timing_param_tbuf_i_reg[7] (\timing_param_tbuf_i_reg[7] ),
        .\timing_param_thddat_i_reg[7] (\timing_param_thddat_i_reg[7] ),
        .\timing_param_thdsta_i_reg[0] (\timing_param_thdsta_i_reg[0] ),
        .\timing_param_thigh_i_reg[7] (\timing_param_thigh_i_reg[7] ),
        .\timing_param_tsudat_i_reg[5] (\timing_param_tsudat_i_reg[5] ),
        .\timing_param_tsudat_i_reg[7] (\timing_param_tsudat_i_reg[7] ),
        .\timing_param_tsusta_i_reg[7] (\timing_param_tsusta_i_reg[7] ),
        .\timing_param_tsusto_i_reg[7] (\timing_param_tsusto_i_reg[7] ));
  system_axi_iic_0_0_interrupt_control X_INTERRUPT_CONTROL
       (.Bus_RNW_reg_reg(AXI_LITE_IPIF_I_n_20),
        .Bus_RNW_reg_reg_0(AXI_LITE_IPIF_I_n_19),
        .Bus_RNW_reg_reg_1(AXI_LITE_IPIF_I_n_18),
        .Bus_RNW_reg_reg_2(AXI_LITE_IPIF_I_n_17),
        .Bus_RNW_reg_reg_3(AXI_LITE_IPIF_I_n_16),
        .Bus_RNW_reg_reg_4(AXI_LITE_IPIF_I_n_15),
        .Bus_RNW_reg_reg_5(AXI_LITE_IPIF_I_n_14),
        .Bus_RNW_reg_reg_6(AXI_LITE_IPIF_I_n_13),
        .E(AXI_Bus2IP_WrCE),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (AXI_LITE_IPIF_I_n_39),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (X_INTERRUPT_CONTROL_n_1),
        .Q({p_0_in16_in,p_0_in13_in,p_0_in10_in,p_0_in7_in,p_0_in4_in,p_0_in1_in,p_0_in,X_INTERRUPT_CONTROL_n_18}),
        .SR(Bus2IIC_Reset),
        .iic2intc_irpt(iic2intc_irpt),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .p_1_in(p_1_in),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[7:0]));
  system_axi_iic_0_0_soft_reset X_SOFT_RESET
       (.AXI_Bus2IP_Reset(AXI_Bus2IP_Reset),
        .SR(Bus2IIC_Reset),
        .Tx_fifo_rst(Tx_fifo_rst),
        .ctrlFifoDin(ctrlFifoDin),
        .reset_trig0(reset_trig0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata[9:8]),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1));
endmodule

module system_axi_iic_0_0_axi_lite_ipif
   (s_axi_rresp,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    Q,
    AXI_IP2Bus_WrAck2_reg,
    s_axi_wready,
    s_axi_arready,
    irpt_wrack,
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ,
    \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] ,
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ,
    \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ,
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ,
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    reset_trig0,
    sw_rst_cond,
    Bus2IIC_RdCE,
    E,
    \cr_i_reg[4] ,
    Bus2IIC_WrCE,
    AXI_IP2Bus_RdAck20,
    ipif_glbl_irpt_enable_reg_reg,
    \GPO_GEN.gpo_i_reg[31] ,
    s_axi_rdata,
    AXI_Bus2IP_Reset,
    s_axi_aclk,
    s_axi_arvalid,
    \timing_param_tsudat_i_reg[7] ,
    \timing_param_tbuf_i_reg[7] ,
    AXI_IP2Bus_RdAck1,
    AXI_IP2Bus_RdAck2,
    s_axi_aresetn,
    AXI_IP2Bus_WrAck1,
    AXI_IP2Bus_WrAck2,
    s_axi_rready,
    s_axi_bready,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_wdata,
    irpt_wrack_d1,
    IIC2Bus_IntrEvent,
    p_1_in,
    p_1_in2_in,
    p_1_in5_in,
    p_1_in8_in,
    p_1_in11_in,
    p_1_in14_in,
    p_1_in17_in,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    sw_rst_cond_d1,
    \ip_irpt_enable_reg_reg[7] ,
    \timing_param_tbuf_i_reg[1] ,
    \adr_i_reg[6] ,
    \timing_param_tbuf_i_reg[2] ,
    \adr_i_reg[5] ,
    \timing_param_tbuf_i_reg[3] ,
    \adr_i_reg[4] ,
    \adr_i_reg[3] ,
    \adr_i_reg[2] ,
    \timing_param_tsudat_i_reg[5] ,
    \adr_i_reg[1] ,
    \adr_i_reg[0] ,
    Tx_fifo_data,
    \timing_param_tsusta_i_reg[7] ,
    \timing_param_tsusto_i_reg[7] ,
    Rc_fifo_data,
    \timing_param_thigh_i_reg[7] ,
    \timing_param_tbuf_i_reg[0] ,
    \bus2ip_addr_i_reg[2] ,
    \sr_i_reg[0] ,
    \timing_param_thddat_i_reg[7] ,
    \timing_param_thdsta_i_reg[0] ,
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ,
    Tx_addr,
    \GPO_GEN.gpo_i_reg[31]_0 ,
    \cr_i_reg[4]_0 ,
    cr_txModeSelect_set,
    cr_txModeSelect_clr,
    ipif_glbl_irpt_enable_reg,
    \sr_i_reg[4] ,
    \sr_i_reg[5] ,
    \IIC2Bus_IntrEvent_reg[5] ,
    s_axi_araddr,
    s_axi_awaddr,
    gpo);
  output [0:0]s_axi_rresp;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output [4:0]Q;
  output AXI_IP2Bus_WrAck2_reg;
  output s_axi_wready;
  output s_axi_arready;
  output irpt_wrack;
  output \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  output \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] ;
  output \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ;
  output \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ;
  output \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ;
  output \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  output \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  output reset_trig0;
  output sw_rst_cond;
  output [0:0]Bus2IIC_RdCE;
  output [0:0]E;
  output [0:0]\cr_i_reg[4] ;
  output [11:0]Bus2IIC_WrCE;
  output AXI_IP2Bus_RdAck20;
  output ipif_glbl_irpt_enable_reg_reg;
  output \GPO_GEN.gpo_i_reg[31] ;
  output [9:0]s_axi_rdata;
  input AXI_Bus2IP_Reset;
  input s_axi_aclk;
  input s_axi_arvalid;
  input [6:0]\timing_param_tsudat_i_reg[7] ;
  input [3:0]\timing_param_tbuf_i_reg[7] ;
  input AXI_IP2Bus_RdAck1;
  input AXI_IP2Bus_RdAck2;
  input s_axi_aresetn;
  input AXI_IP2Bus_WrAck1;
  input AXI_IP2Bus_WrAck2;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [8:0]s_axi_wdata;
  input irpt_wrack_d1;
  input [0:7]IIC2Bus_IntrEvent;
  input p_1_in;
  input p_1_in2_in;
  input p_1_in5_in;
  input p_1_in8_in;
  input p_1_in11_in;
  input p_1_in14_in;
  input p_1_in17_in;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  input sw_rst_cond_d1;
  input [7:0]\ip_irpt_enable_reg_reg[7] ;
  input \timing_param_tbuf_i_reg[1] ;
  input \adr_i_reg[6] ;
  input \timing_param_tbuf_i_reg[2] ;
  input \adr_i_reg[5] ;
  input \timing_param_tbuf_i_reg[3] ;
  input \adr_i_reg[4] ;
  input \adr_i_reg[3] ;
  input \adr_i_reg[2] ;
  input \timing_param_tsudat_i_reg[5] ;
  input \adr_i_reg[1] ;
  input \adr_i_reg[0] ;
  input [3:0]Tx_fifo_data;
  input [3:0]\timing_param_tsusta_i_reg[7] ;
  input [7:0]\timing_param_tsusto_i_reg[7] ;
  input [0:7]Rc_fifo_data;
  input [7:0]\timing_param_thigh_i_reg[7] ;
  input \timing_param_tbuf_i_reg[0] ;
  input \bus2ip_addr_i_reg[2] ;
  input [2:0]\sr_i_reg[0] ;
  input [2:0]\timing_param_thddat_i_reg[7] ;
  input [0:0]\timing_param_thdsta_i_reg[0] ;
  input \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ;
  input [0:3]Tx_addr;
  input \GPO_GEN.gpo_i_reg[31]_0 ;
  input [0:0]\cr_i_reg[4]_0 ;
  input cr_txModeSelect_set;
  input cr_txModeSelect_clr;
  input ipif_glbl_irpt_enable_reg;
  input \sr_i_reg[4] ;
  input \sr_i_reg[5] ;
  input \IIC2Bus_IntrEvent_reg[5] ;
  input [8:0]s_axi_araddr;
  input [8:0]s_axi_awaddr;
  input [0:0]gpo;

  wire AXI_Bus2IP_Reset;
  wire AXI_IP2Bus_RdAck1;
  wire AXI_IP2Bus_RdAck2;
  wire AXI_IP2Bus_RdAck20;
  wire AXI_IP2Bus_WrAck1;
  wire AXI_IP2Bus_WrAck2;
  wire AXI_IP2Bus_WrAck2_reg;
  wire [0:0]Bus2IIC_RdCE;
  wire [11:0]Bus2IIC_WrCE;
  wire [0:0]E;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  wire \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ;
  wire \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ;
  wire \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ;
  wire \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] ;
  wire \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  wire \GPO_GEN.gpo_i_reg[31] ;
  wire \GPO_GEN.gpo_i_reg[31]_0 ;
  wire [0:7]IIC2Bus_IntrEvent;
  wire \IIC2Bus_IntrEvent_reg[5] ;
  wire [4:0]Q;
  wire \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ;
  wire [0:7]Rc_fifo_data;
  wire [0:3]Tx_addr;
  wire [3:0]Tx_fifo_data;
  wire \adr_i_reg[0] ;
  wire \adr_i_reg[1] ;
  wire \adr_i_reg[2] ;
  wire \adr_i_reg[3] ;
  wire \adr_i_reg[4] ;
  wire \adr_i_reg[5] ;
  wire \adr_i_reg[6] ;
  wire \bus2ip_addr_i_reg[2] ;
  wire [0:0]\cr_i_reg[4] ;
  wire [0:0]\cr_i_reg[4]_0 ;
  wire cr_txModeSelect_clr;
  wire cr_txModeSelect_set;
  wire [0:0]gpo;
  wire [7:0]\ip_irpt_enable_reg_reg[7] ;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire p_1_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire reset_trig0;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [9:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [8:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [2:0]\sr_i_reg[0] ;
  wire \sr_i_reg[4] ;
  wire \sr_i_reg[5] ;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire \timing_param_tbuf_i_reg[0] ;
  wire \timing_param_tbuf_i_reg[1] ;
  wire \timing_param_tbuf_i_reg[2] ;
  wire \timing_param_tbuf_i_reg[3] ;
  wire [3:0]\timing_param_tbuf_i_reg[7] ;
  wire [2:0]\timing_param_thddat_i_reg[7] ;
  wire [0:0]\timing_param_thdsta_i_reg[0] ;
  wire [7:0]\timing_param_thigh_i_reg[7] ;
  wire \timing_param_tsudat_i_reg[5] ;
  wire [6:0]\timing_param_tsudat_i_reg[7] ;
  wire [3:0]\timing_param_tsusta_i_reg[7] ;
  wire [7:0]\timing_param_tsusto_i_reg[7] ;

  system_axi_iic_0_0_slave_attachment I_SLAVE_ATTACHMENT
       (.AXI_Bus2IP_Reset(AXI_Bus2IP_Reset),
        .AXI_IP2Bus_RdAck1(AXI_IP2Bus_RdAck1),
        .AXI_IP2Bus_RdAck2(AXI_IP2Bus_RdAck2),
        .AXI_IP2Bus_RdAck20(AXI_IP2Bus_RdAck20),
        .AXI_IP2Bus_WrAck1(AXI_IP2Bus_WrAck1),
        .AXI_IP2Bus_WrAck2(AXI_IP2Bus_WrAck2),
        .AXI_IP2Bus_WrAck2_reg(AXI_IP2Bus_WrAck2_reg),
        .Bus2IIC_RdCE(Bus2IIC_RdCE),
        .Bus2IIC_WrCE(Bus2IIC_WrCE),
        .E(E),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ),
        .\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] (\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ),
        .\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] (\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ),
        .\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] (\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ),
        .\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] (\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ),
        .\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] (\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] ),
        .\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] (\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ),
        .\GPO_GEN.gpo_i_reg[31] (\GPO_GEN.gpo_i_reg[31] ),
        .\GPO_GEN.gpo_i_reg[31]_0 (\GPO_GEN.gpo_i_reg[31]_0 ),
        .IIC2Bus_IntrEvent(IIC2Bus_IntrEvent),
        .\IIC2Bus_IntrEvent_reg[5] (\IIC2Bus_IntrEvent_reg[5] ),
        .Q(Q),
        .\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] (\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ),
        .Rc_fifo_data(Rc_fifo_data),
        .Tx_addr(Tx_addr),
        .Tx_fifo_data(Tx_fifo_data),
        .\adr_i_reg[0] (\adr_i_reg[0] ),
        .\adr_i_reg[1] (\adr_i_reg[1] ),
        .\adr_i_reg[2] (\adr_i_reg[2] ),
        .\adr_i_reg[3] (\adr_i_reg[3] ),
        .\adr_i_reg[4] (\adr_i_reg[4] ),
        .\adr_i_reg[5] (\adr_i_reg[5] ),
        .\adr_i_reg[6] (\adr_i_reg[6] ),
        .\bus2ip_addr_i_reg[2]_0 (\bus2ip_addr_i_reg[2] ),
        .\cr_i_reg[4] (\cr_i_reg[4] ),
        .\cr_i_reg[4]_0 (\cr_i_reg[4]_0 ),
        .cr_txModeSelect_clr(cr_txModeSelect_clr),
        .cr_txModeSelect_set(cr_txModeSelect_set),
        .gpo(gpo),
        .\ip_irpt_enable_reg_reg[7] (\ip_irpt_enable_reg_reg[7] ),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(ipif_glbl_irpt_enable_reg_reg),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .p_1_in(p_1_in),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .reset_trig0(reset_trig0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .\sr_i_reg[0] (\sr_i_reg[0] ),
        .\sr_i_reg[4] (\sr_i_reg[4] ),
        .\sr_i_reg[5] (\sr_i_reg[5] ),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1),
        .\timing_param_tbuf_i_reg[0] (\timing_param_tbuf_i_reg[0] ),
        .\timing_param_tbuf_i_reg[1] (\timing_param_tbuf_i_reg[1] ),
        .\timing_param_tbuf_i_reg[2] (\timing_param_tbuf_i_reg[2] ),
        .\timing_param_tbuf_i_reg[3] (\timing_param_tbuf_i_reg[3] ),
        .\timing_param_tbuf_i_reg[7] (\timing_param_tbuf_i_reg[7] ),
        .\timing_param_thddat_i_reg[7] (\timing_param_thddat_i_reg[7] ),
        .\timing_param_thdsta_i_reg[0] (\timing_param_thdsta_i_reg[0] ),
        .\timing_param_thigh_i_reg[7] (\timing_param_thigh_i_reg[7] ),
        .\timing_param_tsudat_i_reg[5] (\timing_param_tsudat_i_reg[5] ),
        .\timing_param_tsudat_i_reg[7] (\timing_param_tsudat_i_reg[7] ),
        .\timing_param_tsusta_i_reg[7] (\timing_param_tsusta_i_reg[7] ),
        .\timing_param_tsusto_i_reg[7] (\timing_param_tsusto_i_reg[7] ));
endmodule

module system_axi_iic_0_0_cdc_sync
   (detect_stop_b_reg,
    scndry_out,
    sda_rin_d1,
    sda_i,
    s_axi_aclk);
  output detect_stop_b_reg;
  output scndry_out;
  input sda_rin_d1;
  input sda_i;
  input s_axi_aclk;

  wire detect_stop_b_reg;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;
  wire sda_i;
  wire sda_rin_d1;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sda_i),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    detect_stop_b_i_2
       (.I0(scndry_out),
        .I1(sda_rin_d1),
        .O(detect_stop_b_reg));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module system_axi_iic_0_0_cdc_sync_4
   (\q_int_reg[8] ,
    scl_rin_d1_reg,
    scl_rising_edge0,
    CO,
    scl_rin_d1,
    scl_i,
    s_axi_aclk);
  output \q_int_reg[8] ;
  output scl_rin_d1_reg;
  output scl_rising_edge0;
  input [0:0]CO;
  input scl_rin_d1;
  input scl_i;
  input s_axi_aclk;

  wire [0:0]CO;
  wire \q_int_reg[8] ;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scl_i;
  wire scl_rin_d1;
  wire scl_rin_d1_reg;
  wire scl_rising_edge0;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scl_i),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scl_rin_d1_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \q_int[0]_i_8 
       (.I0(scl_rin_d1_reg),
        .I1(CO),
        .O(\q_int_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    scl_rising_edge_i_1
       (.I0(scl_rin_d1_reg),
        .I1(scl_rin_d1),
        .O(scl_rising_edge0));
endmodule

module system_axi_iic_0_0_debounce
   (\q_int_reg[8] ,
    scl_rin_d1_reg,
    scl_rising_edge0,
    CO,
    scl_rin_d1,
    scl_i,
    s_axi_aclk);
  output \q_int_reg[8] ;
  output scl_rin_d1_reg;
  output scl_rising_edge0;
  input [0:0]CO;
  input scl_rin_d1;
  input scl_i;
  input s_axi_aclk;

  wire [0:0]CO;
  wire \q_int_reg[8] ;
  wire s_axi_aclk;
  wire scl_i;
  wire scl_rin_d1;
  wire scl_rin_d1_reg;
  wire scl_rising_edge0;

  system_axi_iic_0_0_cdc_sync_4 INPUT_DOUBLE_REGS
       (.CO(CO),
        .\q_int_reg[8] (\q_int_reg[8] ),
        .s_axi_aclk(s_axi_aclk),
        .scl_i(scl_i),
        .scl_rin_d1(scl_rin_d1),
        .scl_rin_d1_reg(scl_rin_d1_reg),
        .scl_rising_edge0(scl_rising_edge0));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module system_axi_iic_0_0_debounce_3
   (detect_stop_b_reg,
    scndry_out,
    sda_rin_d1,
    sda_i,
    s_axi_aclk);
  output detect_stop_b_reg;
  output scndry_out;
  input sda_rin_d1;
  input sda_i;
  input s_axi_aclk;

  wire detect_stop_b_reg;
  wire s_axi_aclk;
  wire scndry_out;
  wire sda_i;
  wire sda_rin_d1;

  system_axi_iic_0_0_cdc_sync INPUT_DOUBLE_REGS
       (.detect_stop_b_reg(detect_stop_b_reg),
        .s_axi_aclk(s_axi_aclk),
        .scndry_out(scndry_out),
        .sda_i(sda_i),
        .sda_rin_d1(sda_rin_d1));
endmodule

module system_axi_iic_0_0_dynamic_master
   (callingReadAccess,
    rdCntrFrmTxFifo,
    rxCntDone,
    firstDynStartSeen,
    cr_txModeSelect_set,
    cr_txModeSelect_clr,
    txak,
    Tx_fifo_rst,
    ackDataState,
    s_axi_aclk,
    p_3_in,
    Tx_fifo_data,
    rdCntrFrmTxFifo0,
    earlyAckDataState,
    firstDynStartSeen_reg_0,
    Q,
    earlyAckHdr);
  output callingReadAccess;
  output rdCntrFrmTxFifo;
  output rxCntDone;
  output firstDynStartSeen;
  output cr_txModeSelect_set;
  output cr_txModeSelect_clr;
  output txak;
  input Tx_fifo_rst;
  input ackDataState;
  input s_axi_aclk;
  input p_3_in;
  input [0:7]Tx_fifo_data;
  input rdCntrFrmTxFifo0;
  input earlyAckDataState;
  input firstDynStartSeen_reg_0;
  input [0:0]Q;
  input earlyAckHdr;

  wire Cr_txModeSelect_clr_i_1_n_0;
  wire Cr_txModeSelect_set_i_1_n_0;
  wire [0:0]Q;
  wire [0:7]Tx_fifo_data;
  wire Tx_fifo_rst;
  wire ackDataState;
  wire ackDataState_d1;
  wire callingReadAccess;
  wire cr_txModeSelect_clr;
  wire cr_txModeSelect_set;
  wire earlyAckDataState;
  wire earlyAckDataState_d1;
  wire earlyAckHdr;
  wire firstDynStartSeen;
  wire firstDynStartSeen_reg_0;
  wire [7:0]p_0_in__1;
  wire p_3_in;
  wire \rdByteCntr[0]_i_1_n_0 ;
  wire \rdByteCntr[0]_i_3_n_0 ;
  wire \rdByteCntr[0]_i_4_n_0 ;
  wire \rdByteCntr[0]_i_5_n_0 ;
  wire [0:7]rdByteCntr_reg__0;
  wire rdCntrFrmTxFifo;
  wire rdCntrFrmTxFifo0;
  wire rxCntDone;
  wire rxCntDone0;
  wire rxCntDone_i_2_n_0;
  wire s_axi_aclk;
  wire txak;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    Cr_txModeSelect_clr_i_1
       (.I0(callingReadAccess),
        .I1(firstDynStartSeen),
        .I2(earlyAckHdr),
        .I3(Tx_fifo_rst),
        .O(Cr_txModeSelect_clr_i_1_n_0));
  FDRE Cr_txModeSelect_clr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Cr_txModeSelect_clr_i_1_n_0),
        .Q(cr_txModeSelect_clr),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    Cr_txModeSelect_set_i_1
       (.I0(callingReadAccess),
        .I1(firstDynStartSeen),
        .I2(earlyAckHdr),
        .I3(Tx_fifo_rst),
        .O(Cr_txModeSelect_set_i_1_n_0));
  FDRE Cr_txModeSelect_set_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Cr_txModeSelect_set_i_1_n_0),
        .Q(cr_txModeSelect_set),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \LEVEL_1_GEN.master_sda_i_2 
       (.I0(Q),
        .I1(rdByteCntr_reg__0[6]),
        .I2(rdByteCntr_reg__0[4]),
        .I3(rdByteCntr_reg__0[3]),
        .I4(rxCntDone_i_2_n_0),
        .I5(earlyAckDataState),
        .O(txak));
  FDRE ackDataState_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ackDataState),
        .Q(ackDataState_d1),
        .R(Tx_fifo_rst));
  FDRE callingReadAccess_reg
       (.C(s_axi_aclk),
        .CE(p_3_in),
        .D(Tx_fifo_data[7]),
        .Q(callingReadAccess),
        .R(Tx_fifo_rst));
  FDRE earlyAckDataState_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(earlyAckDataState),
        .Q(earlyAckDataState_d1),
        .R(Tx_fifo_rst));
  FDRE firstDynStartSeen_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(firstDynStartSeen_reg_0),
        .Q(firstDynStartSeen),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBABABAAA)) 
    \rdByteCntr[0]_i_1 
       (.I0(rdCntrFrmTxFifo),
        .I1(earlyAckDataState_d1),
        .I2(earlyAckDataState),
        .I3(\rdByteCntr[0]_i_3_n_0 ),
        .I4(\rdByteCntr[0]_i_4_n_0 ),
        .O(\rdByteCntr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB88BB8B8)) 
    \rdByteCntr[0]_i_2 
       (.I0(Tx_fifo_data[0]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg__0[0]),
        .I3(rdByteCntr_reg__0[1]),
        .I4(\rdByteCntr[0]_i_5_n_0 ),
        .O(p_0_in__1[7]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rdByteCntr[0]_i_3 
       (.I0(rdByteCntr_reg__0[4]),
        .I1(rdByteCntr_reg__0[7]),
        .I2(rdByteCntr_reg__0[6]),
        .I3(rdByteCntr_reg__0[5]),
        .O(\rdByteCntr[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rdByteCntr[0]_i_4 
       (.I0(rdByteCntr_reg__0[0]),
        .I1(rdByteCntr_reg__0[1]),
        .I2(rdByteCntr_reg__0[2]),
        .I3(rdByteCntr_reg__0[3]),
        .O(\rdByteCntr[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rdByteCntr[0]_i_5 
       (.I0(rdByteCntr_reg__0[5]),
        .I1(rdByteCntr_reg__0[6]),
        .I2(rdByteCntr_reg__0[7]),
        .I3(rdByteCntr_reg__0[4]),
        .I4(rdByteCntr_reg__0[2]),
        .I5(rdByteCntr_reg__0[3]),
        .O(\rdByteCntr[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B88B)) 
    \rdByteCntr[1]_i_1 
       (.I0(Tx_fifo_data[1]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg__0[1]),
        .I3(rdByteCntr_reg__0[3]),
        .I4(rdByteCntr_reg__0[2]),
        .I5(\rdByteCntr[0]_i_3_n_0 ),
        .O(p_0_in__1[6]));
  LUT5 #(
    .INIT(32'hB8B8B88B)) 
    \rdByteCntr[2]_i_1 
       (.I0(Tx_fifo_data[2]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg__0[2]),
        .I3(\rdByteCntr[0]_i_3_n_0 ),
        .I4(rdByteCntr_reg__0[3]),
        .O(p_0_in__1[5]));
  LUT4 #(
    .INIT(16'hB88B)) 
    \rdByteCntr[3]_i_1 
       (.I0(Tx_fifo_data[3]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg__0[3]),
        .I3(\rdByteCntr[0]_i_3_n_0 ),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'hBBBBBBB88888888B)) 
    \rdByteCntr[4]_i_1 
       (.I0(Tx_fifo_data[4]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg__0[5]),
        .I3(rdByteCntr_reg__0[6]),
        .I4(rdByteCntr_reg__0[7]),
        .I5(rdByteCntr_reg__0[4]),
        .O(p_0_in__1[3]));
  LUT5 #(
    .INIT(32'hBBB8888B)) 
    \rdByteCntr[5]_i_1 
       (.I0(Tx_fifo_data[5]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg__0[7]),
        .I3(rdByteCntr_reg__0[6]),
        .I4(rdByteCntr_reg__0[5]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \rdByteCntr[6]_i_1 
       (.I0(Tx_fifo_data[6]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg__0[7]),
        .I3(rdByteCntr_reg__0[6]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \rdByteCntr[7]_i_1 
       (.I0(Tx_fifo_data[7]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg__0[7]),
        .O(p_0_in__1[0]));
  FDRE \rdByteCntr_reg[0] 
       (.C(s_axi_aclk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in__1[7]),
        .Q(rdByteCntr_reg__0[0]),
        .R(Tx_fifo_rst));
  FDRE \rdByteCntr_reg[1] 
       (.C(s_axi_aclk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in__1[6]),
        .Q(rdByteCntr_reg__0[1]),
        .R(Tx_fifo_rst));
  FDRE \rdByteCntr_reg[2] 
       (.C(s_axi_aclk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in__1[5]),
        .Q(rdByteCntr_reg__0[2]),
        .R(Tx_fifo_rst));
  FDRE \rdByteCntr_reg[3] 
       (.C(s_axi_aclk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in__1[4]),
        .Q(rdByteCntr_reg__0[3]),
        .R(Tx_fifo_rst));
  FDRE \rdByteCntr_reg[4] 
       (.C(s_axi_aclk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in__1[3]),
        .Q(rdByteCntr_reg__0[4]),
        .R(Tx_fifo_rst));
  FDRE \rdByteCntr_reg[5] 
       (.C(s_axi_aclk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in__1[2]),
        .Q(rdByteCntr_reg__0[5]),
        .R(Tx_fifo_rst));
  FDRE \rdByteCntr_reg[6] 
       (.C(s_axi_aclk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in__1[1]),
        .Q(rdByteCntr_reg__0[6]),
        .R(Tx_fifo_rst));
  FDRE \rdByteCntr_reg[7] 
       (.C(s_axi_aclk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in__1[0]),
        .Q(rdByteCntr_reg__0[7]),
        .R(Tx_fifo_rst));
  FDRE rdCntrFrmTxFifo_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rdCntrFrmTxFifo0),
        .Q(rdCntrFrmTxFifo),
        .R(Tx_fifo_rst));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    rxCntDone_i_1
       (.I0(rxCntDone_i_2_n_0),
        .I1(rdByteCntr_reg__0[3]),
        .I2(rdByteCntr_reg__0[4]),
        .I3(rdByteCntr_reg__0[6]),
        .I4(ackDataState),
        .I5(ackDataState_d1),
        .O(rxCntDone0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    rxCntDone_i_2
       (.I0(rdByteCntr_reg__0[0]),
        .I1(rdByteCntr_reg__0[1]),
        .I2(rdByteCntr_reg__0[5]),
        .I3(rdByteCntr_reg__0[2]),
        .I4(rdByteCntr_reg__0[7]),
        .I5(callingReadAccess),
        .O(rxCntDone_i_2_n_0));
  FDRE rxCntDone_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rxCntDone0),
        .Q(rxCntDone),
        .R(Tx_fifo_rst));
endmodule

module system_axi_iic_0_0_filter
   (detect_stop_b_reg,
    scndry_out,
    \q_int_reg[8] ,
    scl_rin_d1_reg,
    scl_rising_edge0,
    sda_rin_d1,
    CO,
    scl_rin_d1,
    scl_i,
    s_axi_aclk,
    sda_i);
  output detect_stop_b_reg;
  output scndry_out;
  output \q_int_reg[8] ;
  output scl_rin_d1_reg;
  output scl_rising_edge0;
  input sda_rin_d1;
  input [0:0]CO;
  input scl_rin_d1;
  input scl_i;
  input s_axi_aclk;
  input sda_i;

  wire [0:0]CO;
  wire detect_stop_b_reg;
  wire \q_int_reg[8] ;
  wire s_axi_aclk;
  wire scl_i;
  wire scl_rin_d1;
  wire scl_rin_d1_reg;
  wire scl_rising_edge0;
  wire scndry_out;
  wire sda_i;
  wire sda_rin_d1;

  system_axi_iic_0_0_debounce SCL_DEBOUNCE
       (.CO(CO),
        .\q_int_reg[8] (\q_int_reg[8] ),
        .s_axi_aclk(s_axi_aclk),
        .scl_i(scl_i),
        .scl_rin_d1(scl_rin_d1),
        .scl_rin_d1_reg(scl_rin_d1_reg),
        .scl_rising_edge0(scl_rising_edge0));
  system_axi_iic_0_0_debounce_3 SDA_DEBOUNCE
       (.detect_stop_b_reg(detect_stop_b_reg),
        .s_axi_aclk(s_axi_aclk),
        .scndry_out(scndry_out),
        .sda_i(sda_i),
        .sda_rin_d1(sda_rin_d1));
endmodule

module system_axi_iic_0_0_iic
   (s_axi_wready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_arready,
    s_axi_rvalid,
    s_axi_bvalid,
    sda_t,
    gpo,
    iic2intc_irpt,
    scl_t,
    s_axi_bresp,
    s_axi_aresetn,
    scl_i,
    s_axi_aclk,
    sda_i,
    s_axi_wdata,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_bready,
    s_axi_araddr,
    s_axi_awaddr);
  output s_axi_wready;
  output [9:0]s_axi_rdata;
  output [0:0]s_axi_rresp;
  output s_axi_arready;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output sda_t;
  output [0:0]gpo;
  output iic2intc_irpt;
  output scl_t;
  output [0:0]s_axi_bresp;
  input s_axi_aresetn;
  input scl_i;
  input s_axi_aclk;
  input sda_i;
  input [10:0]s_axi_wdata;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input s_axi_rready;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input [8:0]s_axi_awaddr;

  wire Aas;
  wire Abgc;
  wire Al;
  wire Bb;
  wire [2:6]Bus2IIC_Addr;
  wire [3:3]Bus2IIC_RdCE;
  wire Bus2IIC_Reset;
  wire [0:17]Bus2IIC_WrCE;
  wire [0:8]\CLKCNT/q_int_reg__0 ;
  wire [1:7]Cr;
  wire D;
  wire D_0;
  wire D_1;
  wire [0:7]Data_i2c;
  wire FILTER_I_n_0;
  wire FILTER_I_n_2;
  wire [0:7]IIC2Bus_IntrEvent;
  wire IIC_CONTROL_I_n_0;
  wire IIC_CONTROL_I_n_40;
  wire IIC_CONTROL_I_n_41;
  wire IIC_CONTROL_I_n_42;
  wire IIC_CONTROL_I_n_52;
  wire IIC_CONTROL_I_n_9;
  wire Msms_set;
  wire New_rcv_dta;
  wire READ_FIFO_I_n_16;
  wire REG_INTERFACE_I_n_100;
  wire REG_INTERFACE_I_n_101;
  wire REG_INTERFACE_I_n_102;
  wire REG_INTERFACE_I_n_103;
  wire REG_INTERFACE_I_n_107;
  wire REG_INTERFACE_I_n_108;
  wire REG_INTERFACE_I_n_109;
  wire REG_INTERFACE_I_n_110;
  wire REG_INTERFACE_I_n_111;
  wire REG_INTERFACE_I_n_112;
  wire REG_INTERFACE_I_n_113;
  wire REG_INTERFACE_I_n_114;
  wire REG_INTERFACE_I_n_115;
  wire REG_INTERFACE_I_n_116;
  wire REG_INTERFACE_I_n_117;
  wire REG_INTERFACE_I_n_118;
  wire REG_INTERFACE_I_n_120;
  wire REG_INTERFACE_I_n_121;
  wire REG_INTERFACE_I_n_26;
  wire REG_INTERFACE_I_n_27;
  wire REG_INTERFACE_I_n_30;
  wire REG_INTERFACE_I_n_31;
  wire REG_INTERFACE_I_n_32;
  wire REG_INTERFACE_I_n_33;
  wire REG_INTERFACE_I_n_35;
  wire REG_INTERFACE_I_n_36;
  wire REG_INTERFACE_I_n_37;
  wire REG_INTERFACE_I_n_38;
  wire REG_INTERFACE_I_n_39;
  wire REG_INTERFACE_I_n_48;
  wire REG_INTERFACE_I_n_49;
  wire REG_INTERFACE_I_n_50;
  wire REG_INTERFACE_I_n_59;
  wire REG_INTERFACE_I_n_60;
  wire REG_INTERFACE_I_n_61;
  wire REG_INTERFACE_I_n_66;
  wire REG_INTERFACE_I_n_67;
  wire REG_INTERFACE_I_n_68;
  wire REG_INTERFACE_I_n_73;
  wire REG_INTERFACE_I_n_74;
  wire REG_INTERFACE_I_n_75;
  wire REG_INTERFACE_I_n_79;
  wire REG_INTERFACE_I_n_80;
  wire REG_INTERFACE_I_n_81;
  wire REG_INTERFACE_I_n_83;
  wire REG_INTERFACE_I_n_84;
  wire REG_INTERFACE_I_n_85;
  wire REG_INTERFACE_I_n_86;
  wire REG_INTERFACE_I_n_87;
  wire REG_INTERFACE_I_n_88;
  wire REG_INTERFACE_I_n_96;
  wire REG_INTERFACE_I_n_97;
  wire REG_INTERFACE_I_n_98;
  wire REG_INTERFACE_I_n_99;
  wire Rc_Data_Exists;
  wire [0:3]Rc_addr;
  wire [0:7]Rc_fifo_data;
  wire Rc_fifo_full;
  wire Rc_fifo_rd;
  wire Rc_fifo_rd_d;
  wire Rc_fifo_wr;
  wire Rc_fifo_wr_d;
  wire Ro_prev;
  wire [0:8]\SETUP_CNT/q_int_reg__0 ;
  wire Srw;
  wire [0:3]Tx_addr;
  wire Tx_data_exists;
  wire [0:7]Tx_fifo_data;
  wire Tx_fifo_full;
  wire Tx_fifo_rd;
  wire Tx_fifo_rd_d;
  wire Tx_fifo_rst;
  wire Tx_fifo_wr;
  wire Tx_fifo_wr_d;
  wire Tx_under_prev;
  wire Txer;
  wire WRITE_FIFO_CTRL_I_n_0;
  wire WRITE_FIFO_CTRL_I_n_3;
  wire WRITE_FIFO_I_n_15;
  wire WRITE_FIFO_I_n_16;
  wire WRITE_FIFO_I_n_17;
  wire WRITE_FIFO_I_n_18;
  wire WRITE_FIFO_I_n_19;
  wire X_AXI_IPIF_SSP1_n_15;
  wire X_AXI_IPIF_SSP1_n_29;
  wire ackDataState;
  wire addr_match;
  wire callingReadAccess;
  wire clk_cnt_en2;
  wire cr_txModeSelect_clr;
  wire cr_txModeSelect_set;
  wire [0:1]ctrlFifoDin;
  wire detect_start;
  wire [0:1]dynamic_MSMS;
  wire earlyAckDataState;
  wire earlyAckHdr;
  wire firstDynStartSeen;
  wire [0:0]gpo;
  wire [7:0]i2c_header;
  wire iic2intc_irpt;
  wire master_slave;
  wire new_rcv_dta_d1;
  wire next_scl_state10_out;
  wire [0:0]p_0_out;
  wire p_1_in;
  wire p_1_in4_in;
  wire p_1_in6_in;
  wire [6:6]p_1_out;
  wire p_3_in;
  wire p_6_out;
  wire rdCntrFrmTxFifo;
  wire rdCntrFrmTxFifo0;
  wire rdy_new_xmt_i;
  wire rxCntDone;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [9:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [10:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire scl_clean;
  wire scl_i;
  wire scl_rin_d1;
  wire scl_rising_edge0;
  wire scl_t;
  wire sda_clean;
  wire sda_i;
  wire sda_rin_d1;
  wire sda_t;
  wire shift_reg_ld;
  wire [0:3]sr_i;
  wire [7:4]timing_param_tbuf_i;
  wire [7:4]timing_param_thddat_i;
  wire [0:0]timing_param_thdsta_i;
  wire [7:0]timing_param_thigh_i;
  wire [7:0]timing_param_tsudat_i;
  wire [7:4]timing_param_tsusta_i;
  wire [7:0]timing_param_tsusto_i;
  wire txak;

  system_axi_iic_0_0_dynamic_master DYN_MASTER_I
       (.Q(Cr[3]),
        .Tx_fifo_data(Tx_fifo_data),
        .Tx_fifo_rst(Tx_fifo_rst),
        .ackDataState(ackDataState),
        .callingReadAccess(callingReadAccess),
        .cr_txModeSelect_clr(cr_txModeSelect_clr),
        .cr_txModeSelect_set(cr_txModeSelect_set),
        .earlyAckDataState(earlyAckDataState),
        .earlyAckHdr(earlyAckHdr),
        .firstDynStartSeen(firstDynStartSeen),
        .firstDynStartSeen_reg_0(REG_INTERFACE_I_n_33),
        .p_3_in(p_3_in),
        .rdCntrFrmTxFifo(rdCntrFrmTxFifo),
        .rdCntrFrmTxFifo0(rdCntrFrmTxFifo0),
        .rxCntDone(rxCntDone),
        .s_axi_aclk(s_axi_aclk),
        .txak(txak));
  system_axi_iic_0_0_filter FILTER_I
       (.CO(clk_cnt_en2),
        .detect_stop_b_reg(FILTER_I_n_0),
        .\q_int_reg[8] (FILTER_I_n_2),
        .s_axi_aclk(s_axi_aclk),
        .scl_i(scl_i),
        .scl_rin_d1(scl_rin_d1),
        .scl_rin_d1_reg(scl_clean),
        .scl_rising_edge0(scl_rising_edge0),
        .scndry_out(sda_clean),
        .sda_i(sda_i),
        .sda_rin_d1(sda_rin_d1));
  system_axi_iic_0_0_iic_control IIC_CONTROL_I
       (.Aas(Aas),
        .Bb(Bb),
        .CO(clk_cnt_en2),
        .D({Al,Txer,IIC_CONTROL_I_n_9,p_0_out}),
        .Data_Exists_DFF(WRITE_FIFO_I_n_15),
        .E(Bus2IIC_WrCE[0]),
        .\FSM_sequential_scl_state_reg[0]_0 (IIC_CONTROL_I_n_42),
        .\FSM_sequential_scl_state_reg[1]_0 (REG_INTERFACE_I_n_26),
        .\FSM_sequential_scl_state_reg[2]_0 (next_scl_state10_out),
        .\FSM_sequential_scl_state_reg[2]_1 (IIC_CONTROL_I_n_41),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 (scl_clean),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 (FILTER_I_n_2),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 (FILTER_I_n_0),
        .Msms_set(Msms_set),
        .New_rcv_dta(New_rcv_dta),
        .Q({Cr[1],Cr[2],Cr[4],Cr[5],Cr[7]}),
        .\RD_FIFO_CNTRL.Rc_fifo_wr_reg (IIC_CONTROL_I_n_40),
        .Ro_prev(Ro_prev),
        .S({REG_INTERFACE_I_n_37,REG_INTERFACE_I_n_38,REG_INTERFACE_I_n_39}),
        .SR(REG_INTERFACE_I_n_31),
        .Tx_data_exists(Tx_data_exists),
        .Tx_fifo_data({Tx_fifo_data[0],Tx_fifo_data[1],Tx_fifo_data[2],Tx_fifo_data[3],Tx_fifo_data[4],Tx_fifo_data[5],Tx_fifo_data[6]}),
        .Tx_fifo_rd_d_reg(REG_INTERFACE_I_n_36),
        .Tx_under_prev(Tx_under_prev),
        .abgc_i_reg_0(i2c_header),
        .ackDataState(ackDataState),
        .addr_match(addr_match),
        .callingReadAccess(callingReadAccess),
        .\cr_i_reg[4] (REG_INTERFACE_I_n_27),
        .\cr_i_reg[5] (IIC_CONTROL_I_n_52),
        .\cr_i_reg[7] (REG_INTERFACE_I_n_32),
        .detect_start(detect_start),
        .dynamic_MSMS(dynamic_MSMS[0]),
        .earlyAckDataState(earlyAckDataState),
        .earlyAckHdr(earlyAckHdr),
        .master_slave(master_slave),
        .new_rcv_dta_d1(new_rcv_dta_d1),
        .out(IIC_CONTROL_I_n_0),
        .\q_int_reg[0] ({\CLKCNT/q_int_reg__0 [0],\CLKCNT/q_int_reg__0 [1],\CLKCNT/q_int_reg__0 [2],\CLKCNT/q_int_reg__0 [3],\CLKCNT/q_int_reg__0 [4],\CLKCNT/q_int_reg__0 [5],\CLKCNT/q_int_reg__0 [6],\CLKCNT/q_int_reg__0 [7],\CLKCNT/q_int_reg__0 [8]}),
        .\q_int_reg[0]_0 ({\SETUP_CNT/q_int_reg__0 [0],\SETUP_CNT/q_int_reg__0 [1],\SETUP_CNT/q_int_reg__0 [2],\SETUP_CNT/q_int_reg__0 [3],\SETUP_CNT/q_int_reg__0 [4],\SETUP_CNT/q_int_reg__0 [5],\SETUP_CNT/q_int_reg__0 [6],\SETUP_CNT/q_int_reg__0 [7],\SETUP_CNT/q_int_reg__0 [8]}),
        .rdCntrFrmTxFifo0(rdCntrFrmTxFifo0),
        .rdy_new_xmt_i(rdy_new_xmt_i),
        .rxCntDone(rxCntDone),
        .s_axi_aclk(s_axi_aclk),
        .\s_axi_rdata_i_reg[7] ({Data_i2c[0],Data_i2c[1],Data_i2c[2],Data_i2c[3],Data_i2c[4],Data_i2c[5],Data_i2c[6],Data_i2c[7]}),
        .s_axi_wdata(s_axi_wdata[2]),
        .scl_rin_d1(scl_rin_d1),
        .scl_rising_edge0(scl_rising_edge0),
        .scl_t(scl_t),
        .scndry_out(sda_clean),
        .sda_rin_d1(sda_rin_d1),
        .sda_t(sda_t),
        .shift_reg_ld(shift_reg_ld),
        .shift_reg_ld_reg_0(WRITE_FIFO_I_n_19),
        .sr_i(sr_i[0]),
        .\sr_i_reg[4] ({Srw,Abgc}),
        .\timing_param_tbuf_i_reg[7] ({REG_INTERFACE_I_n_66,REG_INTERFACE_I_n_67,REG_INTERFACE_I_n_68}),
        .\timing_param_thddat_i_reg[8] ({REG_INTERFACE_I_n_73,REG_INTERFACE_I_n_74,REG_INTERFACE_I_n_75}),
        .\timing_param_thdsta_i_reg[8] ({REG_INTERFACE_I_n_79,REG_INTERFACE_I_n_80,REG_INTERFACE_I_n_81}),
        .\timing_param_tlow_i_reg[7] ({REG_INTERFACE_I_n_83,REG_INTERFACE_I_n_84,REG_INTERFACE_I_n_85}),
        .\timing_param_tsudat_i_reg[8] ({REG_INTERFACE_I_n_86,REG_INTERFACE_I_n_87,REG_INTERFACE_I_n_88}),
        .\timing_param_tsusta_i_reg[8] ({REG_INTERFACE_I_n_59,REG_INTERFACE_I_n_60,REG_INTERFACE_I_n_61}),
        .\timing_param_tsusto_i_reg[7] ({REG_INTERFACE_I_n_48,REG_INTERFACE_I_n_49,REG_INTERFACE_I_n_50}),
        .txak(txak));
  system_axi_iic_0_0_SRL_FIFO READ_FIFO_I
       (.Bus2IIC_Reset(Bus2IIC_Reset),
        .D({p_1_out,Rc_fifo_full}),
        .D_0(D),
        .Data_Exists_DFF_0(READ_FIFO_I_n_16),
        .Msms_set(Msms_set),
        .Q({p_1_in6_in,p_1_in4_in,p_1_in,REG_INTERFACE_I_n_107}),
        .\RD_FIFO_CNTRL.Rc_fifo_rd_reg (REG_INTERFACE_I_n_121),
        .\RD_FIFO_CNTRL.Rc_fifo_wr_reg (REG_INTERFACE_I_n_120),
        .Rc_Data_Exists(Rc_Data_Exists),
        .Rc_addr(Rc_addr),
        .Rc_fifo_data(Rc_fifo_data),
        .Rc_fifo_rd(Rc_fifo_rd),
        .Rc_fifo_rd_d(Rc_fifo_rd_d),
        .Rc_fifo_wr(Rc_fifo_wr),
        .Rc_fifo_wr_d(Rc_fifo_wr_d),
        .\data_i2c_i_reg[7] ({Data_i2c[0],Data_i2c[1],Data_i2c[2],Data_i2c[3],Data_i2c[4],Data_i2c[5],Data_i2c[6],Data_i2c[7]}),
        .p_6_out(p_6_out),
        .s_axi_aclk(s_axi_aclk));
  system_axi_iic_0_0_reg_interface REG_INTERFACE_I
       (.Aas(Aas),
        .\Addr_Counters[0].FDRE_I (REG_INTERFACE_I_n_118),
        .\Addr_Counters[0].FDRE_I_0 (REG_INTERFACE_I_n_120),
        .\Addr_Counters[0].FDRE_I_1 (REG_INTERFACE_I_n_121),
        .\Addr_Counters[1].FDRE_I (WRITE_FIFO_CTRL_I_n_3),
        .\Addr_Counters[1].FDRE_I_0 (WRITE_FIFO_I_n_18),
        .\Addr_Counters[1].FDRE_I_1 (READ_FIFO_I_n_16),
        .\Addr_Counters[3].FDRE_I (WRITE_FIFO_I_n_17),
        .Bus2IIC_RdCE(Bus2IIC_RdCE),
        .Bus2IIC_Reset(Bus2IIC_Reset),
        .Bus2IIC_WrCE({Bus2IIC_WrCE[0],Bus2IIC_WrCE[2],Bus2IIC_WrCE[4],Bus2IIC_WrCE[8],Bus2IIC_WrCE[10],Bus2IIC_WrCE[11],Bus2IIC_WrCE[12],Bus2IIC_WrCE[13],Bus2IIC_WrCE[14],Bus2IIC_WrCE[15],Bus2IIC_WrCE[16],Bus2IIC_WrCE[17]}),
        .D(Ro_prev),
        .D_0(D_1),
        .D_1(D_0),
        .D_2(D),
        .Data_Exists_DFF(REG_INTERFACE_I_n_30),
        .Data_Exists_DFF_0(REG_INTERFACE_I_n_35),
        .Data_Exists_DFF_1(WRITE_FIFO_I_n_16),
        .Data_Exists_DFF_2(WRITE_FIFO_CTRL_I_n_0),
        .Data_Exists_DFF_3({p_1_out,Rc_fifo_full,Tx_fifo_full,Srw,Bb,Abgc}),
        .\FSM_onehot_state_reg[4] (REG_INTERFACE_I_n_27),
        .\FSM_sequential_scl_state_reg[0] (REG_INTERFACE_I_n_26),
        .\FSM_sequential_scl_state_reg[0]_0 (timing_param_thigh_i),
        .\FSM_sequential_scl_state_reg[0]_1 ({REG_INTERFACE_I_n_48,REG_INTERFACE_I_n_49,REG_INTERFACE_I_n_50}),
        .\FSM_sequential_scl_state_reg[0]_2 (timing_param_tsusto_i),
        .\FSM_sequential_scl_state_reg[0]_3 ({REG_INTERFACE_I_n_59,REG_INTERFACE_I_n_60,REG_INTERFACE_I_n_61}),
        .\FSM_sequential_scl_state_reg[0]_4 ({REG_INTERFACE_I_n_73,REG_INTERFACE_I_n_74,REG_INTERFACE_I_n_75}),
        .\FSM_sequential_scl_state_reg[1] ({REG_INTERFACE_I_n_83,REG_INTERFACE_I_n_84,REG_INTERFACE_I_n_85}),
        .\FSM_sequential_scl_state_reg[1]_0 (IIC_CONTROL_I_n_41),
        .\FSM_sequential_scl_state_reg[2] ({REG_INTERFACE_I_n_79,REG_INTERFACE_I_n_80,REG_INTERFACE_I_n_81}),
        .\FSM_sequential_scl_state_reg[2]_0 (timing_param_thdsta_i),
        .\FSM_sequential_scl_state_reg[3] ({REG_INTERFACE_I_n_66,REG_INTERFACE_I_n_67,REG_INTERFACE_I_n_68}),
        .\FSM_sequential_scl_state_reg[3]_0 (timing_param_tbuf_i),
        .\FSM_sequential_scl_state_reg[3]_1 (IIC_CONTROL_I_n_42),
        .\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ({X_AXI_IPIF_SSP1_n_15,IIC_CONTROL_I_n_52}),
        .\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] (X_AXI_IPIF_SSP1_n_29),
        .IIC2Bus_IntrEvent(IIC2Bus_IntrEvent),
        .Msms_set(Msms_set),
        .New_rcv_dta(New_rcv_dta),
        .Q({Cr[1],Cr[2],Cr[3],Cr[4],Cr[5],Cr[7]}),
        .\RD_FIFO_CNTRL.ro_prev_i_reg_0 ({p_1_in6_in,p_1_in4_in,p_1_in,REG_INTERFACE_I_n_107}),
        .Rc_Data_Exists(Rc_Data_Exists),
        .Rc_addr(Rc_addr),
        .Rc_fifo_rd(Rc_fifo_rd),
        .Rc_fifo_rd_d(Rc_fifo_rd_d),
        .Rc_fifo_wr(Rc_fifo_wr),
        .Rc_fifo_wr_d(Rc_fifo_wr_d),
        .S({REG_INTERFACE_I_n_37,REG_INTERFACE_I_n_38,REG_INTERFACE_I_n_39}),
        .SR(REG_INTERFACE_I_n_31),
        .Tx_data_exists(Tx_data_exists),
        .Tx_fifo_data({Tx_fifo_data[4],Tx_fifo_data[5],Tx_fifo_data[6],Tx_fifo_data[7]}),
        .Tx_fifo_rd(Tx_fifo_rd),
        .Tx_fifo_rd_d(Tx_fifo_rd_d),
        .Tx_fifo_rst(Tx_fifo_rst),
        .Tx_fifo_wr(Tx_fifo_wr),
        .Tx_fifo_wr_d(Tx_fifo_wr_d),
        .addr_match(addr_match),
        .al_i_reg({Al,Txer,Tx_under_prev,IIC_CONTROL_I_n_9,p_0_out}),
        .\bus2ip_addr_i_reg[6] ({Bus2IIC_Addr[2],Bus2IIC_Addr[3],Bus2IIC_Addr[4],Bus2IIC_Addr[5],Bus2IIC_Addr[6]}),
        .\cr_i_reg[5]_0 (REG_INTERFACE_I_n_36),
        .\data_int_reg[7] (i2c_header),
        .detect_start(detect_start),
        .detect_stop_b_reg(REG_INTERFACE_I_n_32),
        .dtre_d1_reg({sr_i[0],sr_i[1],sr_i[3]}),
        .dynamic_MSMS(dynamic_MSMS[1]),
        .firstDynStartSeen(firstDynStartSeen),
        .firstDynStartSeen_reg(REG_INTERFACE_I_n_33),
        .gpo(gpo),
        .master_slave(master_slave),
        .new_rcv_dta_d1(new_rcv_dta_d1),
        .new_rcv_dta_i_reg(IIC_CONTROL_I_n_40),
        .out(IIC_CONTROL_I_n_0),
        .p_6_out(p_6_out),
        .\q_int_reg[0] ({\CLKCNT/q_int_reg__0 [0],\CLKCNT/q_int_reg__0 [1],\CLKCNT/q_int_reg__0 [2],\CLKCNT/q_int_reg__0 [3],\CLKCNT/q_int_reg__0 [4],\CLKCNT/q_int_reg__0 [5],\CLKCNT/q_int_reg__0 [6],\CLKCNT/q_int_reg__0 [7],\CLKCNT/q_int_reg__0 [8]}),
        .\q_int_reg[0]_0 ({\SETUP_CNT/q_int_reg__0 [0],\SETUP_CNT/q_int_reg__0 [1],\SETUP_CNT/q_int_reg__0 [2],\SETUP_CNT/q_int_reg__0 [3],\SETUP_CNT/q_int_reg__0 [4],\SETUP_CNT/q_int_reg__0 [5],\SETUP_CNT/q_int_reg__0 [6],\SETUP_CNT/q_int_reg__0 [7],\SETUP_CNT/q_int_reg__0 [8]}),
        .rdCntrFrmTxFifo(rdCntrFrmTxFifo),
        .rdy_new_xmt_i(rdy_new_xmt_i),
        .s_axi_aclk(s_axi_aclk),
        .\s_axi_rdata_i_reg[0] (REG_INTERFACE_I_n_96),
        .\s_axi_rdata_i_reg[0]_0 (REG_INTERFACE_I_n_116),
        .\s_axi_rdata_i_reg[0]_1 (REG_INTERFACE_I_n_117),
        .\s_axi_rdata_i_reg[1] (REG_INTERFACE_I_n_113),
        .\s_axi_rdata_i_reg[1]_0 (REG_INTERFACE_I_n_114),
        .\s_axi_rdata_i_reg[1]_1 (REG_INTERFACE_I_n_115),
        .\s_axi_rdata_i_reg[2] (REG_INTERFACE_I_n_110),
        .\s_axi_rdata_i_reg[2]_0 (REG_INTERFACE_I_n_111),
        .\s_axi_rdata_i_reg[2]_1 (REG_INTERFACE_I_n_112),
        .\s_axi_rdata_i_reg[3] (REG_INTERFACE_I_n_103),
        .\s_axi_rdata_i_reg[3]_0 (REG_INTERFACE_I_n_108),
        .\s_axi_rdata_i_reg[3]_1 (REG_INTERFACE_I_n_109),
        .\s_axi_rdata_i_reg[4] (REG_INTERFACE_I_n_102),
        .\s_axi_rdata_i_reg[5] (REG_INTERFACE_I_n_97),
        .\s_axi_rdata_i_reg[5]_0 (REG_INTERFACE_I_n_101),
        .\s_axi_rdata_i_reg[6] (REG_INTERFACE_I_n_100),
        .\s_axi_rdata_i_reg[7] (timing_param_tsusta_i),
        .\s_axi_rdata_i_reg[7]_0 ({timing_param_thddat_i[7:6],timing_param_thddat_i[4]}),
        .\s_axi_rdata_i_reg[7]_1 (REG_INTERFACE_I_n_99),
        .\s_axi_rdata_i_reg[8] (REG_INTERFACE_I_n_98),
        .s_axi_wdata(s_axi_wdata[8:0]),
        .sda_setup_reg({REG_INTERFACE_I_n_86,REG_INTERFACE_I_n_87,REG_INTERFACE_I_n_88}),
        .sda_setup_reg_0({timing_param_tsudat_i[7:6],timing_param_tsudat_i[4:0]}),
        .\timing_param_thdsta_i_reg[8]_0 (next_scl_state10_out));
  FDRE Rc_fifo_rd_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Rc_fifo_rd),
        .Q(Rc_fifo_rd_d),
        .R(Bus2IIC_Reset));
  FDRE Rc_fifo_wr_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Rc_fifo_wr),
        .Q(Rc_fifo_wr_d),
        .R(Bus2IIC_Reset));
  FDRE Tx_fifo_rd_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Tx_fifo_rd),
        .Q(Tx_fifo_rd_d),
        .R(Bus2IIC_Reset));
  FDRE Tx_fifo_wr_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Tx_fifo_wr),
        .Q(Tx_fifo_wr_d),
        .R(Bus2IIC_Reset));
  system_axi_iic_0_0_SRL_FIFO__parameterized0 WRITE_FIFO_CTRL_I
       (.\Addr_Counters[0].FDRE_I_0 (WRITE_FIFO_CTRL_I_n_0),
        .D(D_1),
        .Data_Exists_DFF_0(WRITE_FIFO_CTRL_I_n_3),
        .\FIFO_GEN_DTR.Tx_fifo_rd_reg (REG_INTERFACE_I_n_35),
        .Tx_fifo_rd(Tx_fifo_rd),
        .Tx_fifo_rd_d(Tx_fifo_rd_d),
        .Tx_fifo_rst(Tx_fifo_rst),
        .Tx_fifo_wr_d_reg(REG_INTERFACE_I_n_30),
        .ctrlFifoDin(ctrlFifoDin),
        .dynamic_MSMS(dynamic_MSMS),
        .rdCntrFrmTxFifo(rdCntrFrmTxFifo),
        .s_axi_aclk(s_axi_aclk));
  system_axi_iic_0_0_SRL_FIFO_0 WRITE_FIFO_I
       (.D(D_0),
        .Data_Exists_DFF_0(WRITE_FIFO_I_n_18),
        .\FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7] (WRITE_FIFO_I_n_17),
        .\FIFO_GEN_DTR.Tx_fifo_rd_reg (REG_INTERFACE_I_n_35),
        .\FIFO_GEN_DTR.Tx_fifo_wr_reg (REG_INTERFACE_I_n_118),
        .Tx_addr(Tx_addr),
        .Tx_data_exists(Tx_data_exists),
        .Tx_fifo_data(Tx_fifo_data),
        .Tx_fifo_rd(Tx_fifo_rd),
        .Tx_fifo_rd_d(Tx_fifo_rd_d),
        .Tx_fifo_rst(Tx_fifo_rst),
        .Tx_fifo_wr(Tx_fifo_wr),
        .Tx_fifo_wr_d(Tx_fifo_wr_d),
        .\cr_i_reg[5] (WRITE_FIFO_I_n_15),
        .\data_int_reg[0] (WRITE_FIFO_I_n_19),
        .dynamic_MSMS(dynamic_MSMS[1]),
        .p_3_in(p_3_in),
        .rdCntrFrmTxFifo(rdCntrFrmTxFifo),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[7:0]),
        .scndry_out(sda_clean),
        .shift_reg_ld(shift_reg_ld),
        .\sr_i_reg[0] (WRITE_FIFO_I_n_16),
        .\sr_i_reg[3] (Tx_fifo_full));
  system_axi_iic_0_0_axi_ipif_ssp1 X_AXI_IPIF_SSP1
       (.Bus2IIC_RdCE(Bus2IIC_RdCE),
        .Bus2IIC_Reset(Bus2IIC_Reset),
        .Bus2IIC_WrCE({Bus2IIC_WrCE[0],Bus2IIC_WrCE[2],Bus2IIC_WrCE[4],Bus2IIC_WrCE[8],Bus2IIC_WrCE[10],Bus2IIC_WrCE[11],Bus2IIC_WrCE[12],Bus2IIC_WrCE[13],Bus2IIC_WrCE[14],Bus2IIC_WrCE[15],Bus2IIC_WrCE[16],Bus2IIC_WrCE[17]}),
        .\GPO_GEN.gpo_i_reg[31] (X_AXI_IPIF_SSP1_n_29),
        .\GPO_GEN.gpo_i_reg[31]_0 (REG_INTERFACE_I_n_96),
        .IIC2Bus_IntrEvent(IIC2Bus_IntrEvent),
        .\IIC2Bus_IntrEvent_reg[5] (REG_INTERFACE_I_n_114),
        .Q({Bus2IIC_Addr[2],Bus2IIC_Addr[3],Bus2IIC_Addr[4],Bus2IIC_Addr[5],Bus2IIC_Addr[6]}),
        .\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] (REG_INTERFACE_I_n_116),
        .Rc_fifo_data(Rc_fifo_data),
        .Tx_addr(Tx_addr),
        .Tx_fifo_data({Tx_fifo_data[0],Tx_fifo_data[1],Tx_fifo_data[2],Tx_fifo_data[3]}),
        .Tx_fifo_rst(Tx_fifo_rst),
        .\adr_i_reg[0] (REG_INTERFACE_I_n_99),
        .\adr_i_reg[1] (REG_INTERFACE_I_n_100),
        .\adr_i_reg[2] (REG_INTERFACE_I_n_101),
        .\adr_i_reg[3] (REG_INTERFACE_I_n_102),
        .\adr_i_reg[4] (REG_INTERFACE_I_n_103),
        .\adr_i_reg[5] (REG_INTERFACE_I_n_110),
        .\adr_i_reg[6] (REG_INTERFACE_I_n_113),
        .\bus2ip_addr_i_reg[2] (REG_INTERFACE_I_n_98),
        .\cr_i_reg[4] (X_AXI_IPIF_SSP1_n_15),
        .\cr_i_reg[4]_0 (Cr[4]),
        .cr_txModeSelect_clr(cr_txModeSelect_clr),
        .cr_txModeSelect_set(cr_txModeSelect_set),
        .ctrlFifoDin(ctrlFifoDin),
        .gpo(gpo),
        .iic2intc_irpt(iic2intc_irpt),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .\sr_i_reg[0] ({sr_i[0],sr_i[1],sr_i[3]}),
        .\sr_i_reg[4] (REG_INTERFACE_I_n_108),
        .\sr_i_reg[5] (REG_INTERFACE_I_n_111),
        .\timing_param_tbuf_i_reg[0] (REG_INTERFACE_I_n_117),
        .\timing_param_tbuf_i_reg[1] (REG_INTERFACE_I_n_115),
        .\timing_param_tbuf_i_reg[2] (REG_INTERFACE_I_n_112),
        .\timing_param_tbuf_i_reg[3] (REG_INTERFACE_I_n_109),
        .\timing_param_tbuf_i_reg[7] (timing_param_tbuf_i),
        .\timing_param_thddat_i_reg[7] ({timing_param_thddat_i[7:6],timing_param_thddat_i[4]}),
        .\timing_param_thdsta_i_reg[0] (timing_param_thdsta_i),
        .\timing_param_thigh_i_reg[7] (timing_param_thigh_i),
        .\timing_param_tsudat_i_reg[5] (REG_INTERFACE_I_n_97),
        .\timing_param_tsudat_i_reg[7] ({timing_param_tsudat_i[7:6],timing_param_tsudat_i[4:0]}),
        .\timing_param_tsusta_i_reg[7] (timing_param_tsusta_i),
        .\timing_param_tsusto_i_reg[7] (timing_param_tsusto_i));
endmodule

module system_axi_iic_0_0_iic_control
   (out,
    New_rcv_dta,
    shift_reg_ld,
    sda_rin_d1,
    scl_rin_d1,
    Tx_under_prev,
    Bb,
    D,
    earlyAckHdr,
    earlyAckDataState,
    ackDataState,
    CO,
    \FSM_sequential_scl_state_reg[2]_0 ,
    rdy_new_xmt_i,
    detect_start,
    master_slave,
    Aas,
    \sr_i_reg[4] ,
    \q_int_reg[0] ,
    \q_int_reg[0]_0 ,
    \RD_FIFO_CNTRL.Rc_fifo_wr_reg ,
    \FSM_sequential_scl_state_reg[2]_1 ,
    \FSM_sequential_scl_state_reg[0]_0 ,
    abgc_i_reg_0,
    sda_t,
    \cr_i_reg[5] ,
    scl_t,
    rdCntrFrmTxFifo0,
    \s_axi_rdata_i_reg[7] ,
    SR,
    s_axi_aclk,
    scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ,
    scl_rising_edge0,
    Ro_prev,
    Q,
    sr_i,
    S,
    \timing_param_tsusto_i_reg[7] ,
    \timing_param_tsusta_i_reg[8] ,
    \timing_param_tbuf_i_reg[7] ,
    \timing_param_thddat_i_reg[8] ,
    \timing_param_thdsta_i_reg[8] ,
    \timing_param_tlow_i_reg[7] ,
    \timing_param_tsudat_i_reg[8] ,
    addr_match,
    new_rcv_dta_d1,
    \FSM_sequential_scl_state_reg[1]_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ,
    \cr_i_reg[4] ,
    txak,
    s_axi_wdata,
    E,
    Data_Exists_DFF,
    rxCntDone,
    dynamic_MSMS,
    Tx_data_exists,
    Tx_fifo_rd_d_reg,
    Msms_set,
    callingReadAccess,
    Tx_fifo_data,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ,
    \cr_i_reg[7] ,
    shift_reg_ld_reg_0);
  output [0:0]out;
  output New_rcv_dta;
  output shift_reg_ld;
  output sda_rin_d1;
  output scl_rin_d1;
  output Tx_under_prev;
  output Bb;
  output [3:0]D;
  output earlyAckHdr;
  output earlyAckDataState;
  output ackDataState;
  output [0:0]CO;
  output [0:0]\FSM_sequential_scl_state_reg[2]_0 ;
  output rdy_new_xmt_i;
  output detect_start;
  output master_slave;
  output Aas;
  output [1:0]\sr_i_reg[4] ;
  output [8:0]\q_int_reg[0] ;
  output [8:0]\q_int_reg[0]_0 ;
  output \RD_FIFO_CNTRL.Rc_fifo_wr_reg ;
  output \FSM_sequential_scl_state_reg[2]_1 ;
  output \FSM_sequential_scl_state_reg[0]_0 ;
  output [7:0]abgc_i_reg_0;
  output sda_t;
  output [0:0]\cr_i_reg[5] ;
  output scl_t;
  output rdCntrFrmTxFifo0;
  output [7:0]\s_axi_rdata_i_reg[7] ;
  input [0:0]SR;
  input s_axi_aclk;
  input scndry_out;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  input scl_rising_edge0;
  input Ro_prev;
  input [4:0]Q;
  input [0:0]sr_i;
  input [2:0]S;
  input [2:0]\timing_param_tsusto_i_reg[7] ;
  input [2:0]\timing_param_tsusta_i_reg[8] ;
  input [2:0]\timing_param_tbuf_i_reg[7] ;
  input [2:0]\timing_param_thddat_i_reg[8] ;
  input [2:0]\timing_param_thdsta_i_reg[8] ;
  input [2:0]\timing_param_tlow_i_reg[7] ;
  input [2:0]\timing_param_tsudat_i_reg[8] ;
  input addr_match;
  input new_rcv_dta_d1;
  input \FSM_sequential_scl_state_reg[1]_0 ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  input \cr_i_reg[4] ;
  input txak;
  input [0:0]s_axi_wdata;
  input [0:0]E;
  input Data_Exists_DFF;
  input rxCntDone;
  input [0:0]dynamic_MSMS;
  input Tx_data_exists;
  input Tx_fifo_rd_d_reg;
  input Msms_set;
  input callingReadAccess;
  input [6:0]Tx_fifo_data;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ;
  input \cr_i_reg[7] ;
  input [0:0]shift_reg_ld_reg_0;

  wire Aas;
  wire BITCNT_n_0;
  wire BITCNT_n_2;
  wire Bb;
  wire CLKCNT_n_9;
  wire [0:0]CO;
  wire [3:0]D;
  wire Data_Exists_DFF;
  wire [0:0]E;
  wire EarlyAckDataState0;
  wire EarlyAckHdr0;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[0]_i_2_n_0 ;
  wire \FSM_onehot_state[0]_i_3_n_0 ;
  wire \FSM_onehot_state[0]_i_4_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_2_n_0 ;
  wire \FSM_onehot_state[4]_i_3_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_2_n_0 ;
  wire \FSM_onehot_state[5]_i_3_n_0 ;
  wire \FSM_onehot_state[6]_i_3_n_0 ;
  wire \FSM_onehot_state[6]_i_5_n_0 ;
  wire \FSM_onehot_state[6]_i_6_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_sequential_scl_state[0]_i_1_n_0 ;
  wire \FSM_sequential_scl_state[0]_i_2_n_0 ;
  wire \FSM_sequential_scl_state[0]_i_3_n_0 ;
  wire \FSM_sequential_scl_state[0]_i_6_n_0 ;
  wire \FSM_sequential_scl_state[1]_i_1_n_0 ;
  wire \FSM_sequential_scl_state[1]_i_2_n_0 ;
  wire \FSM_sequential_scl_state[1]_i_3_n_0 ;
  wire \FSM_sequential_scl_state[1]_i_4_n_0 ;
  wire \FSM_sequential_scl_state[1]_i_5_n_0 ;
  wire \FSM_sequential_scl_state[2]_i_1_n_0 ;
  wire \FSM_sequential_scl_state[2]_i_2_n_0 ;
  wire \FSM_sequential_scl_state[3]_i_2_n_0 ;
  wire \FSM_sequential_scl_state[3]_i_3_n_0 ;
  wire \FSM_sequential_scl_state[3]_i_4_n_0 ;
  wire \FSM_sequential_scl_state[3]_i_5_n_0 ;
  wire \FSM_sequential_scl_state_reg[0]_0 ;
  wire \FSM_sequential_scl_state_reg[1]_0 ;
  wire [0:0]\FSM_sequential_scl_state_reg[2]_0 ;
  wire \FSM_sequential_scl_state_reg[2]_1 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ;
  wire I2CDATA_REG_n_0;
  wire I2CDATA_REG_n_2;
  wire I2CDATA_REG_n_3;
  wire I2CDATA_REG_n_4;
  wire I2CDATA_REG_n_5;
  wire I2CDATA_REG_n_6;
  wire I2CDATA_REG_n_7;
  wire I2CDATA_REG_n_8;
  wire I2CDATA_REG_n_9;
  wire I2CHEADER_REG_n_0;
  wire I2CHEADER_REG_n_11;
  wire I2CHEADER_REG_n_9;
  wire \LEVEL_1_GEN.master_sda_reg_n_0 ;
  wire Msms_set;
  wire New_rcv_dta;
  wire [4:0]Q;
  wire \RD_FIFO_CNTRL.Rc_fifo_wr_reg ;
  wire Ro_prev;
  wire [2:0]S;
  wire SETUP_CNT_n_0;
  wire [0:0]SR;
  wire Tx_data_exists;
  wire [6:0]Tx_fifo_data;
  wire Tx_fifo_rd_d_reg;
  wire Tx_under_prev;
  wire aas_i_i_1_n_0;
  wire [7:0]abgc_i_reg_0;
  wire ackDataState;
  wire addr_match;
  wire al_i_i_1_n_0;
  wire al_i_i_2_n_0;
  wire al_prevent;
  wire al_prevent_i_1_n_0;
  wire arb_lost;
  wire arb_lost_i_1_n_0;
  wire arb_lost_i_2_n_0;
  wire arb_lost_i_3_n_0;
  wire bit_cnt_en;
  wire bit_cnt_en0;
  wire bus_busy_d1;
  wire bus_busy_i_1_n_0;
  wire callingReadAccess;
  wire clk_cnt_en1;
  wire clk_cnt_en11_out;
  wire clk_cnt_en12_out;
  wire clk_cnt_en13_out;
  wire clk_cnt_en1_carry_n_2;
  wire clk_cnt_en1_carry_n_3;
  wire \clk_cnt_en1_inferred__0/i__carry_n_2 ;
  wire \clk_cnt_en1_inferred__0/i__carry_n_3 ;
  wire \clk_cnt_en1_inferred__1/i__carry_n_2 ;
  wire \clk_cnt_en1_inferred__1/i__carry_n_3 ;
  wire \clk_cnt_en1_inferred__2/i__carry_n_2 ;
  wire \clk_cnt_en1_inferred__2/i__carry_n_3 ;
  wire clk_cnt_en2_carry_n_2;
  wire clk_cnt_en2_carry_n_3;
  wire \cr_i[5]_i_3_n_0 ;
  wire \cr_i_reg[4] ;
  wire [0:0]\cr_i_reg[5] ;
  wire \cr_i_reg[7] ;
  wire data_i2c_i0;
  wire detect_start;
  wire detect_start_i_1_n_0;
  wire detect_stop0;
  wire detect_stop_b_i_1_n_0;
  wire detect_stop_b_i_3_n_0;
  wire detect_stop_b_reg_n_0;
  wire detect_stop_i_1_n_0;
  wire detect_stop_reg_n_0;
  wire dtc_i;
  wire dtc_i_d1;
  wire dtc_i_d2;
  wire dtre_d1;
  wire [0:0]dynamic_MSMS;
  wire earlyAckDataState;
  wire earlyAckHdr;
  wire gen_start;
  wire gen_start_i_1_n_0;
  wire gen_stop;
  wire gen_stop_d1;
  wire gen_stop_i_1_n_0;
  wire i2c_header_en;
  wire i2c_header_en0;
  wire master_slave;
  wire master_slave_i_1_n_0;
  wire msms_d1;
  wire msms_d10;
  wire msms_d1_i_2_n_0;
  wire msms_d2;
  wire msms_rst_i;
  wire msms_rst_i_i_1_n_0;
  wire new_rcv_dta_d1;
  wire \next_scl_state1_inferred__0/i__carry_n_2 ;
  wire \next_scl_state1_inferred__0/i__carry_n_3 ;
  wire \next_scl_state1_inferred__1/i__carry_n_1 ;
  wire \next_scl_state1_inferred__1/i__carry_n_2 ;
  wire \next_scl_state1_inferred__1/i__carry_n_3 ;
  (* RTL_KEEP = "yes" *) wire [0:0]out;
  (* RTL_KEEP = "yes" *) wire p_0_in_0;
  (* RTL_KEEP = "yes" *) wire p_1_in;
  (* RTL_KEEP = "yes" *) wire p_1_in0_in;
  (* RTL_KEEP = "yes" *) wire p_1_in6_in;
  (* RTL_KEEP = "yes" *) wire p_2_in;
  (* RTL_KEEP = "yes" *) wire p_4_in;
  wire [8:0]\q_int_reg[0] ;
  wire [8:0]\q_int_reg[0]_0 ;
  wire rdCntrFrmTxFifo0;
  wire rdy_new_xmt_i;
  wire rdy_new_xmt_i_i_1_n_0;
  wire ro_prev_d1;
  wire rsta_d1;
  wire rsta_tx_under_prev;
  wire rsta_tx_under_prev_i_1_n_0;
  wire rxCntDone;
  wire s_axi_aclk;
  wire [7:0]\s_axi_rdata_i_reg[7] ;
  wire [0:0]s_axi_wdata;
  wire scl_cout_reg;
  wire scl_cout_reg0;
  wire scl_f_edg_d1;
  wire scl_f_edg_d2;
  wire scl_f_edg_d3;
  wire scl_falling_edge;
  wire scl_falling_edge0;
  wire scl_rin_d1;
  wire scl_rising_edge;
  wire scl_rising_edge0;
  (* RTL_KEEP = "yes" *) wire [3:0]scl_state;
  wire scl_t;
  wire scndry_out;
  wire sda_cout1;
  wire sda_cout13_out;
  wire sda_cout_reg;
  wire sda_cout_reg_i_1_n_0;
  wire sda_cout_reg_i_2_n_0;
  wire sda_cout_reg_i_3_n_0;
  wire sda_cout_reg_i_4_n_0;
  wire sda_rin_d1;
  wire sda_sample;
  wire sda_sample_i_1_n_0;
  wire sda_setup;
  wire \sda_setup0_inferred__0/i__carry_n_1 ;
  wire \sda_setup0_inferred__0/i__carry_n_2 ;
  wire \sda_setup0_inferred__0/i__carry_n_3 ;
  wire sda_setup_i_1_n_0;
  wire sda_t;
  wire [7:7]shift_reg;
  wire shift_reg_en;
  wire shift_reg_en0;
  wire shift_reg_en_i_2_n_0;
  wire shift_reg_ld;
  wire shift_reg_ld0;
  wire shift_reg_ld_d1;
  wire shift_reg_ld_i_2_n_0;
  wire [0:0]shift_reg_ld_reg_0;
  wire slave_sda_reg_n_0;
  wire sm_stop;
  wire sm_stop_i_1_n_0;
  wire sm_stop_reg_n_0;
  wire [0:0]sr_i;
  wire [1:0]\sr_i_reg[4] ;
  wire state0;
  wire stop_scl;
  wire stop_scl_reg;
  wire stop_scl_reg_i_1_n_0;
  wire [2:0]\timing_param_tbuf_i_reg[7] ;
  wire [2:0]\timing_param_thddat_i_reg[8] ;
  wire [2:0]\timing_param_thdsta_i_reg[8] ;
  wire [2:0]\timing_param_tlow_i_reg[7] ;
  wire [2:0]\timing_param_tsudat_i_reg[8] ;
  wire [2:0]\timing_param_tsusta_i_reg[8] ;
  wire [2:0]\timing_param_tsusto_i_reg[7] ;
  wire tx_under_prev_d1;
  wire tx_under_prev_i0;
  wire tx_under_prev_i_i_1_n_0;
  wire tx_under_prev_i_i_3_n_0;
  wire txak;
  wire txer_edge_i_1_n_0;
  wire txer_i;
  wire txer_i_i_1_n_0;
  wire txer_i_reg_n_0;
  wire [3:3]NLW_clk_cnt_en1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_clk_cnt_en1_carry_O_UNCONNECTED;
  wire [3:3]\NLW_clk_cnt_en1_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_clk_cnt_en1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_clk_cnt_en1_inferred__1/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_clk_cnt_en1_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_clk_cnt_en1_inferred__2/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_clk_cnt_en1_inferred__2/i__carry_O_UNCONNECTED ;
  wire [3:3]NLW_clk_cnt_en2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_clk_cnt_en2_carry_O_UNCONNECTED;
  wire [3:3]\NLW_next_scl_state1_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_next_scl_state1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_next_scl_state1_inferred__1/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_next_scl_state1_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_sda_setup0_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_sda_setup0_inferred__0/i__carry_O_UNCONNECTED ;

  FDRE AckDataState_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(ackDataState),
        .R(SR));
  system_axi_iic_0_0_upcnt_n__parameterized0 BITCNT
       (.E(BITCNT_n_0),
        .EarlyAckDataState0(EarlyAckDataState0),
        .\FSM_onehot_state_reg[4] (\FSM_onehot_state[6]_i_6_n_0 ),
        .SR(SR),
        .bit_cnt_en(bit_cnt_en),
        .detect_start_reg(detect_start),
        .dtc_i(dtc_i),
        .dtc_i_reg(BITCNT_n_2),
        .out({\FSM_onehot_state_reg_n_0_[6] ,p_1_in,p_1_in6_in,p_1_in0_in,p_2_in,p_4_in}),
        .ro_prev_d1_reg(\FSM_onehot_state[6]_i_5_n_0 ),
        .s_axi_aclk(s_axi_aclk),
        .scl_falling_edge(scl_falling_edge));
  system_axi_iic_0_0_upcnt_n CLKCNT
       (.CO(clk_cnt_en13_out),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .Q(\q_int_reg[0] ),
        .SR(SR),
        .arb_lost(arb_lost),
        .\cr_i_reg[2] (Q[3]),
        .detect_stop_b_reg(detect_stop_b_reg_n_0),
        .out({scl_state[3:2],out,scl_state[0]}),
        .s_axi_aclk(s_axi_aclk),
        .stop_scl_reg(stop_scl_reg),
        .stop_scl_reg_reg(CLKCNT_n_9),
        .\timing_param_thddat_i_reg[8] (CO),
        .\timing_param_thigh_i_reg[8] (clk_cnt_en1),
        .\timing_param_tsusta_i_reg[8] (clk_cnt_en12_out),
        .\timing_param_tsusto_i_reg[7] (clk_cnt_en11_out));
  FDRE EarlyAckDataState_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(EarlyAckDataState0),
        .Q(earlyAckDataState),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    EarlyAckHdr_i_1
       (.I0(p_1_in0_in),
        .I1(scl_f_edg_d3),
        .O(EarlyAckHdr0));
  FDRE EarlyAckHdr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(EarlyAckHdr0),
        .Q(earlyAckHdr),
        .R(SR));
  LUT6 #(
    .INIT(64'h000000000000FFB8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state[0]_i_2_n_0 ),
        .I1(p_1_in0_in),
        .I2(\FSM_onehot_state[0]_i_3_n_0 ),
        .I3(\FSM_onehot_state[0]_i_4_n_0 ),
        .I4(p_2_in),
        .I5(p_4_in),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFF1)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(master_slave),
        .I1(addr_match),
        .I2(arb_lost),
        .I3(sda_sample),
        .O(\FSM_onehot_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4400440044007703)) 
    \FSM_onehot_state[0]_i_3 
       (.I0(detect_start),
        .I1(p_1_in6_in),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_state[5]_i_3_n_0 ),
        .I4(p_1_in),
        .I5(p_0_in_0),
        .O(\FSM_onehot_state[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000054)) 
    \FSM_onehot_state[0]_i_4 
       (.I0(p_1_in6_in),
        .I1(sda_sample),
        .I2(arb_lost),
        .I3(p_0_in_0),
        .I4(p_1_in),
        .O(\FSM_onehot_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEEEA)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(p_4_in),
        .I1(detect_start),
        .I2(p_1_in6_in),
        .I3(p_0_in_0),
        .I4(p_1_in0_in),
        .I5(p_2_in),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(p_2_in),
        .I1(p_4_in),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(Ro_prev),
        .I1(p_0_in_0),
        .I2(p_1_in),
        .I3(p_1_in6_in),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0101010000000100)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(arb_lost),
        .I1(sda_sample),
        .I2(\FSM_onehot_state[4]_i_2_n_0 ),
        .I3(\FSM_onehot_state[4]_i_3_n_0 ),
        .I4(p_1_in0_in),
        .I5(\cr_i_reg[4] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(p_4_in),
        .I1(p_2_in),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_onehot_state[4]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(p_0_in_0),
        .I2(p_1_in6_in),
        .I3(p_1_in),
        .I4(\FSM_onehot_state[5]_i_3_n_0 ),
        .O(\FSM_onehot_state[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(p_1_in0_in),
        .I1(p_4_in),
        .I2(p_2_in),
        .I3(\FSM_onehot_state[5]_i_2_n_0 ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h101F101010101010)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(\FSM_onehot_state[5]_i_3_n_0 ),
        .I1(detect_start),
        .I2(p_1_in6_in),
        .I3(p_0_in_0),
        .I4(Ro_prev),
        .I5(p_1_in),
        .O(\FSM_onehot_state[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[5]_i_3 
       (.I0(master_slave),
        .I1(addr_match),
        .O(\FSM_onehot_state[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(detect_stop_reg_n_0),
        .I1(Q[0]),
        .O(state0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \FSM_onehot_state[6]_i_3 
       (.I0(detect_start),
        .I1(p_1_in6_in),
        .I2(p_4_in),
        .I3(p_0_in_0),
        .I4(p_1_in0_in),
        .I5(p_2_in),
        .O(\FSM_onehot_state[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \FSM_onehot_state[6]_i_5 
       (.I0(ro_prev_d1),
        .I1(Ro_prev),
        .I2(scl_f_edg_d2),
        .O(\FSM_onehot_state[6]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[6]_i_6 
       (.I0(p_0_in_0),
        .I1(p_1_in6_in),
        .O(\FSM_onehot_state[6]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "idle:0000001,header:0000010,ack_header:0000100,rcv_data:0001000,xmit_data:0010000,ack_data:0100000,wait_ack:1000000" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(BITCNT_n_0),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(p_4_in),
        .S(state0));
  (* FSM_ENCODED_STATES = "idle:0000001,header:0000010,ack_header:0000100,rcv_data:0001000,xmit_data:0010000,ack_data:0100000,wait_ack:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(BITCNT_n_0),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(p_2_in),
        .R(state0));
  (* FSM_ENCODED_STATES = "idle:0000001,header:0000010,ack_header:0000100,rcv_data:0001000,xmit_data:0010000,ack_data:0100000,wait_ack:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(BITCNT_n_0),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(p_1_in0_in),
        .R(state0));
  (* FSM_ENCODED_STATES = "idle:0000001,header:0000010,ack_header:0000100,rcv_data:0001000,xmit_data:0010000,ack_data:0100000,wait_ack:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(BITCNT_n_0),
        .D(I2CHEADER_REG_n_0),
        .Q(p_1_in6_in),
        .R(state0));
  (* FSM_ENCODED_STATES = "idle:0000001,header:0000010,ack_header:0000100,rcv_data:0001000,xmit_data:0010000,ack_data:0100000,wait_ack:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s_axi_aclk),
        .CE(BITCNT_n_0),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(p_0_in_0),
        .R(state0));
  (* FSM_ENCODED_STATES = "idle:0000001,header:0000010,ack_header:0000100,rcv_data:0001000,xmit_data:0010000,ack_data:0100000,wait_ack:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(s_axi_aclk),
        .CE(BITCNT_n_0),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(p_1_in),
        .R(state0));
  (* FSM_ENCODED_STATES = "idle:0000001,header:0000010,ack_header:0000100,rcv_data:0001000,xmit_data:0010000,ack_data:0100000,wait_ack:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(s_axi_aclk),
        .CE(BITCNT_n_0),
        .D(\FSM_onehot_state[6]_i_3_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(state0));
  LUT6 #(
    .INIT(64'h000EEEEEEEEEEEEE)) 
    \FSM_sequential_scl_state[0]_i_1 
       (.I0(\FSM_sequential_scl_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_scl_state[0]_i_3_n_0 ),
        .I2(\FSM_sequential_scl_state_reg[1]_0 ),
        .I3(\FSM_sequential_scl_state_reg[0]_0 ),
        .I4(scl_state[0]),
        .I5(\FSM_sequential_scl_state[0]_i_6_n_0 ),
        .O(\FSM_sequential_scl_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBABAAAAAAAAABAAA)) 
    \FSM_sequential_scl_state[0]_i_2 
       (.I0(scl_state[0]),
        .I1(scl_state[3]),
        .I2(scl_state[2]),
        .I3(CO),
        .I4(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .I5(out),
        .O(\FSM_sequential_scl_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000F0F000202)) 
    \FSM_sequential_scl_state[0]_i_3 
       (.I0(\FSM_sequential_scl_state[1]_i_4_n_0 ),
        .I1(\FSM_sequential_scl_state[1]_i_5_n_0 ),
        .I2(scl_state[2]),
        .I3(scndry_out),
        .I4(scl_state[3]),
        .I5(out),
        .O(\FSM_sequential_scl_state[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_scl_state[0]_i_5 
       (.I0(scl_state[3]),
        .I1(scl_state[2]),
        .O(\FSM_sequential_scl_state_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hFFEEFCEE)) 
    \FSM_sequential_scl_state[0]_i_6 
       (.I0(clk_cnt_en13_out),
        .I1(out),
        .I2(\next_scl_state1_inferred__1/i__carry_n_1 ),
        .I3(scl_state[2]),
        .I4(scl_state[3]),
        .O(\FSM_sequential_scl_state[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h001F)) 
    \FSM_sequential_scl_state[1]_i_1 
       (.I0(\FSM_sequential_scl_state[1]_i_2_n_0 ),
        .I1(scl_state[2]),
        .I2(\FSM_sequential_scl_state[1]_i_3_n_0 ),
        .I3(scl_state[3]),
        .O(\FSM_sequential_scl_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B008BFF8BFF8BFF)) 
    \FSM_sequential_scl_state[1]_i_2 
       (.I0(\FSM_sequential_scl_state_reg[2]_0 ),
        .I1(out),
        .I2(clk_cnt_en13_out),
        .I3(scl_state[0]),
        .I4(\FSM_sequential_scl_state[1]_i_4_n_0 ),
        .I5(\FSM_sequential_scl_state[1]_i_5_n_0 ),
        .O(\FSM_sequential_scl_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA7F227FAA7FAA7F)) 
    \FSM_sequential_scl_state[1]_i_3 
       (.I0(scl_state[0]),
        .I1(scl_state[2]),
        .I2(\next_scl_state1_inferred__1/i__carry_n_1 ),
        .I3(out),
        .I4(arb_lost),
        .I5(Q[3]),
        .O(\FSM_sequential_scl_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_scl_state[1]_i_4 
       (.I0(Bb),
        .I1(gen_start),
        .I2(master_slave),
        .O(\FSM_sequential_scl_state[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0002FFFF)) 
    \FSM_sequential_scl_state[1]_i_5 
       (.I0(clk_cnt_en13_out),
        .I1(out),
        .I2(scl_state[2]),
        .I3(scl_state[3]),
        .I4(detect_stop_b_reg_n_0),
        .O(\FSM_sequential_scl_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h030303AB03FF0303)) 
    \FSM_sequential_scl_state[2]_i_1 
       (.I0(\FSM_sequential_scl_state_reg[2]_0 ),
        .I1(stop_scl_reg),
        .I2(\FSM_sequential_scl_state[2]_i_2_n_0 ),
        .I3(scl_state[3]),
        .I4(scl_state[2]),
        .I5(\FSM_sequential_scl_state_reg[2]_1 ),
        .O(\FSM_sequential_scl_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \FSM_sequential_scl_state[2]_i_2 
       (.I0(scl_state[3]),
        .I1(scl_state[2]),
        .I2(arb_lost),
        .I3(Q[3]),
        .O(\FSM_sequential_scl_state[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_scl_state[2]_i_3 
       (.I0(out),
        .I1(scl_state[0]),
        .O(\FSM_sequential_scl_state_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h545555FF555555FF)) 
    \FSM_sequential_scl_state[3]_i_2 
       (.I0(scl_state[3]),
        .I1(\FSM_sequential_scl_state[3]_i_4_n_0 ),
        .I2(arb_lost),
        .I3(scl_state[2]),
        .I4(out),
        .I5(scl_state[0]),
        .O(\FSM_sequential_scl_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00101010)) 
    \FSM_sequential_scl_state[3]_i_3 
       (.I0(out),
        .I1(scl_state[2]),
        .I2(scl_state[3]),
        .I3(scl_state[0]),
        .I4(clk_cnt_en13_out),
        .I5(\FSM_sequential_scl_state[3]_i_5_n_0 ),
        .O(\FSM_sequential_scl_state[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \FSM_sequential_scl_state[3]_i_4 
       (.I0(clk_cnt_en12_out),
        .I1(Q[3]),
        .I2(clk_cnt_en11_out),
        .I3(stop_scl_reg),
        .I4(clk_cnt_en1),
        .O(\FSM_sequential_scl_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \FSM_sequential_scl_state[3]_i_5 
       (.I0(stop_scl_reg),
        .I1(\FSM_sequential_scl_state_reg[2]_1 ),
        .I2(Q[3]),
        .I3(arb_lost),
        .I4(scl_state[2]),
        .I5(scl_state[3]),
        .O(\FSM_sequential_scl_state[3]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "scl_idle:0000,start_wait:0001,start:0010,start_edge:0011,scl_low_edge:0100,scl_low:0101,scl_high_edge:0110,scl_high:0111,stop_edge:1000,stop_wait:1001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_scl_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_scl_state[3]_i_2_n_0 ),
        .D(\FSM_sequential_scl_state[0]_i_1_n_0 ),
        .Q(scl_state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "scl_idle:0000,start_wait:0001,start:0010,start_edge:0011,scl_low_edge:0100,scl_low:0101,scl_high_edge:0110,scl_high:0111,stop_edge:1000,stop_wait:1001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_scl_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_scl_state[3]_i_2_n_0 ),
        .D(\FSM_sequential_scl_state[1]_i_1_n_0 ),
        .Q(out),
        .R(SR));
  (* FSM_ENCODED_STATES = "scl_idle:0000,start_wait:0001,start:0010,start_edge:0011,scl_low_edge:0100,scl_low:0101,scl_high_edge:0110,scl_high:0111,stop_edge:1000,stop_wait:1001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_scl_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_scl_state[3]_i_2_n_0 ),
        .D(\FSM_sequential_scl_state[2]_i_1_n_0 ),
        .Q(scl_state[2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "scl_idle:0000,start_wait:0001,start:0010,start_edge:0011,scl_low_edge:0100,scl_low:0101,scl_high_edge:0110,scl_high:0111,stop_edge:1000,stop_wait:1001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_scl_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_scl_state[3]_i_2_n_0 ),
        .D(\FSM_sequential_scl_state[3]_i_3_n_0 ),
        .Q(scl_state[3]),
        .R(SR));
  system_axi_iic_0_0_shift8 I2CDATA_REG
       (.\LEVEL_1_GEN.master_sda_reg (I2CDATA_REG_n_0),
        .Q({shift_reg,I2CDATA_REG_n_2,I2CDATA_REG_n_3,I2CDATA_REG_n_4,I2CDATA_REG_n_5,I2CDATA_REG_n_6,I2CDATA_REG_n_7,I2CDATA_REG_n_8}),
        .SR(SR),
        .Tx_fifo_data(Tx_fifo_data),
        .addr_match(addr_match),
        .out({p_1_in,p_0_in_0,p_1_in0_in,p_2_in}),
        .s_axi_aclk(s_axi_aclk),
        .shift_reg_en(shift_reg_en),
        .shift_reg_ld_reg(shift_reg_ld),
        .shift_reg_ld_reg_0(shift_reg_ld_reg_0),
        .slave_sda_reg(I2CDATA_REG_n_9),
        .tx_under_prev_i_reg(Tx_under_prev),
        .txak(txak));
  system_axi_iic_0_0_shift8_1 I2CHEADER_REG
       (.D(I2CHEADER_REG_n_0),
        .E(i2c_header_en),
        .\FSM_onehot_state_reg[6] (shift_reg_ld_i_2_n_0),
        .Q(abgc_i_reg_0),
        .\RD_FIFO_CNTRL.ro_prev_i_reg (\FSM_onehot_state[3]_i_2_n_0 ),
        .SR(SR),
        .abgc_i_reg(I2CHEADER_REG_n_9),
        .addr_match(addr_match),
        .arb_lost(arb_lost),
        .\cr_i_reg[1] ({Q[4],Q[2],Q[0]}),
        .detect_start_reg(detect_start),
        .detect_stop_reg(detect_stop_reg_n_0),
        .master_slave_reg(master_slave),
        .out({p_1_in0_in,p_2_in,p_4_in}),
        .s_axi_aclk(s_axi_aclk),
        .scndry_out(scndry_out),
        .sda_sample(sda_sample),
        .shift_reg_ld0(shift_reg_ld0),
        .srw_i_reg(I2CHEADER_REG_n_11),
        .srw_i_reg_0(\sr_i_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \IIC2Bus_IntrEvent[4]_i_1 
       (.I0(Bb),
        .O(D[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \IIC2Bus_IntrEvent[6]_i_1 
       (.I0(Aas),
        .O(D[0]));
  FDSE \LEVEL_1_GEN.master_sda_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I2CDATA_REG_n_0),
        .Q(\LEVEL_1_GEN.master_sda_reg_n_0 ),
        .S(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \RD_FIFO_CNTRL.Rc_fifo_wr_i_1 
       (.I0(New_rcv_dta),
        .I1(new_rcv_dta_d1),
        .O(\RD_FIFO_CNTRL.Rc_fifo_wr_reg ));
  system_axi_iic_0_0_upcnt_n_2 SETUP_CNT
       (.Q(\q_int_reg[0]_0 ),
        .SR(SR),
        .\cr_i_reg[2] (Q[3]),
        .gen_stop(gen_stop),
        .gen_stop_d1(gen_stop_d1),
        .\q_int_reg[0]_0 (SETUP_CNT_n_0),
        .rsta_d1(rsta_d1),
        .s_axi_aclk(s_axi_aclk),
        .scndry_out(scndry_out),
        .sda_rin_d1(sda_rin_d1),
        .sda_setup(sda_setup),
        .tx_under_prev_d1(tx_under_prev_d1),
        .tx_under_prev_i_reg(Tx_under_prev));
  LUT5 #(
    .INIT(32'h00A80000)) 
    aas_i_i_1
       (.I0(addr_match),
        .I1(p_1_in0_in),
        .I2(Aas),
        .I3(detect_stop_reg_n_0),
        .I4(Q[0]),
        .O(aas_i_i_1_n_0));
  FDRE aas_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aas_i_i_1_n_0),
        .Q(Aas),
        .R(1'b0));
  FDRE abgc_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I2CHEADER_REG_n_9),
        .Q(\sr_i_reg[4] [0]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hE0E0E0E0E0EEE0E0)) 
    al_i_i_1
       (.I0(Q[3]),
        .I1(master_slave),
        .I2(al_i_i_2_n_0),
        .I3(al_prevent),
        .I4(detect_stop_reg_n_0),
        .I5(sm_stop_reg_n_0),
        .O(al_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFF8F)) 
    al_i_i_2
       (.I0(bus_busy_d1),
        .I1(gen_start),
        .I2(master_slave),
        .I3(arb_lost),
        .O(al_i_i_2_n_0));
  FDRE al_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(al_i_i_1_n_0),
        .Q(D[3]),
        .R(SR));
  LUT4 #(
    .INIT(16'h5554)) 
    al_prevent_i_1
       (.I0(detect_start),
        .I1(gen_stop),
        .I2(sm_stop_reg_n_0),
        .I3(al_prevent),
        .O(al_prevent_i_1_n_0));
  FDRE al_prevent_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(al_prevent_i_1_n_0),
        .Q(al_prevent),
        .R(SR));
  LUT6 #(
    .INIT(64'h000000002AEA2A2A)) 
    arb_lost_i_1
       (.I0(arb_lost),
        .I1(master_slave),
        .I2(arb_lost_i_2_n_0),
        .I3(scndry_out),
        .I4(sda_cout_reg),
        .I5(arb_lost_i_3_n_0),
        .O(arb_lost_i_1_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    arb_lost_i_2
       (.I0(scl_rising_edge),
        .I1(p_0_in_0),
        .I2(p_2_in),
        .O(arb_lost_i_2_n_0));
  LUT5 #(
    .INIT(32'h1001FFFF)) 
    arb_lost_i_3
       (.I0(scl_state[2]),
        .I1(out),
        .I2(scl_state[0]),
        .I3(scl_state[3]),
        .I4(Q[0]),
        .O(arb_lost_i_3_n_0));
  FDRE arb_lost_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(arb_lost_i_1_n_0),
        .Q(arb_lost),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAAA8)) 
    bit_cnt_en_i_1
       (.I0(scl_falling_edge),
        .I1(p_1_in6_in),
        .I2(p_2_in),
        .I3(p_0_in_0),
        .O(bit_cnt_en0));
  FDRE bit_cnt_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bit_cnt_en0),
        .Q(bit_cnt_en),
        .R(SR));
  FDRE bus_busy_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bb),
        .Q(bus_busy_d1),
        .R(SR));
  LUT4 #(
    .INIT(16'h00E0)) 
    bus_busy_i_1
       (.I0(Bb),
        .I1(detect_start),
        .I2(Q[0]),
        .I3(detect_stop_reg_n_0),
        .O(bus_busy_i_1_n_0));
  FDRE bus_busy_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus_busy_i_1_n_0),
        .Q(Bb),
        .R(1'b0));
  CARRY4 clk_cnt_en1_carry
       (.CI(1'b0),
        .CO({NLW_clk_cnt_en1_carry_CO_UNCONNECTED[3],clk_cnt_en1,clk_cnt_en1_carry_n_2,clk_cnt_en1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_clk_cnt_en1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,S}));
  CARRY4 \clk_cnt_en1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\NLW_clk_cnt_en1_inferred__0/i__carry_CO_UNCONNECTED [3],clk_cnt_en11_out,\clk_cnt_en1_inferred__0/i__carry_n_2 ,\clk_cnt_en1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_clk_cnt_en1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,\timing_param_tsusto_i_reg[7] }));
  CARRY4 \clk_cnt_en1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\NLW_clk_cnt_en1_inferred__1/i__carry_CO_UNCONNECTED [3],clk_cnt_en12_out,\clk_cnt_en1_inferred__1/i__carry_n_2 ,\clk_cnt_en1_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_clk_cnt_en1_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,\timing_param_tsusta_i_reg[8] }));
  CARRY4 \clk_cnt_en1_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\NLW_clk_cnt_en1_inferred__2/i__carry_CO_UNCONNECTED [3],clk_cnt_en13_out,\clk_cnt_en1_inferred__2/i__carry_n_2 ,\clk_cnt_en1_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_clk_cnt_en1_inferred__2/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,\timing_param_tbuf_i_reg[7] }));
  CARRY4 clk_cnt_en2_carry
       (.CI(1'b0),
        .CO({NLW_clk_cnt_en2_carry_CO_UNCONNECTED[3],CO,clk_cnt_en2_carry_n_2,clk_cnt_en2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_clk_cnt_en2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,\timing_param_thddat_i_reg[8] }));
  LUT6 #(
    .INIT(64'h88888888BBBB888B)) 
    \cr_i[5]_i_1 
       (.I0(s_axi_wdata),
        .I1(E),
        .I2(Bb),
        .I3(Data_Exists_DFF),
        .I4(Q[1]),
        .I5(\cr_i[5]_i_3_n_0 ),
        .O(\cr_i_reg[5] ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFFFEFEFE)) 
    \cr_i[5]_i_3 
       (.I0(rxCntDone),
        .I1(msms_rst_i),
        .I2(sm_stop_reg_n_0),
        .I3(dynamic_MSMS),
        .I4(Tx_data_exists),
        .I5(Tx_fifo_rd_d_reg),
        .O(\cr_i[5]_i_3_n_0 ));
  FDRE \data_i2c_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(data_i2c_i0),
        .D(I2CDATA_REG_n_8),
        .Q(\s_axi_rdata_i_reg[7] [0]),
        .R(SR));
  FDRE \data_i2c_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(data_i2c_i0),
        .D(I2CDATA_REG_n_7),
        .Q(\s_axi_rdata_i_reg[7] [1]),
        .R(SR));
  FDRE \data_i2c_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(data_i2c_i0),
        .D(I2CDATA_REG_n_6),
        .Q(\s_axi_rdata_i_reg[7] [2]),
        .R(SR));
  FDRE \data_i2c_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(data_i2c_i0),
        .D(I2CDATA_REG_n_5),
        .Q(\s_axi_rdata_i_reg[7] [3]),
        .R(SR));
  FDRE \data_i2c_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(data_i2c_i0),
        .D(I2CDATA_REG_n_4),
        .Q(\s_axi_rdata_i_reg[7] [4]),
        .R(SR));
  FDRE \data_i2c_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(data_i2c_i0),
        .D(I2CDATA_REG_n_3),
        .Q(\s_axi_rdata_i_reg[7] [5]),
        .R(SR));
  FDRE \data_i2c_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(data_i2c_i0),
        .D(I2CDATA_REG_n_2),
        .Q(\s_axi_rdata_i_reg[7] [6]),
        .R(SR));
  FDRE \data_i2c_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(data_i2c_i0),
        .D(shift_reg),
        .Q(\s_axi_rdata_i_reg[7] [7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000AA8A0080)) 
    detect_start_i_1
       (.I0(Q[0]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .I2(sda_rin_d1),
        .I3(scndry_out),
        .I4(detect_start),
        .I5(p_2_in),
        .O(detect_start_i_1_n_0));
  FDRE detect_start_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(detect_start_i_1_n_0),
        .Q(detect_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEECE220200000000)) 
    detect_stop_b_i_1
       (.I0(detect_stop_b_reg_n_0),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ),
        .I2(detect_stop_b_i_3_n_0),
        .I3(\FSM_sequential_scl_state_reg[0]_0 ),
        .I4(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .I5(\cr_i_reg[7] ),
        .O(detect_stop_b_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    detect_stop_b_i_3
       (.I0(out),
        .I1(scl_state[0]),
        .O(detect_stop_b_i_3_n_0));
  FDRE detect_stop_b_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(detect_stop_b_i_1_n_0),
        .Q(detect_stop_b_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000F2020000)) 
    detect_stop_i_1
       (.I0(detect_stop_reg_n_0),
        .I1(detect_stop0),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .I4(Q[0]),
        .I5(detect_start),
        .O(detect_stop_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    detect_stop_i_2
       (.I0(msms_d1),
        .I1(msms_d2),
        .O(detect_stop0));
  FDRE detect_stop_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(detect_stop_i_1_n_0),
        .Q(detect_stop_reg_n_0),
        .R(1'b0));
  FDRE dtc_i_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dtc_i),
        .Q(dtc_i_d1),
        .R(SR));
  FDRE dtc_i_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dtc_i_d1),
        .Q(dtc_i_d2),
        .R(SR));
  FDRE dtc_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(BITCNT_n_2),
        .Q(dtc_i),
        .R(SR));
  FDRE dtre_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sr_i),
        .Q(dtre_d1),
        .R(SR));
  LUT4 #(
    .INIT(16'h7530)) 
    gen_start_i_1
       (.I0(detect_start),
        .I1(msms_d2),
        .I2(msms_d1),
        .I3(gen_start),
        .O(gen_start_i_1_n_0));
  FDRE gen_start_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_start_i_1_n_0),
        .Q(gen_start),
        .R(SR));
  FDRE gen_stop_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_stop),
        .Q(gen_stop_d1),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h55750030)) 
    gen_stop_i_1
       (.I0(detect_stop_reg_n_0),
        .I1(arb_lost),
        .I2(msms_d2),
        .I3(msms_d1),
        .I4(gen_stop),
        .O(gen_stop_i_1_n_0));
  FDRE gen_stop_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_stop_i_1_n_0),
        .Q(gen_stop),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    i2c_header_en_i_1
       (.I0(p_2_in),
        .I1(scl_rising_edge),
        .O(i2c_header_en0));
  FDRE i2c_header_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i2c_header_en0),
        .Q(i2c_header_en),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h40CC4000)) 
    master_slave_i_1
       (.I0(arb_lost),
        .I1(Q[0]),
        .I2(master_slave),
        .I3(Bb),
        .I4(msms_d1),
        .O(master_slave_i_1_n_0));
  FDRE master_slave_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(master_slave_i_1_n_0),
        .Q(master_slave),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    msms_d1_i_1
       (.I0(msms_d1_i_2_n_0),
        .I1(msms_rst_i),
        .O(msms_d10));
  LUT6 #(
    .INIT(64'hAABAAAAAAABAAABA)) 
    msms_d1_i_2
       (.I0(Q[1]),
        .I1(txer_i_reg_n_0),
        .I2(msms_d1),
        .I3(Msms_set),
        .I4(dtc_i_d2),
        .I5(dtc_i_d1),
        .O(msms_d1_i_2_n_0));
  FDRE msms_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(msms_d10),
        .Q(msms_d1),
        .R(SR));
  FDRE msms_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(msms_d1),
        .Q(msms_d2),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000008FF0800)) 
    msms_rst_i_i_1
       (.I0(arb_lost_i_2_n_0),
        .I1(sda_cout_reg),
        .I2(scndry_out),
        .I3(master_slave),
        .I4(msms_rst_i),
        .I5(arb_lost_i_3_n_0),
        .O(msms_rst_i_i_1_n_0));
  FDRE msms_rst_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(msms_rst_i_i_1_n_0),
        .Q(msms_rst_i),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    new_rcv_dta_i_i_1
       (.I0(p_1_in),
        .I1(scl_falling_edge),
        .I2(Ro_prev),
        .O(data_i2c_i0));
  FDRE new_rcv_dta_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data_i2c_i0),
        .Q(New_rcv_dta),
        .R(SR));
  CARRY4 \next_scl_state1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\NLW_next_scl_state1_inferred__0/i__carry_CO_UNCONNECTED [3],\FSM_sequential_scl_state_reg[2]_0 ,\next_scl_state1_inferred__0/i__carry_n_2 ,\next_scl_state1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_scl_state1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,\timing_param_thdsta_i_reg[8] }));
  CARRY4 \next_scl_state1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\NLW_next_scl_state1_inferred__1/i__carry_CO_UNCONNECTED [3],\next_scl_state1_inferred__1/i__carry_n_1 ,\next_scl_state1_inferred__1/i__carry_n_2 ,\next_scl_state1_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_scl_state1_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,\timing_param_tlow_i_reg[7] }));
  LUT3 #(
    .INIT(8'h80)) 
    rdCntrFrmTxFifo_i_1
       (.I0(earlyAckHdr),
        .I1(callingReadAccess),
        .I2(Tx_data_exists),
        .O(rdCntrFrmTxFifo0));
  LUT6 #(
    .INIT(64'h222F2F2F22202020)) 
    rdy_new_xmt_i_i_1
       (.I0(shift_reg_ld_d1),
        .I1(shift_reg_ld),
        .I2(p_0_in_0),
        .I3(Q[1]),
        .I4(p_2_in),
        .I5(rdy_new_xmt_i),
        .O(rdy_new_xmt_i_i_1_n_0));
  FDRE rdy_new_xmt_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rdy_new_xmt_i_i_1_n_0),
        .Q(rdy_new_xmt_i),
        .R(SR));
  FDRE ro_prev_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Ro_prev),
        .Q(ro_prev_d1),
        .R(SR));
  FDRE rsta_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(rsta_d1),
        .R(SR));
  LUT5 #(
    .INIT(32'hF0FF2020)) 
    rsta_tx_under_prev_i_1
       (.I0(Q[3]),
        .I1(rsta_d1),
        .I2(sr_i),
        .I3(dtre_d1),
        .I4(rsta_tx_under_prev),
        .O(rsta_tx_under_prev_i_1_n_0));
  FDRE rsta_tx_under_prev_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rsta_tx_under_prev_i_1_n_0),
        .Q(rsta_tx_under_prev),
        .R(SR));
  LUT4 #(
    .INIT(16'h0047)) 
    scl_cout_reg_i_1
       (.I0(scl_state[3]),
        .I1(out),
        .I2(scl_state[2]),
        .I3(Ro_prev),
        .O(scl_cout_reg0));
  FDSE scl_cout_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scl_cout_reg0),
        .Q(scl_cout_reg),
        .S(SR));
  FDRE scl_f_edg_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scl_falling_edge),
        .Q(scl_f_edg_d1),
        .R(SR));
  FDRE scl_f_edg_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scl_f_edg_d1),
        .Q(scl_f_edg_d2),
        .R(SR));
  FDRE scl_f_edg_d3_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scl_f_edg_d2),
        .Q(scl_f_edg_d3),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    scl_falling_edge_i_1
       (.I0(scl_rin_d1),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .O(scl_falling_edge0));
  FDRE scl_falling_edge_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scl_falling_edge0),
        .Q(scl_falling_edge),
        .R(SR));
  FDRE scl_rin_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .Q(scl_rin_d1),
        .R(1'b0));
  FDRE scl_rising_edge_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scl_rising_edge0),
        .Q(scl_rising_edge),
        .R(SR));
  LUT4 #(
    .INIT(16'h0004)) 
    scl_t_INST_0
       (.I0(sda_setup),
        .I1(scl_cout_reg),
        .I2(rsta_tx_under_prev),
        .I3(Ro_prev),
        .O(scl_t));
  LUT6 #(
    .INIT(64'h0051FFFF00510000)) 
    sda_cout_reg_i_1
       (.I0(scl_state[3]),
        .I1(out),
        .I2(scl_state[2]),
        .I3(sda_cout_reg_i_2_n_0),
        .I4(sda_cout_reg_i_3_n_0),
        .I5(sda_cout_reg),
        .O(sda_cout_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h00FFF1F100000000)) 
    sda_cout_reg_i_2
       (.I0(Q[3]),
        .I1(\LEVEL_1_GEN.master_sda_reg_n_0 ),
        .I2(sda_cout1),
        .I3(clk_cnt_en11_out),
        .I4(\FSM_sequential_scl_state_reg[2]_1 ),
        .I5(sda_cout_reg_i_4_n_0),
        .O(sda_cout_reg_i_2_n_0));
  LUT5 #(
    .INIT(32'h51440055)) 
    sda_cout_reg_i_3
       (.I0(scl_state[3]),
        .I1(out),
        .I2(sda_cout13_out),
        .I3(scl_state[0]),
        .I4(scl_state[2]),
        .O(sda_cout_reg_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sda_cout_reg_i_4
       (.I0(scl_state[2]),
        .I1(out),
        .O(sda_cout_reg_i_4_n_0));
  LUT4 #(
    .INIT(16'h0040)) 
    sda_cout_reg_i_5
       (.I0(arb_lost),
        .I1(stop_scl_reg),
        .I2(clk_cnt_en11_out),
        .I3(Q[3]),
        .O(sda_cout13_out));
  FDSE sda_cout_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sda_cout_reg_i_1_n_0),
        .Q(sda_cout_reg),
        .S(SR));
  FDRE sda_rin_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scndry_out),
        .Q(sda_rin_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    sda_sample_i_1
       (.I0(scndry_out),
        .I1(scl_rising_edge),
        .I2(sda_sample),
        .O(sda_sample_i_1_n_0));
  FDRE sda_sample_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sda_sample_i_1_n_0),
        .Q(sda_sample),
        .R(SR));
  CARRY4 \sda_setup0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\NLW_sda_setup0_inferred__0/i__carry_CO_UNCONNECTED [3],\sda_setup0_inferred__0/i__carry_n_1 ,\sda_setup0_inferred__0/i__carry_n_2 ,\sda_setup0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_sda_setup0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,\timing_param_tsudat_i_reg[8] }));
  LUT5 #(
    .INIT(32'h55FD00FC)) 
    sda_setup_i_1
       (.I0(\sda_setup0_inferred__0/i__carry_n_1 ),
        .I1(Tx_under_prev),
        .I2(SETUP_CNT_n_0),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .I4(sda_setup),
        .O(sda_setup_i_1_n_0));
  FDRE sda_setup_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sda_setup_i_1_n_0),
        .Q(sda_setup),
        .R(SR));
  LUT5 #(
    .INIT(32'h0000EFE0)) 
    sda_t_INST_0
       (.I0(arb_lost),
        .I1(sda_cout_reg),
        .I2(master_slave),
        .I3(slave_sda_reg_n_0),
        .I4(stop_scl_reg),
        .O(sda_t));
  LUT4 #(
    .INIT(16'hEAAA)) 
    shift_reg_en_i_1
       (.I0(shift_reg_en_i_2_n_0),
        .I1(master_slave),
        .I2(p_2_in),
        .I3(scl_rising_edge),
        .O(shift_reg_en0));
  LUT5 #(
    .INIT(32'h55404040)) 
    shift_reg_en_i_2
       (.I0(detect_start),
        .I1(p_0_in_0),
        .I2(scl_f_edg_d2),
        .I3(scl_rising_edge),
        .I4(p_1_in6_in),
        .O(shift_reg_en_i_2_n_0));
  FDRE shift_reg_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(shift_reg_en0),
        .Q(shift_reg_en),
        .R(SR));
  FDRE shift_reg_ld_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(shift_reg_ld),
        .Q(shift_reg_ld_d1),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    shift_reg_ld_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(Tx_under_prev),
        .I2(master_slave),
        .I3(p_4_in),
        .I4(p_1_in6_in),
        .I5(detect_start),
        .O(shift_reg_ld_i_2_n_0));
  FDRE shift_reg_ld_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(shift_reg_ld0),
        .Q(shift_reg_ld),
        .R(SR));
  FDSE slave_sda_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I2CDATA_REG_n_9),
        .Q(slave_sda_reg_n_0),
        .S(SR));
  LUT6 #(
    .INIT(64'h00000000BA8A0000)) 
    sm_stop_i_1
       (.I0(sm_stop_reg_n_0),
        .I1(\FSM_onehot_state[6]_i_5_n_0 ),
        .I2(sm_stop),
        .I3(master_slave),
        .I4(Q[0]),
        .I5(detect_stop_reg_n_0),
        .O(sm_stop_i_1_n_0));
  LUT5 #(
    .INIT(32'h40404000)) 
    sm_stop_i_2
       (.I0(arb_lost),
        .I1(master_slave),
        .I2(sda_sample),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(p_1_in0_in),
        .O(sm_stop));
  FDRE sm_stop_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sm_stop_i_1_n_0),
        .Q(sm_stop_reg_n_0),
        .R(1'b0));
  FDRE srw_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I2CHEADER_REG_n_11),
        .Q(\sr_i_reg[4] [1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0880FFFF08800000)) 
    stop_scl_reg_i_1
       (.I0(CLKCNT_n_9),
        .I1(sda_cout1),
        .I2(out),
        .I3(scl_state[0]),
        .I4(stop_scl),
        .I5(stop_scl_reg),
        .O(stop_scl_reg_i_1_n_0));
  LUT5 #(
    .INIT(32'h0000000E)) 
    stop_scl_reg_i_3
       (.I0(gen_stop),
        .I1(sm_stop_reg_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(p_1_in0_in),
        .I4(p_1_in),
        .O(sda_cout1));
  LUT5 #(
    .INIT(32'h0022F777)) 
    stop_scl_reg_i_4
       (.I0(scl_state[0]),
        .I1(out),
        .I2(sda_cout13_out),
        .I3(scl_state[2]),
        .I4(scl_state[3]),
        .O(stop_scl));
  FDRE stop_scl_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stop_scl_reg_i_1_n_0),
        .Q(stop_scl_reg),
        .R(SR));
  FDRE tx_under_prev_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Tx_under_prev),
        .Q(tx_under_prev_d1),
        .R(SR));
  LUT5 #(
    .INIT(32'hAABAAAAA)) 
    tx_under_prev_i_i_1
       (.I0(tx_under_prev_i0),
        .I1(p_4_in),
        .I2(sr_i),
        .I3(p_1_in6_in),
        .I4(Tx_under_prev),
        .O(tx_under_prev_i_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000900000000000)) 
    tx_under_prev_i_i_2
       (.I0(Aas),
        .I1(\sr_i_reg[4] [1]),
        .I2(tx_under_prev_i_i_3_n_0),
        .I3(sr_i),
        .I4(gen_stop),
        .I5(scl_falling_edge),
        .O(tx_under_prev_i0));
  LUT2 #(
    .INIT(4'hE)) 
    tx_under_prev_i_i_3
       (.I0(p_1_in0_in),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .O(tx_under_prev_i_i_3_n_0));
  FDRE tx_under_prev_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_under_prev_i_i_1_n_0),
        .Q(Tx_under_prev),
        .R(SR));
  LUT6 #(
    .INIT(64'hD000D0D0D0000000)) 
    txer_edge_i_1
       (.I0(scl_f_edg_d2),
        .I1(scl_falling_edge),
        .I2(Q[0]),
        .I3(sda_sample),
        .I4(txer_i),
        .I5(D[2]),
        .O(txer_edge_i_1_n_0));
  LUT4 #(
    .INIT(16'hAAA8)) 
    txer_edge_i_2
       (.I0(scl_falling_edge),
        .I1(p_1_in0_in),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(p_1_in),
        .O(txer_i));
  FDRE txer_edge_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(txer_edge_i_1_n_0),
        .Q(D[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBBBBBBBF88888880)) 
    txer_i_i_1
       (.I0(sda_sample),
        .I1(scl_falling_edge),
        .I2(p_1_in0_in),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(p_1_in),
        .I5(txer_i_reg_n_0),
        .O(txer_i_i_1_n_0));
  FDRE txer_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(txer_i_i_1_n_0),
        .Q(txer_i_reg_n_0),
        .R(SR));
endmodule

module system_axi_iic_0_0_interrupt_control
   (irpt_wrack_d1,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    p_1_in17_in,
    p_1_in14_in,
    p_1_in11_in,
    p_1_in8_in,
    p_1_in5_in,
    p_1_in2_in,
    p_1_in,
    ipif_glbl_irpt_enable_reg,
    iic2intc_irpt,
    Q,
    SR,
    irpt_wrack,
    s_axi_aclk,
    Bus_RNW_reg_reg,
    Bus_RNW_reg_reg_0,
    Bus_RNW_reg_reg_1,
    Bus_RNW_reg_reg_2,
    Bus_RNW_reg_reg_3,
    Bus_RNW_reg_reg_4,
    Bus_RNW_reg_reg_5,
    Bus_RNW_reg_reg_6,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    E,
    s_axi_wdata);
  output irpt_wrack_d1;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  output p_1_in17_in;
  output p_1_in14_in;
  output p_1_in11_in;
  output p_1_in8_in;
  output p_1_in5_in;
  output p_1_in2_in;
  output p_1_in;
  output ipif_glbl_irpt_enable_reg;
  output iic2intc_irpt;
  output [7:0]Q;
  input [0:0]SR;
  input irpt_wrack;
  input s_axi_aclk;
  input Bus_RNW_reg_reg;
  input Bus_RNW_reg_reg_0;
  input Bus_RNW_reg_reg_1;
  input Bus_RNW_reg_reg_2;
  input Bus_RNW_reg_reg_3;
  input Bus_RNW_reg_reg_4;
  input Bus_RNW_reg_reg_5;
  input Bus_RNW_reg_reg_6;
  input \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  input [0:0]E;
  input [7:0]s_axi_wdata;

  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire Bus_RNW_reg_reg_2;
  wire Bus_RNW_reg_reg_3;
  wire Bus_RNW_reg_reg_4;
  wire Bus_RNW_reg_reg_5;
  wire Bus_RNW_reg_reg_6;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire iic2intc_irpt;
  wire iic2intc_irpt_INST_0_i_1_n_0;
  wire iic2intc_irpt_INST_0_i_2_n_0;
  wire iic2intc_irpt_INST_0_i_3_n_0;
  wire iic2intc_irpt_INST_0_i_4_n_0;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire p_1_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire s_axi_aclk;
  wire [7:0]s_axi_wdata;

  FDRE \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg),
        .Q(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .R(SR));
  FDRE \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_0),
        .Q(p_1_in17_in),
        .R(SR));
  FDRE \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_1),
        .Q(p_1_in14_in),
        .R(SR));
  FDRE \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_2),
        .Q(p_1_in11_in),
        .R(SR));
  FDRE \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_3),
        .Q(p_1_in8_in),
        .R(SR));
  FDRE \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_4),
        .Q(p_1_in5_in),
        .R(SR));
  FDRE \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_5),
        .Q(p_1_in2_in),
        .R(SR));
  FDRE \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_6),
        .Q(p_1_in),
        .R(SR));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    iic2intc_irpt_INST_0
       (.I0(ipif_glbl_irpt_enable_reg),
        .I1(iic2intc_irpt_INST_0_i_1_n_0),
        .I2(iic2intc_irpt_INST_0_i_2_n_0),
        .I3(iic2intc_irpt_INST_0_i_3_n_0),
        .I4(iic2intc_irpt_INST_0_i_4_n_0),
        .O(iic2intc_irpt));
  LUT4 #(
    .INIT(16'hF888)) 
    iic2intc_irpt_INST_0_i_1
       (.I0(Q[4]),
        .I1(p_1_in8_in),
        .I2(Q[3]),
        .I3(p_1_in11_in),
        .O(iic2intc_irpt_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    iic2intc_irpt_INST_0_i_2
       (.I0(Q[0]),
        .I1(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .I2(Q[6]),
        .I3(p_1_in2_in),
        .O(iic2intc_irpt_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'h0777)) 
    iic2intc_irpt_INST_0_i_3
       (.I0(Q[5]),
        .I1(p_1_in5_in),
        .I2(Q[1]),
        .I3(p_1_in17_in),
        .O(iic2intc_irpt_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    iic2intc_irpt_INST_0_i_4
       (.I0(Q[7]),
        .I1(p_1_in),
        .I2(Q[2]),
        .I3(p_1_in14_in),
        .O(iic2intc_irpt_INST_0_i_4_n_0));
  FDRE \ip_irpt_enable_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \ip_irpt_enable_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \ip_irpt_enable_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \ip_irpt_enable_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \ip_irpt_enable_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \ip_irpt_enable_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \ip_irpt_enable_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \ip_irpt_enable_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE ipif_glbl_irpt_enable_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .Q(ipif_glbl_irpt_enable_reg),
        .R(SR));
  FDRE irpt_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_wrack),
        .Q(irpt_wrack_d1),
        .R(SR));
endmodule

module system_axi_iic_0_0_reg_interface
   (IIC2Bus_IntrEvent,
    Q,
    D,
    Tx_fifo_wr,
    Tx_fifo_rd,
    Tx_fifo_rst,
    new_rcv_dta_d1,
    Rc_fifo_wr,
    Rc_fifo_rd,
    dtre_d1_reg,
    gpo,
    Msms_set,
    \FSM_sequential_scl_state_reg[0] ,
    \FSM_onehot_state_reg[4] ,
    addr_match,
    D_0,
    Data_Exists_DFF,
    SR,
    detect_stop_b_reg,
    firstDynStartSeen_reg,
    D_1,
    Data_Exists_DFF_0,
    \cr_i_reg[5]_0 ,
    S,
    \FSM_sequential_scl_state_reg[0]_0 ,
    \FSM_sequential_scl_state_reg[0]_1 ,
    \FSM_sequential_scl_state_reg[0]_2 ,
    \FSM_sequential_scl_state_reg[0]_3 ,
    \s_axi_rdata_i_reg[7] ,
    \FSM_sequential_scl_state_reg[3] ,
    \FSM_sequential_scl_state_reg[3]_0 ,
    \FSM_sequential_scl_state_reg[0]_4 ,
    \s_axi_rdata_i_reg[7]_0 ,
    \FSM_sequential_scl_state_reg[2] ,
    \FSM_sequential_scl_state_reg[2]_0 ,
    \FSM_sequential_scl_state_reg[1] ,
    sda_setup_reg,
    sda_setup_reg_0,
    \s_axi_rdata_i_reg[0] ,
    \s_axi_rdata_i_reg[5] ,
    \s_axi_rdata_i_reg[8] ,
    \s_axi_rdata_i_reg[7]_1 ,
    \s_axi_rdata_i_reg[6] ,
    \s_axi_rdata_i_reg[5]_0 ,
    \s_axi_rdata_i_reg[4] ,
    \s_axi_rdata_i_reg[3] ,
    \RD_FIFO_CNTRL.ro_prev_i_reg_0 ,
    \s_axi_rdata_i_reg[3]_0 ,
    \s_axi_rdata_i_reg[3]_1 ,
    \s_axi_rdata_i_reg[2] ,
    \s_axi_rdata_i_reg[2]_0 ,
    \s_axi_rdata_i_reg[2]_1 ,
    \s_axi_rdata_i_reg[1] ,
    \s_axi_rdata_i_reg[1]_0 ,
    \s_axi_rdata_i_reg[1]_1 ,
    \s_axi_rdata_i_reg[0]_0 ,
    \s_axi_rdata_i_reg[0]_1 ,
    \Addr_Counters[0].FDRE_I ,
    D_2,
    \Addr_Counters[0].FDRE_I_0 ,
    \Addr_Counters[0].FDRE_I_1 ,
    Bus2IIC_Reset,
    \Addr_Counters[3].FDRE_I ,
    s_axi_aclk,
    p_6_out,
    Bus2IIC_WrCE,
    rdy_new_xmt_i,
    New_rcv_dta,
    new_rcv_dta_i_reg,
    Bus2IIC_RdCE,
    Data_Exists_DFF_1,
    Aas,
    \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] ,
    \timing_param_thdsta_i_reg[8]_0 ,
    out,
    master_slave,
    \data_int_reg[7] ,
    s_axi_wdata,
    \FSM_sequential_scl_state_reg[3]_1 ,
    \FSM_sequential_scl_state_reg[1]_0 ,
    rdCntrFrmTxFifo,
    Tx_fifo_rd_d,
    \Addr_Counters[1].FDRE_I ,
    Data_Exists_DFF_2,
    Tx_fifo_wr_d,
    detect_start,
    Data_Exists_DFF_3,
    dynamic_MSMS,
    Tx_data_exists,
    firstDynStartSeen,
    \Addr_Counters[1].FDRE_I_0 ,
    \q_int_reg[0] ,
    \q_int_reg[0]_0 ,
    \bus2ip_addr_i_reg[6] ,
    Rc_addr,
    Tx_fifo_data,
    Rc_fifo_wr_d,
    Rc_fifo_rd_d,
    \Addr_Counters[1].FDRE_I_1 ,
    Rc_Data_Exists,
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ,
    al_i_reg);
  output [0:7]IIC2Bus_IntrEvent;
  output [5:0]Q;
  output [0:0]D;
  output Tx_fifo_wr;
  output Tx_fifo_rd;
  output Tx_fifo_rst;
  output new_rcv_dta_d1;
  output Rc_fifo_wr;
  output Rc_fifo_rd;
  output [2:0]dtre_d1_reg;
  output [0:0]gpo;
  output Msms_set;
  output \FSM_sequential_scl_state_reg[0] ;
  output \FSM_onehot_state_reg[4] ;
  output addr_match;
  output D_0;
  output Data_Exists_DFF;
  output [0:0]SR;
  output detect_stop_b_reg;
  output firstDynStartSeen_reg;
  output D_1;
  output Data_Exists_DFF_0;
  output \cr_i_reg[5]_0 ;
  output [2:0]S;
  output [7:0]\FSM_sequential_scl_state_reg[0]_0 ;
  output [2:0]\FSM_sequential_scl_state_reg[0]_1 ;
  output [7:0]\FSM_sequential_scl_state_reg[0]_2 ;
  output [2:0]\FSM_sequential_scl_state_reg[0]_3 ;
  output [3:0]\s_axi_rdata_i_reg[7] ;
  output [2:0]\FSM_sequential_scl_state_reg[3] ;
  output [3:0]\FSM_sequential_scl_state_reg[3]_0 ;
  output [2:0]\FSM_sequential_scl_state_reg[0]_4 ;
  output [2:0]\s_axi_rdata_i_reg[7]_0 ;
  output [2:0]\FSM_sequential_scl_state_reg[2] ;
  output [0:0]\FSM_sequential_scl_state_reg[2]_0 ;
  output [2:0]\FSM_sequential_scl_state_reg[1] ;
  output [2:0]sda_setup_reg;
  output [6:0]sda_setup_reg_0;
  output \s_axi_rdata_i_reg[0] ;
  output \s_axi_rdata_i_reg[5] ;
  output \s_axi_rdata_i_reg[8] ;
  output \s_axi_rdata_i_reg[7]_1 ;
  output \s_axi_rdata_i_reg[6] ;
  output \s_axi_rdata_i_reg[5]_0 ;
  output \s_axi_rdata_i_reg[4] ;
  output \s_axi_rdata_i_reg[3] ;
  output [3:0]\RD_FIFO_CNTRL.ro_prev_i_reg_0 ;
  output \s_axi_rdata_i_reg[3]_0 ;
  output \s_axi_rdata_i_reg[3]_1 ;
  output \s_axi_rdata_i_reg[2] ;
  output \s_axi_rdata_i_reg[2]_0 ;
  output \s_axi_rdata_i_reg[2]_1 ;
  output \s_axi_rdata_i_reg[1] ;
  output \s_axi_rdata_i_reg[1]_0 ;
  output \s_axi_rdata_i_reg[1]_1 ;
  output \s_axi_rdata_i_reg[0]_0 ;
  output \s_axi_rdata_i_reg[0]_1 ;
  output \Addr_Counters[0].FDRE_I ;
  output D_2;
  output \Addr_Counters[0].FDRE_I_0 ;
  output \Addr_Counters[0].FDRE_I_1 ;
  input Bus2IIC_Reset;
  input \Addr_Counters[3].FDRE_I ;
  input s_axi_aclk;
  input p_6_out;
  input [11:0]Bus2IIC_WrCE;
  input rdy_new_xmt_i;
  input New_rcv_dta;
  input new_rcv_dta_i_reg;
  input [0:0]Bus2IIC_RdCE;
  input Data_Exists_DFF_1;
  input Aas;
  input \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] ;
  input [0:0]\timing_param_thdsta_i_reg[8]_0 ;
  input [0:0]out;
  input master_slave;
  input [7:0]\data_int_reg[7] ;
  input [8:0]s_axi_wdata;
  input \FSM_sequential_scl_state_reg[3]_1 ;
  input \FSM_sequential_scl_state_reg[1]_0 ;
  input rdCntrFrmTxFifo;
  input Tx_fifo_rd_d;
  input \Addr_Counters[1].FDRE_I ;
  input Data_Exists_DFF_2;
  input Tx_fifo_wr_d;
  input detect_start;
  input [5:0]Data_Exists_DFF_3;
  input [0:0]dynamic_MSMS;
  input Tx_data_exists;
  input firstDynStartSeen;
  input \Addr_Counters[1].FDRE_I_0 ;
  input [8:0]\q_int_reg[0] ;
  input [8:0]\q_int_reg[0]_0 ;
  input [4:0]\bus2ip_addr_i_reg[6] ;
  input [0:3]Rc_addr;
  input [3:0]Tx_fifo_data;
  input Rc_fifo_wr_d;
  input Rc_fifo_rd_d;
  input \Addr_Counters[1].FDRE_I_1 ;
  input Rc_Data_Exists;
  input [1:0]\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;
  input [4:0]al_i_reg;

  wire Aas;
  wire \Addr_Counters[0].FDRE_I ;
  wire \Addr_Counters[0].FDRE_I_0 ;
  wire \Addr_Counters[0].FDRE_I_1 ;
  wire \Addr_Counters[1].FDRE_I ;
  wire \Addr_Counters[1].FDRE_I_0 ;
  wire \Addr_Counters[1].FDRE_I_1 ;
  wire \Addr_Counters[3].FDRE_I ;
  wire [0:0]Bus2IIC_RdCE;
  wire Bus2IIC_Reset;
  wire [11:0]Bus2IIC_WrCE;
  wire [0:6]Cr;
  wire [0:0]D;
  wire D_0;
  wire D_1;
  wire D_2;
  wire Data_Exists_DFF;
  wire Data_Exists_DFF_0;
  wire Data_Exists_DFF_1;
  wire Data_Exists_DFF_2;
  wire [5:0]Data_Exists_DFF_3;
  wire \FSM_onehot_state_reg[4] ;
  wire \FSM_sequential_scl_state_reg[0] ;
  wire [7:0]\FSM_sequential_scl_state_reg[0]_0 ;
  wire [2:0]\FSM_sequential_scl_state_reg[0]_1 ;
  wire [7:0]\FSM_sequential_scl_state_reg[0]_2 ;
  wire [2:0]\FSM_sequential_scl_state_reg[0]_3 ;
  wire [2:0]\FSM_sequential_scl_state_reg[0]_4 ;
  wire [2:0]\FSM_sequential_scl_state_reg[1] ;
  wire \FSM_sequential_scl_state_reg[1]_0 ;
  wire [2:0]\FSM_sequential_scl_state_reg[2] ;
  wire [0:0]\FSM_sequential_scl_state_reg[2]_0 ;
  wire [2:0]\FSM_sequential_scl_state_reg[3] ;
  wire [3:0]\FSM_sequential_scl_state_reg[3]_0 ;
  wire \FSM_sequential_scl_state_reg[3]_1 ;
  wire [1:0]\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;
  wire \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] ;
  wire [0:7]IIC2Bus_IntrEvent;
  wire Msms_set;
  wire New_rcv_dta;
  wire [5:0]Q;
  wire [3:0]\RD_FIFO_CNTRL.ro_prev_i_reg_0 ;
  wire Rc_Data_Exists;
  wire [0:3]Rc_addr;
  wire Rc_fifo_rd;
  wire Rc_fifo_rd_d;
  wire Rc_fifo_wr;
  wire Rc_fifo_wr_d;
  wire [2:0]S;
  wire [0:0]SR;
  wire Tx_data_exists;
  wire [3:0]Tx_fifo_data;
  wire Tx_fifo_rd;
  wire Tx_fifo_rd_d;
  wire Tx_fifo_rst;
  wire Tx_fifo_wr;
  wire Tx_fifo_wr_d;
  wire addr_match;
  wire [7:1]adr_i;
  wire [4:0]al_i_reg;
  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire \cr_i[2]_i_1_n_0 ;
  wire \cr_i[2]_i_2_n_0 ;
  wire \cr_i_reg[5]_0 ;
  wire [7:0]\data_int_reg[7] ;
  wire detect_start;
  wire detect_stop_b_reg;
  wire [2:0]dtre_d1_reg;
  wire [0:0]dynamic_MSMS;
  wire firstDynStartSeen;
  wire firstDynStartSeen_i_2_n_0;
  wire firstDynStartSeen_reg;
  wire [0:0]gpo;
  wire master_slave;
  wire msms_d1;
  wire msms_set_i_i_1_n_0;
  wire new_rcv_dta_d1;
  wire new_rcv_dta_i_reg;
  wire [0:0]out;
  wire p_6_out;
  wire [8:0]\q_int_reg[0] ;
  wire [8:0]\q_int_reg[0]_0 ;
  wire rdCntrFrmTxFifo;
  wire rdy_new_xmt_i;
  wire s_axi_aclk;
  wire \s_axi_rdata_i[1]_i_8_n_0 ;
  wire \s_axi_rdata_i[2]_i_8_n_0 ;
  wire \s_axi_rdata_i[3]_i_9_n_0 ;
  wire \s_axi_rdata_i[4]_i_8_n_0 ;
  wire \s_axi_rdata_i[5]_i_8_n_0 ;
  wire \s_axi_rdata_i[6]_i_8_n_0 ;
  wire \s_axi_rdata_i[7]_i_9_n_0 ;
  wire \s_axi_rdata_i[8]_i_6_n_0 ;
  wire \s_axi_rdata_i[8]_i_7_n_0 ;
  wire \s_axi_rdata_i_reg[0] ;
  wire \s_axi_rdata_i_reg[0]_0 ;
  wire \s_axi_rdata_i_reg[0]_1 ;
  wire \s_axi_rdata_i_reg[1] ;
  wire \s_axi_rdata_i_reg[1]_0 ;
  wire \s_axi_rdata_i_reg[1]_1 ;
  wire \s_axi_rdata_i_reg[2] ;
  wire \s_axi_rdata_i_reg[2]_0 ;
  wire \s_axi_rdata_i_reg[2]_1 ;
  wire \s_axi_rdata_i_reg[3] ;
  wire \s_axi_rdata_i_reg[3]_0 ;
  wire \s_axi_rdata_i_reg[3]_1 ;
  wire \s_axi_rdata_i_reg[4] ;
  wire \s_axi_rdata_i_reg[5] ;
  wire \s_axi_rdata_i_reg[5]_0 ;
  wire \s_axi_rdata_i_reg[6] ;
  wire [3:0]\s_axi_rdata_i_reg[7] ;
  wire [2:0]\s_axi_rdata_i_reg[7]_0 ;
  wire \s_axi_rdata_i_reg[7]_1 ;
  wire \s_axi_rdata_i_reg[8] ;
  wire [8:0]s_axi_wdata;
  wire [2:0]sda_setup_reg;
  wire [6:0]sda_setup_reg_0;
  wire slave_sda_i_3_n_0;
  wire slave_sda_i_4_n_0;
  wire [2:7]sr_i;
  wire [8:0]timing_param_tbuf_i;
  wire [8:0]timing_param_thddat_i;
  wire [8:1]timing_param_thdsta_i;
  wire [0:0]\timing_param_thdsta_i_reg[8]_0 ;
  wire [8:8]timing_param_thigh_i;
  wire [8:0]timing_param_tlow_i;
  wire [8:5]timing_param_tsudat_i;
  wire [8:0]timing_param_tsusta_i;
  wire [8:8]timing_param_tsusto_i;

  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Addr_Counters[0].MUXCY_L_I_i_4 
       (.I0(Tx_fifo_wr),
        .I1(Tx_fifo_wr_d),
        .O(\Addr_Counters[0].FDRE_I ));
  LUT2 #(
    .INIT(4'h2)) 
    \Addr_Counters[0].MUXCY_L_I_i_4__0 
       (.I0(Rc_fifo_rd),
        .I1(Rc_fifo_rd_d),
        .O(\Addr_Counters[0].FDRE_I_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Addr_Counters[0].MUXCY_L_I_i_5 
       (.I0(Rc_fifo_wr),
        .I1(Rc_fifo_wr_d),
        .O(\Addr_Counters[0].FDRE_I_0 ));
  LUT6 #(
    .INIT(64'hFFFFBABB0000AAAA)) 
    Data_Exists_DFF_i_1
       (.I0(Data_Exists_DFF),
        .I1(rdCntrFrmTxFifo),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(\Addr_Counters[1].FDRE_I ),
        .I5(Data_Exists_DFF_2),
        .O(D_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFF20022)) 
    Data_Exists_DFF_i_1__0
       (.I0(Tx_fifo_wr),
        .I1(Tx_fifo_wr_d),
        .I2(Data_Exists_DFF_0),
        .I3(\Addr_Counters[1].FDRE_I_0 ),
        .I4(Tx_data_exists),
        .O(D_1));
  LUT6 #(
    .INIT(64'hFFFFF2FF00002222)) 
    Data_Exists_DFF_i_1__1
       (.I0(Rc_fifo_wr),
        .I1(Rc_fifo_wr_d),
        .I2(Rc_fifo_rd_d),
        .I3(Rc_fifo_rd),
        .I4(\Addr_Counters[1].FDRE_I_1 ),
        .I5(Rc_Data_Exists),
        .O(D_2));
  LUT4 #(
    .INIT(16'hFFF4)) 
    Data_Exists_DFF_i_2
       (.I0(Tx_fifo_wr_d),
        .I1(Tx_fifo_wr),
        .I2(Bus2IIC_Reset),
        .I3(Tx_fifo_rst),
        .O(Data_Exists_DFF));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    Data_Exists_DFF_i_2__0
       (.I0(Tx_fifo_rd),
        .I1(Tx_fifo_rd_d),
        .I2(rdCntrFrmTxFifo),
        .O(Data_Exists_DFF_0));
  FDRE \FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Addr_Counters[3].FDRE_I ),
        .Q(IIC2Bus_IntrEvent[7]),
        .R(Bus2IIC_Reset));
  FDRE \FIFO_GEN_DTR.Tx_fifo_rd_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rdy_new_xmt_i),
        .Q(Tx_fifo_rd),
        .R(Bus2IIC_Reset));
  FDSE \FIFO_GEN_DTR.Tx_fifo_rst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Cr[6]),
        .Q(Tx_fifo_rst),
        .S(Bus2IIC_Reset));
  FDRE \FIFO_GEN_DTR.Tx_fifo_wr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus2IIC_WrCE[10]),
        .Q(Tx_fifo_wr),
        .R(Bus2IIC_Reset));
  LUT4 #(
    .INIT(16'hB888)) 
    \FSM_onehot_state[4]_i_4 
       (.I0(Q[2]),
        .I1(master_slave),
        .I2(\data_int_reg[7] [0]),
        .I3(addr_match),
        .O(\FSM_onehot_state_reg[4] ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_scl_state[0]_i_4 
       (.I0(\timing_param_thdsta_i_reg[8]_0 ),
        .I1(out),
        .O(\FSM_sequential_scl_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_scl_state[3]_i_1 
       (.I0(Q[0]),
        .O(SR));
  FDRE \GPO_GEN.gpo_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] ),
        .Q(gpo),
        .R(Bus2IIC_Reset));
  FDRE \IIC2Bus_IntrEvent_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(al_i_reg[4]),
        .Q(IIC2Bus_IntrEvent[0]),
        .R(Bus2IIC_Reset));
  FDRE \IIC2Bus_IntrEvent_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(al_i_reg[3]),
        .Q(IIC2Bus_IntrEvent[1]),
        .R(Bus2IIC_Reset));
  FDRE \IIC2Bus_IntrEvent_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(al_i_reg[2]),
        .Q(IIC2Bus_IntrEvent[2]),
        .R(Bus2IIC_Reset));
  FDRE \IIC2Bus_IntrEvent_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(IIC2Bus_IntrEvent[3]),
        .R(Bus2IIC_Reset));
  FDRE \IIC2Bus_IntrEvent_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(al_i_reg[1]),
        .Q(IIC2Bus_IntrEvent[4]),
        .R(Bus2IIC_Reset));
  FDRE \IIC2Bus_IntrEvent_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Aas),
        .Q(IIC2Bus_IntrEvent[5]),
        .R(Bus2IIC_Reset));
  FDRE \IIC2Bus_IntrEvent_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(al_i_reg[0]),
        .Q(IIC2Bus_IntrEvent[6]),
        .R(Bus2IIC_Reset));
  FDRE \RD_FIFO_CNTRL.Rc_fifo_rd_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus2IIC_RdCE),
        .Q(Rc_fifo_rd),
        .R(Bus2IIC_Reset));
  FDRE \RD_FIFO_CNTRL.Rc_fifo_wr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(new_rcv_dta_i_reg),
        .Q(Rc_fifo_wr),
        .R(Bus2IIC_Reset));
  FDRE \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[8]),
        .D(s_axi_wdata[3]),
        .Q(\RD_FIFO_CNTRL.ro_prev_i_reg_0 [3]),
        .R(Bus2IIC_Reset));
  FDRE \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[8]),
        .D(s_axi_wdata[2]),
        .Q(\RD_FIFO_CNTRL.ro_prev_i_reg_0 [2]),
        .R(Bus2IIC_Reset));
  FDRE \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[8]),
        .D(s_axi_wdata[1]),
        .Q(\RD_FIFO_CNTRL.ro_prev_i_reg_0 [1]),
        .R(Bus2IIC_Reset));
  FDRE \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[8]),
        .D(s_axi_wdata[0]),
        .Q(\RD_FIFO_CNTRL.ro_prev_i_reg_0 [0]),
        .R(Bus2IIC_Reset));
  FDRE \RD_FIFO_CNTRL.ro_prev_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_6_out),
        .Q(D),
        .R(1'b0));
  FDRE \adr_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[9]),
        .D(s_axi_wdata[7]),
        .Q(adr_i[7]),
        .R(Bus2IIC_Reset));
  FDRE \adr_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[9]),
        .D(s_axi_wdata[6]),
        .Q(adr_i[6]),
        .R(Bus2IIC_Reset));
  FDRE \adr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[9]),
        .D(s_axi_wdata[5]),
        .Q(adr_i[5]),
        .R(Bus2IIC_Reset));
  FDRE \adr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[9]),
        .D(s_axi_wdata[4]),
        .Q(adr_i[4]),
        .R(Bus2IIC_Reset));
  FDRE \adr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[9]),
        .D(s_axi_wdata[3]),
        .Q(adr_i[3]),
        .R(Bus2IIC_Reset));
  FDRE \adr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[9]),
        .D(s_axi_wdata[2]),
        .Q(adr_i[2]),
        .R(Bus2IIC_Reset));
  FDRE \adr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[9]),
        .D(s_axi_wdata[1]),
        .Q(adr_i[1]),
        .R(Bus2IIC_Reset));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    clk_cnt_en1_carry_i_1
       (.I0(timing_param_thigh_i),
        .I1(\q_int_reg[0] [8]),
        .I2(\q_int_reg[0] [7]),
        .I3(\FSM_sequential_scl_state_reg[0]_0 [7]),
        .I4(\q_int_reg[0] [6]),
        .I5(\FSM_sequential_scl_state_reg[0]_0 [6]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    clk_cnt_en1_carry_i_2
       (.I0(\FSM_sequential_scl_state_reg[0]_0 [5]),
        .I1(\q_int_reg[0] [5]),
        .I2(\q_int_reg[0] [3]),
        .I3(\FSM_sequential_scl_state_reg[0]_0 [3]),
        .I4(\q_int_reg[0] [4]),
        .I5(\FSM_sequential_scl_state_reg[0]_0 [4]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    clk_cnt_en1_carry_i_3
       (.I0(\FSM_sequential_scl_state_reg[0]_0 [2]),
        .I1(\q_int_reg[0] [2]),
        .I2(\q_int_reg[0] [0]),
        .I3(\FSM_sequential_scl_state_reg[0]_0 [0]),
        .I4(\q_int_reg[0] [1]),
        .I5(\FSM_sequential_scl_state_reg[0]_0 [1]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    clk_cnt_en2_carry_i_1
       (.I0(timing_param_thddat_i[8]),
        .I1(\q_int_reg[0] [8]),
        .I2(\q_int_reg[0] [7]),
        .I3(\s_axi_rdata_i_reg[7]_0 [2]),
        .I4(\q_int_reg[0] [6]),
        .I5(\s_axi_rdata_i_reg[7]_0 [1]),
        .O(\FSM_sequential_scl_state_reg[0]_4 [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    clk_cnt_en2_carry_i_2
       (.I0(timing_param_thddat_i[5]),
        .I1(\q_int_reg[0] [5]),
        .I2(\q_int_reg[0] [3]),
        .I3(timing_param_thddat_i[3]),
        .I4(\q_int_reg[0] [4]),
        .I5(\s_axi_rdata_i_reg[7]_0 [0]),
        .O(\FSM_sequential_scl_state_reg[0]_4 [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    clk_cnt_en2_carry_i_3
       (.I0(timing_param_thddat_i[2]),
        .I1(\q_int_reg[0] [2]),
        .I2(\q_int_reg[0] [1]),
        .I3(timing_param_thddat_i[1]),
        .I4(\q_int_reg[0] [0]),
        .I5(timing_param_thddat_i[0]),
        .O(\FSM_sequential_scl_state_reg[0]_4 [0]));
  LUT6 #(
    .INIT(64'hB888B8B8B8B8B8B8)) 
    \cr_i[2]_i_1 
       (.I0(s_axi_wdata[5]),
        .I1(Bus2IIC_WrCE[11]),
        .I2(\cr_i[2]_i_2_n_0 ),
        .I3(\FSM_sequential_scl_state_reg[3]_1 ),
        .I4(Q[4]),
        .I5(\FSM_sequential_scl_state_reg[1]_0 ),
        .O(\cr_i[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAAAAAAAAAAAA)) 
    \cr_i[2]_i_2 
       (.I0(Q[4]),
        .I1(Tx_fifo_rd),
        .I2(Tx_fifo_rd_d),
        .I3(dynamic_MSMS),
        .I4(Tx_data_exists),
        .I5(firstDynStartSeen),
        .O(\cr_i[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \cr_i[5]_i_4 
       (.I0(Tx_fifo_rd_d),
        .I1(Tx_fifo_rd),
        .O(\cr_i_reg[5]_0 ));
  FDRE \cr_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[11]),
        .D(s_axi_wdata[7]),
        .Q(Cr[0]),
        .R(Bus2IIC_Reset));
  FDRE \cr_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[11]),
        .D(s_axi_wdata[6]),
        .Q(Q[5]),
        .R(Bus2IIC_Reset));
  FDRE \cr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cr_i[2]_i_1_n_0 ),
        .Q(Q[4]),
        .R(Bus2IIC_Reset));
  FDRE \cr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[11]),
        .D(s_axi_wdata[4]),
        .Q(Q[3]),
        .R(Bus2IIC_Reset));
  FDRE \cr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] [1]),
        .Q(Q[2]),
        .R(Bus2IIC_Reset));
  FDRE \cr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] [0]),
        .Q(Q[1]),
        .R(Bus2IIC_Reset));
  FDRE \cr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[11]),
        .D(s_axi_wdata[1]),
        .Q(Cr[6]),
        .R(Bus2IIC_Reset));
  FDRE \cr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[11]),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .R(Bus2IIC_Reset));
  LUT2 #(
    .INIT(4'h2)) 
    detect_stop_b_i_4
       (.I0(Q[0]),
        .I1(detect_start),
        .O(detect_stop_b_reg));
  LUT4 #(
    .INIT(16'h00B0)) 
    firstDynStartSeen_i_1
       (.I0(firstDynStartSeen),
        .I1(firstDynStartSeen_i_2_n_0),
        .I2(Q[1]),
        .I3(Tx_fifo_rst),
        .O(firstDynStartSeen_reg));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    firstDynStartSeen_i_2
       (.I0(Tx_fifo_rd),
        .I1(Tx_fifo_rd_d),
        .I2(dynamic_MSMS),
        .I3(Tx_data_exists),
        .O(firstDynStartSeen_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(\FSM_sequential_scl_state_reg[0]_2 [7]),
        .I1(\q_int_reg[0] [7]),
        .I2(\q_int_reg[0] [8]),
        .I3(timing_param_tsusto_i),
        .I4(\q_int_reg[0] [6]),
        .I5(\FSM_sequential_scl_state_reg[0]_2 [6]),
        .O(\FSM_sequential_scl_state_reg[0]_1 [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__0
       (.I0(timing_param_tsusta_i[8]),
        .I1(\q_int_reg[0] [8]),
        .I2(\q_int_reg[0] [6]),
        .I3(\s_axi_rdata_i_reg[7] [2]),
        .I4(\q_int_reg[0] [7]),
        .I5(\s_axi_rdata_i_reg[7] [3]),
        .O(\FSM_sequential_scl_state_reg[0]_3 [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__1
       (.I0(\FSM_sequential_scl_state_reg[3]_0 [3]),
        .I1(\q_int_reg[0] [7]),
        .I2(\q_int_reg[0] [8]),
        .I3(timing_param_tbuf_i[8]),
        .I4(\q_int_reg[0] [6]),
        .I5(\FSM_sequential_scl_state_reg[3]_0 [2]),
        .O(\FSM_sequential_scl_state_reg[3] [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__2
       (.I0(timing_param_thdsta_i[8]),
        .I1(\q_int_reg[0] [8]),
        .I2(\q_int_reg[0] [6]),
        .I3(timing_param_thdsta_i[6]),
        .I4(\q_int_reg[0] [7]),
        .I5(timing_param_thdsta_i[7]),
        .O(\FSM_sequential_scl_state_reg[2] [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__3
       (.I0(timing_param_tlow_i[7]),
        .I1(\q_int_reg[0] [7]),
        .I2(\q_int_reg[0] [8]),
        .I3(timing_param_tlow_i[8]),
        .I4(\q_int_reg[0] [6]),
        .I5(timing_param_tlow_i[6]),
        .O(\FSM_sequential_scl_state_reg[1] [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__4
       (.I0(timing_param_tsudat_i[8]),
        .I1(\q_int_reg[0]_0 [8]),
        .I2(\q_int_reg[0]_0 [6]),
        .I3(sda_setup_reg_0[5]),
        .I4(\q_int_reg[0]_0 [7]),
        .I5(sda_setup_reg_0[6]),
        .O(sda_setup_reg[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(\FSM_sequential_scl_state_reg[0]_2 [5]),
        .I1(\q_int_reg[0] [5]),
        .I2(\q_int_reg[0] [3]),
        .I3(\FSM_sequential_scl_state_reg[0]_2 [3]),
        .I4(\q_int_reg[0] [4]),
        .I5(\FSM_sequential_scl_state_reg[0]_2 [4]),
        .O(\FSM_sequential_scl_state_reg[0]_1 [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__0
       (.I0(\s_axi_rdata_i_reg[7] [1]),
        .I1(\q_int_reg[0] [5]),
        .I2(\q_int_reg[0] [3]),
        .I3(timing_param_tsusta_i[3]),
        .I4(\q_int_reg[0] [4]),
        .I5(\s_axi_rdata_i_reg[7] [0]),
        .O(\FSM_sequential_scl_state_reg[0]_3 [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__1
       (.I0(\FSM_sequential_scl_state_reg[3]_0 [1]),
        .I1(\q_int_reg[0] [5]),
        .I2(\q_int_reg[0] [4]),
        .I3(\FSM_sequential_scl_state_reg[3]_0 [0]),
        .I4(\q_int_reg[0] [3]),
        .I5(timing_param_tbuf_i[3]),
        .O(\FSM_sequential_scl_state_reg[3] [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__2
       (.I0(timing_param_thdsta_i[5]),
        .I1(\q_int_reg[0] [5]),
        .I2(\q_int_reg[0] [3]),
        .I3(timing_param_thdsta_i[3]),
        .I4(\q_int_reg[0] [4]),
        .I5(timing_param_thdsta_i[4]),
        .O(\FSM_sequential_scl_state_reg[2] [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__3
       (.I0(timing_param_tlow_i[4]),
        .I1(\q_int_reg[0] [4]),
        .I2(\q_int_reg[0] [5]),
        .I3(timing_param_tlow_i[5]),
        .I4(\q_int_reg[0] [3]),
        .I5(timing_param_tlow_i[3]),
        .O(\FSM_sequential_scl_state_reg[1] [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__4
       (.I0(timing_param_tsudat_i[5]),
        .I1(\q_int_reg[0]_0 [5]),
        .I2(\q_int_reg[0]_0 [3]),
        .I3(sda_setup_reg_0[3]),
        .I4(\q_int_reg[0]_0 [4]),
        .I5(sda_setup_reg_0[4]),
        .O(sda_setup_reg[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(\FSM_sequential_scl_state_reg[0]_2 [2]),
        .I1(\q_int_reg[0] [2]),
        .I2(\q_int_reg[0] [1]),
        .I3(\FSM_sequential_scl_state_reg[0]_2 [1]),
        .I4(\q_int_reg[0] [0]),
        .I5(\FSM_sequential_scl_state_reg[0]_2 [0]),
        .O(\FSM_sequential_scl_state_reg[0]_1 [0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__0
       (.I0(timing_param_tsusta_i[2]),
        .I1(\q_int_reg[0] [2]),
        .I2(\q_int_reg[0] [1]),
        .I3(timing_param_tsusta_i[1]),
        .I4(\q_int_reg[0] [0]),
        .I5(timing_param_tsusta_i[0]),
        .O(\FSM_sequential_scl_state_reg[0]_3 [0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__1
       (.I0(timing_param_tbuf_i[2]),
        .I1(\q_int_reg[0] [2]),
        .I2(\q_int_reg[0] [0]),
        .I3(timing_param_tbuf_i[0]),
        .I4(\q_int_reg[0] [1]),
        .I5(timing_param_tbuf_i[1]),
        .O(\FSM_sequential_scl_state_reg[3] [0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__2
       (.I0(timing_param_thdsta_i[1]),
        .I1(\q_int_reg[0] [1]),
        .I2(\q_int_reg[0] [2]),
        .I3(timing_param_thdsta_i[2]),
        .I4(\q_int_reg[0] [0]),
        .I5(\FSM_sequential_scl_state_reg[2]_0 ),
        .O(\FSM_sequential_scl_state_reg[2] [0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__3
       (.I0(timing_param_tlow_i[1]),
        .I1(\q_int_reg[0] [1]),
        .I2(\q_int_reg[0] [2]),
        .I3(timing_param_tlow_i[2]),
        .I4(\q_int_reg[0] [0]),
        .I5(timing_param_tlow_i[0]),
        .O(\FSM_sequential_scl_state_reg[1] [0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__4
       (.I0(sda_setup_reg_0[2]),
        .I1(\q_int_reg[0]_0 [2]),
        .I2(\q_int_reg[0]_0 [1]),
        .I3(sda_setup_reg_0[1]),
        .I4(\q_int_reg[0]_0 [0]),
        .I5(sda_setup_reg_0[0]),
        .O(sda_setup_reg[0]));
  FDRE msms_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(msms_d1),
        .R(Bus2IIC_Reset));
  LUT5 #(
    .INIT(32'hCE0C0A00)) 
    msms_set_i_i_1
       (.I0(D),
        .I1(Data_Exists_DFF_3[1]),
        .I2(Q[1]),
        .I3(msms_d1),
        .I4(Msms_set),
        .O(msms_set_i_i_1_n_0));
  FDRE msms_set_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(msms_set_i_i_1_n_0),
        .Q(Msms_set),
        .R(Bus2IIC_Reset));
  FDRE new_rcv_dta_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(New_rcv_dta),
        .Q(new_rcv_dta_d1),
        .R(Bus2IIC_Reset));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata_i[0]_i_6 
       (.I0(\RD_FIFO_CNTRL.ro_prev_i_reg_0 [0]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(timing_param_tlow_i[0]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(Q[0]),
        .O(\s_axi_rdata_i_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[0]_i_8 
       (.I0(timing_param_tbuf_i[0]),
        .I1(Rc_addr[0]),
        .I2(\bus2ip_addr_i_reg[6] [2]),
        .I3(timing_param_tsusta_i[0]),
        .I4(\bus2ip_addr_i_reg[6] [3]),
        .I5(Tx_fifo_data[0]),
        .O(\s_axi_rdata_i_reg[0]_1 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \s_axi_rdata_i[0]_i_9 
       (.I0(gpo),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(timing_param_thddat_i[0]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(sr_i[7]),
        .O(\s_axi_rdata_i_reg[0] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[1]_i_4 
       (.I0(timing_param_tbuf_i[1]),
        .I1(Rc_addr[1]),
        .I2(\bus2ip_addr_i_reg[6] [2]),
        .I3(timing_param_tsusta_i[1]),
        .I4(\bus2ip_addr_i_reg[6] [3]),
        .I5(Tx_fifo_data[1]),
        .O(\s_axi_rdata_i_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s_axi_rdata_i[1]_i_5 
       (.I0(adr_i[1]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(timing_param_thdsta_i[1]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .I5(\s_axi_rdata_i[1]_i_8_n_0 ),
        .O(\s_axi_rdata_i_reg[1] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata_i[1]_i_8 
       (.I0(\RD_FIFO_CNTRL.ro_prev_i_reg_0 [1]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(timing_param_tlow_i[1]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(Cr[6]),
        .O(\s_axi_rdata_i[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_rdata_i[1]_i_9 
       (.I0(IIC2Bus_IntrEvent[5]),
        .I1(\bus2ip_addr_i_reg[6] [4]),
        .I2(timing_param_thddat_i[1]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .O(\s_axi_rdata_i_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[2]_i_4 
       (.I0(timing_param_tbuf_i[2]),
        .I1(Rc_addr[2]),
        .I2(\bus2ip_addr_i_reg[6] [2]),
        .I3(timing_param_tsusta_i[2]),
        .I4(\bus2ip_addr_i_reg[6] [3]),
        .I5(Tx_fifo_data[2]),
        .O(\s_axi_rdata_i_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s_axi_rdata_i[2]_i_5 
       (.I0(adr_i[2]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(timing_param_thdsta_i[2]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .I5(\s_axi_rdata_i[2]_i_8_n_0 ),
        .O(\s_axi_rdata_i_reg[2] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata_i[2]_i_8 
       (.I0(\RD_FIFO_CNTRL.ro_prev_i_reg_0 [2]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(timing_param_tlow_i[2]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(Q[1]),
        .O(\s_axi_rdata_i[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_rdata_i[2]_i_9 
       (.I0(sr_i[5]),
        .I1(\bus2ip_addr_i_reg[6] [4]),
        .I2(timing_param_thddat_i[2]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .O(\s_axi_rdata_i_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_rdata_i[3]_i_10 
       (.I0(sr_i[4]),
        .I1(\bus2ip_addr_i_reg[6] [4]),
        .I2(timing_param_thddat_i[3]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .O(\s_axi_rdata_i_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[3]_i_4 
       (.I0(timing_param_tbuf_i[3]),
        .I1(Rc_addr[3]),
        .I2(\bus2ip_addr_i_reg[6] [2]),
        .I3(timing_param_tsusta_i[3]),
        .I4(\bus2ip_addr_i_reg[6] [3]),
        .I5(Tx_fifo_data[3]),
        .O(\s_axi_rdata_i_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s_axi_rdata_i[3]_i_5 
       (.I0(adr_i[3]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(timing_param_thdsta_i[3]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .I5(\s_axi_rdata_i[3]_i_9_n_0 ),
        .O(\s_axi_rdata_i_reg[3] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata_i[3]_i_9 
       (.I0(\RD_FIFO_CNTRL.ro_prev_i_reg_0 [3]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(timing_param_tlow_i[3]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(Q[2]),
        .O(\s_axi_rdata_i[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s_axi_rdata_i[4]_i_4 
       (.I0(adr_i[4]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(timing_param_thdsta_i[4]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .I5(\s_axi_rdata_i[4]_i_8_n_0 ),
        .O(\s_axi_rdata_i_reg[4] ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_rdata_i[4]_i_8 
       (.I0(Q[3]),
        .I1(\bus2ip_addr_i_reg[6] [4]),
        .I2(timing_param_tlow_i[4]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .O(\s_axi_rdata_i[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s_axi_rdata_i[5]_i_4 
       (.I0(adr_i[5]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(timing_param_thdsta_i[5]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .I5(\s_axi_rdata_i[5]_i_8_n_0 ),
        .O(\s_axi_rdata_i_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h0088008833300030)) 
    \s_axi_rdata_i[5]_i_5 
       (.I0(timing_param_tsudat_i[5]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(sr_i[2]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(timing_param_thddat_i[5]),
        .I5(\bus2ip_addr_i_reg[6] [3]),
        .O(\s_axi_rdata_i_reg[5] ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_rdata_i[5]_i_8 
       (.I0(Q[4]),
        .I1(\bus2ip_addr_i_reg[6] [4]),
        .I2(timing_param_tlow_i[5]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .O(\s_axi_rdata_i[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s_axi_rdata_i[6]_i_4 
       (.I0(adr_i[6]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(timing_param_thdsta_i[6]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .I5(\s_axi_rdata_i[6]_i_8_n_0 ),
        .O(\s_axi_rdata_i_reg[6] ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_rdata_i[6]_i_8 
       (.I0(Q[5]),
        .I1(\bus2ip_addr_i_reg[6] [4]),
        .I2(timing_param_tlow_i[6]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .O(\s_axi_rdata_i[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s_axi_rdata_i[7]_i_5 
       (.I0(adr_i[7]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(timing_param_thdsta_i[7]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .I5(\s_axi_rdata_i[7]_i_9_n_0 ),
        .O(\s_axi_rdata_i_reg[7]_1 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_rdata_i[7]_i_9 
       (.I0(Cr[0]),
        .I1(\bus2ip_addr_i_reg[6] [4]),
        .I2(timing_param_tlow_i[7]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .O(\s_axi_rdata_i[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[8]_i_6 
       (.I0(timing_param_tbuf_i[8]),
        .I1(timing_param_tsusta_i[8]),
        .I2(\bus2ip_addr_i_reg[6] [1]),
        .I3(timing_param_thdsta_i[8]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .I5(timing_param_tlow_i[8]),
        .O(\s_axi_rdata_i[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[8]_i_7 
       (.I0(timing_param_thigh_i),
        .I1(timing_param_tsusto_i),
        .I2(\bus2ip_addr_i_reg[6] [1]),
        .I3(timing_param_tsudat_i[8]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .I5(timing_param_thddat_i[8]),
        .O(\s_axi_rdata_i[8]_i_7_n_0 ));
  MUXF7 \s_axi_rdata_i_reg[8]_i_3 
       (.I0(\s_axi_rdata_i[8]_i_6_n_0 ),
        .I1(\s_axi_rdata_i[8]_i_7_n_0 ),
        .O(\s_axi_rdata_i_reg[8] ),
        .S(\bus2ip_addr_i_reg[6] [0]));
  LUT5 #(
    .INIT(32'hAAAAAAEB)) 
    slave_sda_i_2
       (.I0(Data_Exists_DFF_3[0]),
        .I1(\data_int_reg[7] [7]),
        .I2(adr_i[7]),
        .I3(slave_sda_i_3_n_0),
        .I4(slave_sda_i_4_n_0),
        .O(addr_match));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    slave_sda_i_3
       (.I0(adr_i[4]),
        .I1(\data_int_reg[7] [4]),
        .I2(\data_int_reg[7] [5]),
        .I3(adr_i[5]),
        .I4(\data_int_reg[7] [6]),
        .I5(adr_i[6]),
        .O(slave_sda_i_3_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    slave_sda_i_4
       (.I0(adr_i[1]),
        .I1(\data_int_reg[7] [1]),
        .I2(\data_int_reg[7] [2]),
        .I3(adr_i[2]),
        .I4(\data_int_reg[7] [3]),
        .I5(adr_i[3]),
        .O(slave_sda_i_4_n_0));
  FDRE \sr_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Data_Exists_DFF_1),
        .Q(dtre_d1_reg[2]),
        .R(Bus2IIC_Reset));
  FDRE \sr_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Data_Exists_DFF_3[5]),
        .Q(dtre_d1_reg[1]),
        .R(Bus2IIC_Reset));
  FDRE \sr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Data_Exists_DFF_3[4]),
        .Q(sr_i[2]),
        .R(Bus2IIC_Reset));
  FDRE \sr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Data_Exists_DFF_3[3]),
        .Q(dtre_d1_reg[0]),
        .R(Bus2IIC_Reset));
  FDRE \sr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Data_Exists_DFF_3[2]),
        .Q(sr_i[4]),
        .R(Bus2IIC_Reset));
  FDRE \sr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Data_Exists_DFF_3[1]),
        .Q(sr_i[5]),
        .R(Bus2IIC_Reset));
  FDRE \sr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Data_Exists_DFF_3[0]),
        .Q(sr_i[7]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_tbuf_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[3]),
        .D(s_axi_wdata[0]),
        .Q(timing_param_tbuf_i[0]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_tbuf_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[3]),
        .D(s_axi_wdata[1]),
        .Q(timing_param_tbuf_i[1]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_tbuf_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[3]),
        .D(s_axi_wdata[2]),
        .Q(timing_param_tbuf_i[2]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_tbuf_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[3]),
        .D(s_axi_wdata[3]),
        .Q(timing_param_tbuf_i[3]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_tbuf_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[3]),
        .D(s_axi_wdata[4]),
        .Q(\FSM_sequential_scl_state_reg[3]_0 [0]),
        .R(Bus2IIC_Reset));
  FDSE \timing_param_tbuf_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[3]),
        .D(s_axi_wdata[5]),
        .Q(\FSM_sequential_scl_state_reg[3]_0 [1]),
        .S(Bus2IIC_Reset));
  FDRE \timing_param_tbuf_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[3]),
        .D(s_axi_wdata[6]),
        .Q(\FSM_sequential_scl_state_reg[3]_0 [2]),
        .R(Bus2IIC_Reset));
  FDSE \timing_param_tbuf_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[3]),
        .D(s_axi_wdata[7]),
        .Q(\FSM_sequential_scl_state_reg[3]_0 [3]),
        .S(Bus2IIC_Reset));
  FDRE \timing_param_tbuf_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[3]),
        .D(s_axi_wdata[8]),
        .Q(timing_param_tbuf_i[8]),
        .R(Bus2IIC_Reset));
  FDSE \timing_param_thddat_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[0]),
        .D(s_axi_wdata[0]),
        .Q(timing_param_thddat_i[0]),
        .S(Bus2IIC_Reset));
  FDRE \timing_param_thddat_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[0]),
        .D(s_axi_wdata[1]),
        .Q(timing_param_thddat_i[1]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_thddat_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[0]),
        .D(s_axi_wdata[2]),
        .Q(timing_param_thddat_i[2]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_thddat_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[0]),
        .D(s_axi_wdata[3]),
        .Q(timing_param_thddat_i[3]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_thddat_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[0]),
        .D(s_axi_wdata[4]),
        .Q(\s_axi_rdata_i_reg[7]_0 [0]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_thddat_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[0]),
        .D(s_axi_wdata[5]),
        .Q(timing_param_thddat_i[5]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_thddat_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[0]),
        .D(s_axi_wdata[6]),
        .Q(\s_axi_rdata_i_reg[7]_0 [1]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_thddat_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[0]),
        .D(s_axi_wdata[7]),
        .Q(\s_axi_rdata_i_reg[7]_0 [2]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_thddat_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[0]),
        .D(s_axi_wdata[8]),
        .Q(timing_param_thddat_i[8]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_thdsta_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[5]),
        .D(s_axi_wdata[0]),
        .Q(\FSM_sequential_scl_state_reg[2]_0 ),
        .R(Bus2IIC_Reset));
  FDSE \timing_param_thdsta_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[5]),
        .D(s_axi_wdata[1]),
        .Q(timing_param_thdsta_i[1]),
        .S(Bus2IIC_Reset));
  FDRE \timing_param_thdsta_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[5]),
        .D(s_axi_wdata[2]),
        .Q(timing_param_thdsta_i[2]),
        .R(Bus2IIC_Reset));
  FDSE \timing_param_thdsta_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[5]),
        .D(s_axi_wdata[3]),
        .Q(timing_param_thdsta_i[3]),
        .S(Bus2IIC_Reset));
  FDSE \timing_param_thdsta_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[5]),
        .D(s_axi_wdata[4]),
        .Q(timing_param_thdsta_i[4]),
        .S(Bus2IIC_Reset));
  FDRE \timing_param_thdsta_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[5]),
        .D(s_axi_wdata[5]),
        .Q(timing_param_thdsta_i[5]),
        .R(Bus2IIC_Reset));
  FDSE \timing_param_thdsta_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[5]),
        .D(s_axi_wdata[6]),
        .Q(timing_param_thdsta_i[6]),
        .S(Bus2IIC_Reset));
  FDRE \timing_param_thdsta_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[5]),
        .D(s_axi_wdata[7]),
        .Q(timing_param_thdsta_i[7]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_thdsta_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[5]),
        .D(s_axi_wdata[8]),
        .Q(timing_param_thdsta_i[8]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_thigh_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[2]),
        .D(s_axi_wdata[0]),
        .Q(\FSM_sequential_scl_state_reg[0]_0 [0]),
        .R(Bus2IIC_Reset));
  FDSE \timing_param_thigh_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[2]),
        .D(s_axi_wdata[1]),
        .Q(\FSM_sequential_scl_state_reg[0]_0 [1]),
        .S(Bus2IIC_Reset));
  FDSE \timing_param_thigh_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[2]),
        .D(s_axi_wdata[2]),
        .Q(\FSM_sequential_scl_state_reg[0]_0 [2]),
        .S(Bus2IIC_Reset));
  FDRE \timing_param_thigh_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[2]),
        .D(s_axi_wdata[3]),
        .Q(\FSM_sequential_scl_state_reg[0]_0 [3]),
        .R(Bus2IIC_Reset));
  FDSE \timing_param_thigh_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[2]),
        .D(s_axi_wdata[4]),
        .Q(\FSM_sequential_scl_state_reg[0]_0 [4]),
        .S(Bus2IIC_Reset));
  FDSE \timing_param_thigh_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[2]),
        .D(s_axi_wdata[5]),
        .Q(\FSM_sequential_scl_state_reg[0]_0 [5]),
        .S(Bus2IIC_Reset));
  FDSE \timing_param_thigh_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[2]),
        .D(s_axi_wdata[6]),
        .Q(\FSM_sequential_scl_state_reg[0]_0 [6]),
        .S(Bus2IIC_Reset));
  FDRE \timing_param_thigh_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[2]),
        .D(s_axi_wdata[7]),
        .Q(\FSM_sequential_scl_state_reg[0]_0 [7]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_thigh_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[2]),
        .D(s_axi_wdata[8]),
        .Q(timing_param_thigh_i),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_tlow_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[1]),
        .D(s_axi_wdata[0]),
        .Q(timing_param_tlow_i[0]),
        .R(Bus2IIC_Reset));
  FDSE \timing_param_tlow_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[1]),
        .D(s_axi_wdata[1]),
        .Q(timing_param_tlow_i[1]),
        .S(Bus2IIC_Reset));
  FDSE \timing_param_tlow_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[1]),
        .D(s_axi_wdata[2]),
        .Q(timing_param_tlow_i[2]),
        .S(Bus2IIC_Reset));
  FDRE \timing_param_tlow_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[1]),
        .D(s_axi_wdata[3]),
        .Q(timing_param_tlow_i[3]),
        .R(Bus2IIC_Reset));
  FDSE \timing_param_tlow_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[1]),
        .D(s_axi_wdata[4]),
        .Q(timing_param_tlow_i[4]),
        .S(Bus2IIC_Reset));
  FDSE \timing_param_tlow_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[1]),
        .D(s_axi_wdata[5]),
        .Q(timing_param_tlow_i[5]),
        .S(Bus2IIC_Reset));
  FDSE \timing_param_tlow_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[1]),
        .D(s_axi_wdata[6]),
        .Q(timing_param_tlow_i[6]),
        .S(Bus2IIC_Reset));
  FDRE \timing_param_tlow_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[1]),
        .D(s_axi_wdata[7]),
        .Q(timing_param_tlow_i[7]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_tlow_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[1]),
        .D(s_axi_wdata[8]),
        .Q(timing_param_tlow_i[8]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_tsudat_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[4]),
        .D(s_axi_wdata[0]),
        .Q(sda_setup_reg_0[0]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_tsudat_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[4]),
        .D(s_axi_wdata[1]),
        .Q(sda_setup_reg_0[1]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_tsudat_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[4]),
        .D(s_axi_wdata[2]),
        .Q(sda_setup_reg_0[2]),
        .R(Bus2IIC_Reset));
  FDSE \timing_param_tsudat_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[4]),
        .D(s_axi_wdata[3]),
        .Q(sda_setup_reg_0[3]),
        .S(Bus2IIC_Reset));
  FDRE \timing_param_tsudat_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[4]),
        .D(s_axi_wdata[4]),
        .Q(sda_setup_reg_0[4]),
        .R(Bus2IIC_Reset));
  FDSE \timing_param_tsudat_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[4]),
        .D(s_axi_wdata[5]),
        .Q(timing_param_tsudat_i[5]),
        .S(Bus2IIC_Reset));
  FDRE \timing_param_tsudat_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[4]),
        .D(s_axi_wdata[6]),
        .Q(sda_setup_reg_0[5]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_tsudat_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[4]),
        .D(s_axi_wdata[7]),
        .Q(sda_setup_reg_0[6]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_tsudat_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[4]),
        .D(s_axi_wdata[8]),
        .Q(timing_param_tsudat_i[8]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_tsusta_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[7]),
        .D(s_axi_wdata[0]),
        .Q(timing_param_tsusta_i[0]),
        .R(Bus2IIC_Reset));
  FDSE \timing_param_tsusta_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[7]),
        .D(s_axi_wdata[1]),
        .Q(timing_param_tsusta_i[1]),
        .S(Bus2IIC_Reset));
  FDRE \timing_param_tsusta_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[7]),
        .D(s_axi_wdata[2]),
        .Q(timing_param_tsusta_i[2]),
        .R(Bus2IIC_Reset));
  FDSE \timing_param_tsusta_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[7]),
        .D(s_axi_wdata[3]),
        .Q(timing_param_tsusta_i[3]),
        .S(Bus2IIC_Reset));
  FDSE \timing_param_tsusta_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[7]),
        .D(s_axi_wdata[4]),
        .Q(\s_axi_rdata_i_reg[7] [0]),
        .S(Bus2IIC_Reset));
  FDRE \timing_param_tsusta_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[7]),
        .D(s_axi_wdata[5]),
        .Q(\s_axi_rdata_i_reg[7] [1]),
        .R(Bus2IIC_Reset));
  FDSE \timing_param_tsusta_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[7]),
        .D(s_axi_wdata[6]),
        .Q(\s_axi_rdata_i_reg[7] [2]),
        .S(Bus2IIC_Reset));
  FDRE \timing_param_tsusta_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[7]),
        .D(s_axi_wdata[7]),
        .Q(\s_axi_rdata_i_reg[7] [3]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_tsusta_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[7]),
        .D(s_axi_wdata[8]),
        .Q(timing_param_tsusta_i[8]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_tsusto_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[6]),
        .D(s_axi_wdata[0]),
        .Q(\FSM_sequential_scl_state_reg[0]_2 [0]),
        .R(Bus2IIC_Reset));
  FDSE \timing_param_tsusto_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[6]),
        .D(s_axi_wdata[1]),
        .Q(\FSM_sequential_scl_state_reg[0]_2 [1]),
        .S(Bus2IIC_Reset));
  FDRE \timing_param_tsusto_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[6]),
        .D(s_axi_wdata[2]),
        .Q(\FSM_sequential_scl_state_reg[0]_2 [2]),
        .R(Bus2IIC_Reset));
  FDSE \timing_param_tsusto_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[6]),
        .D(s_axi_wdata[3]),
        .Q(\FSM_sequential_scl_state_reg[0]_2 [3]),
        .S(Bus2IIC_Reset));
  FDSE \timing_param_tsusto_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[6]),
        .D(s_axi_wdata[4]),
        .Q(\FSM_sequential_scl_state_reg[0]_2 [4]),
        .S(Bus2IIC_Reset));
  FDRE \timing_param_tsusto_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[6]),
        .D(s_axi_wdata[5]),
        .Q(\FSM_sequential_scl_state_reg[0]_2 [5]),
        .R(Bus2IIC_Reset));
  FDSE \timing_param_tsusto_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[6]),
        .D(s_axi_wdata[6]),
        .Q(\FSM_sequential_scl_state_reg[0]_2 [6]),
        .S(Bus2IIC_Reset));
  FDRE \timing_param_tsusto_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[6]),
        .D(s_axi_wdata[7]),
        .Q(\FSM_sequential_scl_state_reg[0]_2 [7]),
        .R(Bus2IIC_Reset));
  FDRE \timing_param_tsusto_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Bus2IIC_WrCE[6]),
        .D(s_axi_wdata[8]),
        .Q(timing_param_tsusto_i),
        .R(Bus2IIC_Reset));
endmodule

module system_axi_iic_0_0_shift8
   (\LEVEL_1_GEN.master_sda_reg ,
    Q,
    slave_sda_reg,
    shift_reg_en,
    shift_reg_ld_reg,
    txak,
    out,
    tx_under_prev_i_reg,
    addr_match,
    Tx_fifo_data,
    SR,
    s_axi_aclk,
    shift_reg_ld_reg_0);
  output \LEVEL_1_GEN.master_sda_reg ;
  output [7:0]Q;
  output slave_sda_reg;
  input shift_reg_en;
  input shift_reg_ld_reg;
  input txak;
  input [3:0]out;
  input tx_under_prev_i_reg;
  input addr_match;
  input [6:0]Tx_fifo_data;
  input [0:0]SR;
  input s_axi_aclk;
  input [0:0]shift_reg_ld_reg_0;

  wire \LEVEL_1_GEN.master_sda_reg ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [6:0]Tx_fifo_data;
  wire addr_match;
  wire \data_int[1]_i_1_n_0 ;
  wire \data_int[2]_i_1_n_0 ;
  wire \data_int[3]_i_1_n_0 ;
  wire \data_int[4]_i_1_n_0 ;
  wire \data_int[5]_i_1_n_0 ;
  wire \data_int[6]_i_1_n_0 ;
  wire \data_int[7]_i_1_n_0 ;
  wire \data_int[7]_i_2_n_0 ;
  wire [3:0]out;
  wire s_axi_aclk;
  wire shift_reg_en;
  wire shift_reg_ld_reg;
  wire [0:0]shift_reg_ld_reg_0;
  wire slave_sda_reg;
  wire tx_under_prev_i_reg;
  wire txak;

  LUT6 #(
    .INIT(64'hFFFB0F0BFFFB000B)) 
    \LEVEL_1_GEN.master_sda_i_1 
       (.I0(txak),
        .I1(out[3]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(Q[7]),
        .I5(tx_under_prev_i_reg),
        .O(\LEVEL_1_GEN.master_sda_reg ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_int[1]_i_1 
       (.I0(Tx_fifo_data[0]),
        .I1(shift_reg_ld_reg),
        .I2(Q[0]),
        .O(\data_int[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_int[2]_i_1 
       (.I0(Tx_fifo_data[1]),
        .I1(shift_reg_ld_reg),
        .I2(Q[1]),
        .O(\data_int[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_int[3]_i_1 
       (.I0(Tx_fifo_data[2]),
        .I1(shift_reg_ld_reg),
        .I2(Q[2]),
        .O(\data_int[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_int[4]_i_1 
       (.I0(Tx_fifo_data[3]),
        .I1(shift_reg_ld_reg),
        .I2(Q[3]),
        .O(\data_int[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_int[5]_i_1 
       (.I0(Tx_fifo_data[4]),
        .I1(shift_reg_ld_reg),
        .I2(Q[4]),
        .O(\data_int[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_int[6]_i_1 
       (.I0(Tx_fifo_data[5]),
        .I1(shift_reg_ld_reg),
        .I2(Q[5]),
        .O(\data_int[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data_int[7]_i_1 
       (.I0(shift_reg_en),
        .I1(shift_reg_ld_reg),
        .O(\data_int[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_int[7]_i_2 
       (.I0(Tx_fifo_data[6]),
        .I1(shift_reg_ld_reg),
        .I2(Q[6]),
        .O(\data_int[7]_i_2_n_0 ));
  FDRE \data_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\data_int[7]_i_1_n_0 ),
        .D(shift_reg_ld_reg_0),
        .Q(Q[0]),
        .R(SR));
  FDRE \data_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\data_int[7]_i_1_n_0 ),
        .D(\data_int[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \data_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\data_int[7]_i_1_n_0 ),
        .D(\data_int[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \data_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\data_int[7]_i_1_n_0 ),
        .D(\data_int[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE \data_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\data_int[7]_i_1_n_0 ),
        .D(\data_int[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE \data_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\data_int[7]_i_1_n_0 ),
        .D(\data_int[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE \data_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\data_int[7]_i_1_n_0 ),
        .D(\data_int[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(SR));
  FDRE \data_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\data_int[7]_i_1_n_0 ),
        .D(\data_int[7]_i_2_n_0 ),
        .Q(Q[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFBFBFB000B0B0B)) 
    slave_sda_i_1
       (.I0(Q[7]),
        .I1(out[2]),
        .I2(out[3]),
        .I3(out[1]),
        .I4(addr_match),
        .I5(txak),
        .O(slave_sda_reg));
endmodule

(* ORIG_REF_NAME = "shift8" *) 
module system_axi_iic_0_0_shift8_1
   (D,
    Q,
    abgc_i_reg,
    shift_reg_ld0,
    srw_i_reg,
    \RD_FIFO_CNTRL.ro_prev_i_reg ,
    out,
    arb_lost,
    sda_sample,
    addr_match,
    master_slave_reg,
    \cr_i_reg[1] ,
    detect_start_reg,
    srw_i_reg_0,
    detect_stop_reg,
    \FSM_onehot_state_reg[6] ,
    SR,
    E,
    s_axi_aclk,
    scndry_out);
  output [0:0]D;
  output [7:0]Q;
  output abgc_i_reg;
  output shift_reg_ld0;
  output srw_i_reg;
  input \RD_FIFO_CNTRL.ro_prev_i_reg ;
  input [2:0]out;
  input arb_lost;
  input sda_sample;
  input addr_match;
  input master_slave_reg;
  input [2:0]\cr_i_reg[1] ;
  input detect_start_reg;
  input [1:0]srw_i_reg_0;
  input detect_stop_reg;
  input \FSM_onehot_state_reg[6] ;
  input [0:0]SR;
  input [0:0]E;
  input s_axi_aclk;
  input scndry_out;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[3]_i_3_n_0 ;
  wire \FSM_onehot_state_reg[6] ;
  wire [7:0]Q;
  wire \RD_FIFO_CNTRL.ro_prev_i_reg ;
  wire [0:0]SR;
  wire abgc_i_i_2_n_0;
  wire abgc_i_i_3_n_0;
  wire abgc_i_reg;
  wire addr_match;
  wire arb_lost;
  wire [2:0]\cr_i_reg[1] ;
  wire detect_start_reg;
  wire detect_stop_reg;
  wire master_slave_reg;
  wire [2:0]out;
  wire s_axi_aclk;
  wire scndry_out;
  wire sda_sample;
  wire shift_reg_ld0;
  wire srw_i_reg;
  wire [1:0]srw_i_reg_0;

  LUT5 #(
    .INIT(32'h000000E2)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\RD_FIFO_CNTRL.ro_prev_i_reg ),
        .I1(out[2]),
        .I2(\FSM_onehot_state[3]_i_3_n_0 ),
        .I3(out[1]),
        .I4(out[0]),
        .O(D));
  LUT6 #(
    .INIT(64'h0000001011110010)) 
    \FSM_onehot_state[3]_i_3 
       (.I0(arb_lost),
        .I1(sda_sample),
        .I2(addr_match),
        .I3(Q[0]),
        .I4(master_slave_reg),
        .I5(\cr_i_reg[1] [1]),
        .O(\FSM_onehot_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000044440400)) 
    abgc_i_i_1
       (.I0(detect_start_reg),
        .I1(\cr_i_reg[1] [0]),
        .I2(abgc_i_i_2_n_0),
        .I3(abgc_i_i_3_n_0),
        .I4(srw_i_reg_0[0]),
        .I5(detect_stop_reg),
        .O(abgc_i_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    abgc_i_i_2
       (.I0(out[2]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(\cr_i_reg[1] [2]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(abgc_i_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    abgc_i_i_3
       (.I0(Q[7]),
        .I1(Q[0]),
        .I2(Q[6]),
        .I3(Q[1]),
        .O(abgc_i_i_3_n_0));
  FDRE \data_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(scndry_out),
        .Q(Q[0]),
        .R(SR));
  FDRE \data_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Q[0]),
        .Q(Q[1]),
        .R(SR));
  FDRE \data_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Q[1]),
        .Q(Q[2]),
        .R(SR));
  FDRE \data_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Q[2]),
        .Q(Q[3]),
        .R(SR));
  FDRE \data_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Q[3]),
        .Q(Q[4]),
        .R(SR));
  FDRE \data_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Q[4]),
        .Q(Q[5]),
        .R(SR));
  FDRE \data_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Q[5]),
        .Q(Q[6]),
        .R(SR));
  FDRE \data_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Q[6]),
        .Q(Q[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFF8A80)) 
    shift_reg_ld_i_1
       (.I0(out[2]),
        .I1(\cr_i_reg[1] [1]),
        .I2(master_slave_reg),
        .I3(Q[0]),
        .I4(\FSM_onehot_state_reg[6] ),
        .O(shift_reg_ld0));
  LUT4 #(
    .INIT(16'hE200)) 
    srw_i_i_1
       (.I0(srw_i_reg_0[1]),
        .I1(out[2]),
        .I2(Q[0]),
        .I3(\cr_i_reg[1] [0]),
        .O(srw_i_reg));
endmodule

module system_axi_iic_0_0_slave_attachment
   (s_axi_rresp,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    Q,
    AXI_IP2Bus_WrAck2_reg,
    s_axi_wready,
    s_axi_arready,
    irpt_wrack,
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ,
    \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] ,
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ,
    \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ,
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ,
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    reset_trig0,
    sw_rst_cond,
    Bus2IIC_RdCE,
    E,
    \cr_i_reg[4] ,
    Bus2IIC_WrCE,
    AXI_IP2Bus_RdAck20,
    ipif_glbl_irpt_enable_reg_reg,
    \GPO_GEN.gpo_i_reg[31] ,
    s_axi_rdata,
    AXI_Bus2IP_Reset,
    s_axi_aclk,
    s_axi_arvalid,
    \timing_param_tsudat_i_reg[7] ,
    \timing_param_tbuf_i_reg[7] ,
    AXI_IP2Bus_RdAck1,
    AXI_IP2Bus_RdAck2,
    s_axi_aresetn,
    AXI_IP2Bus_WrAck1,
    AXI_IP2Bus_WrAck2,
    s_axi_rready,
    s_axi_bready,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_wdata,
    irpt_wrack_d1,
    IIC2Bus_IntrEvent,
    p_1_in,
    p_1_in2_in,
    p_1_in5_in,
    p_1_in8_in,
    p_1_in11_in,
    p_1_in14_in,
    p_1_in17_in,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    sw_rst_cond_d1,
    \ip_irpt_enable_reg_reg[7] ,
    \timing_param_tbuf_i_reg[1] ,
    \adr_i_reg[6] ,
    \timing_param_tbuf_i_reg[2] ,
    \adr_i_reg[5] ,
    \timing_param_tbuf_i_reg[3] ,
    \adr_i_reg[4] ,
    \adr_i_reg[3] ,
    \adr_i_reg[2] ,
    \timing_param_tsudat_i_reg[5] ,
    \adr_i_reg[1] ,
    \adr_i_reg[0] ,
    Tx_fifo_data,
    \timing_param_tsusta_i_reg[7] ,
    \timing_param_tsusto_i_reg[7] ,
    Rc_fifo_data,
    \timing_param_thigh_i_reg[7] ,
    \timing_param_tbuf_i_reg[0] ,
    \bus2ip_addr_i_reg[2]_0 ,
    \sr_i_reg[0] ,
    \timing_param_thddat_i_reg[7] ,
    \timing_param_thdsta_i_reg[0] ,
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ,
    Tx_addr,
    \GPO_GEN.gpo_i_reg[31]_0 ,
    \cr_i_reg[4]_0 ,
    cr_txModeSelect_set,
    cr_txModeSelect_clr,
    ipif_glbl_irpt_enable_reg,
    \sr_i_reg[4] ,
    \sr_i_reg[5] ,
    \IIC2Bus_IntrEvent_reg[5] ,
    s_axi_araddr,
    s_axi_awaddr,
    gpo);
  output [0:0]s_axi_rresp;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output [4:0]Q;
  output AXI_IP2Bus_WrAck2_reg;
  output s_axi_wready;
  output s_axi_arready;
  output irpt_wrack;
  output \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  output \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] ;
  output \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ;
  output \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ;
  output \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ;
  output \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  output \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  output reset_trig0;
  output sw_rst_cond;
  output [0:0]Bus2IIC_RdCE;
  output [0:0]E;
  output [0:0]\cr_i_reg[4] ;
  output [11:0]Bus2IIC_WrCE;
  output AXI_IP2Bus_RdAck20;
  output ipif_glbl_irpt_enable_reg_reg;
  output \GPO_GEN.gpo_i_reg[31] ;
  output [9:0]s_axi_rdata;
  input AXI_Bus2IP_Reset;
  input s_axi_aclk;
  input s_axi_arvalid;
  input [6:0]\timing_param_tsudat_i_reg[7] ;
  input [3:0]\timing_param_tbuf_i_reg[7] ;
  input AXI_IP2Bus_RdAck1;
  input AXI_IP2Bus_RdAck2;
  input s_axi_aresetn;
  input AXI_IP2Bus_WrAck1;
  input AXI_IP2Bus_WrAck2;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [8:0]s_axi_wdata;
  input irpt_wrack_d1;
  input [0:7]IIC2Bus_IntrEvent;
  input p_1_in;
  input p_1_in2_in;
  input p_1_in5_in;
  input p_1_in8_in;
  input p_1_in11_in;
  input p_1_in14_in;
  input p_1_in17_in;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  input sw_rst_cond_d1;
  input [7:0]\ip_irpt_enable_reg_reg[7] ;
  input \timing_param_tbuf_i_reg[1] ;
  input \adr_i_reg[6] ;
  input \timing_param_tbuf_i_reg[2] ;
  input \adr_i_reg[5] ;
  input \timing_param_tbuf_i_reg[3] ;
  input \adr_i_reg[4] ;
  input \adr_i_reg[3] ;
  input \adr_i_reg[2] ;
  input \timing_param_tsudat_i_reg[5] ;
  input \adr_i_reg[1] ;
  input \adr_i_reg[0] ;
  input [3:0]Tx_fifo_data;
  input [3:0]\timing_param_tsusta_i_reg[7] ;
  input [7:0]\timing_param_tsusto_i_reg[7] ;
  input [0:7]Rc_fifo_data;
  input [7:0]\timing_param_thigh_i_reg[7] ;
  input \timing_param_tbuf_i_reg[0] ;
  input \bus2ip_addr_i_reg[2]_0 ;
  input [2:0]\sr_i_reg[0] ;
  input [2:0]\timing_param_thddat_i_reg[7] ;
  input [0:0]\timing_param_thdsta_i_reg[0] ;
  input \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ;
  input [0:3]Tx_addr;
  input \GPO_GEN.gpo_i_reg[31]_0 ;
  input [0:0]\cr_i_reg[4]_0 ;
  input cr_txModeSelect_set;
  input cr_txModeSelect_clr;
  input ipif_glbl_irpt_enable_reg;
  input \sr_i_reg[4] ;
  input \sr_i_reg[5] ;
  input \IIC2Bus_IntrEvent_reg[5] ;
  input [8:0]s_axi_araddr;
  input [8:0]s_axi_awaddr;
  input [0:0]gpo;

  wire AXI_Bus2IP_Reset;
  wire [24:31]AXI_IP2Bus_Data;
  wire AXI_IP2Bus_Error;
  wire AXI_IP2Bus_RdAck1;
  wire AXI_IP2Bus_RdAck2;
  wire AXI_IP2Bus_RdAck20;
  wire AXI_IP2Bus_WrAck1;
  wire AXI_IP2Bus_WrAck2;
  wire AXI_IP2Bus_WrAck2_reg;
  wire [0:1]Bus2IIC_Addr;
  wire [0:0]Bus2IIC_RdCE;
  wire [11:0]Bus2IIC_WrCE;
  wire [0:0]E;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  wire \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ;
  wire \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ;
  wire \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ;
  wire \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] ;
  wire \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  wire \GPO_GEN.gpo_i_reg[31] ;
  wire \GPO_GEN.gpo_i_reg[31]_0 ;
  wire [23:23]IIC2Bus_Data;
  wire [0:7]IIC2Bus_IntrEvent;
  wire \IIC2Bus_IntrEvent_reg[5] ;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 ;
  wire I_DECODER_n_1;
  wire I_DECODER_n_25;
  wire I_DECODER_n_44;
  wire [0:0]Intr2Bus_DBus;
  wire [4:0]Q;
  wire \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ;
  wire [0:7]Rc_fifo_data;
  wire [0:3]Tx_addr;
  wire [3:0]Tx_fifo_data;
  wire \adr_i_reg[0] ;
  wire \adr_i_reg[1] ;
  wire \adr_i_reg[2] ;
  wire \adr_i_reg[3] ;
  wire \adr_i_reg[4] ;
  wire \adr_i_reg[5] ;
  wire \adr_i_reg[6] ;
  wire \bus2ip_addr_i[0]_i_1_n_0 ;
  wire \bus2ip_addr_i[1]_i_1_n_0 ;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire \bus2ip_addr_i[5]_i_1_n_0 ;
  wire \bus2ip_addr_i[6]_i_1_n_0 ;
  wire \bus2ip_addr_i[7]_i_1_n_0 ;
  wire \bus2ip_addr_i[8]_i_1_n_0 ;
  wire \bus2ip_addr_i[8]_i_2_n_0 ;
  wire \bus2ip_addr_i_reg[2]_0 ;
  wire \bus2ip_addr_i_reg_n_0_[0] ;
  wire \bus2ip_addr_i_reg_n_0_[1] ;
  wire bus2ip_rnw_i_reg_n_0;
  wire clear;
  wire [0:0]\cr_i_reg[4] ;
  wire [0:0]\cr_i_reg[4]_0 ;
  wire cr_txModeSelect_clr;
  wire cr_txModeSelect_set;
  wire [0:0]gpo;
  wire [7:0]\ip_irpt_enable_reg_reg[7] ;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire is_read;
  wire is_read_i_1_n_0;
  wire is_write;
  wire is_write_i_1_n_0;
  wire is_write_reg_n_0;
  wire p_1_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire [3:0]plusOp;
  wire reset_trig0;
  wire rst;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_i_1_n_0;
  wire [9:0]s_axi_rdata;
  wire s_axi_rdata_i;
  wire \s_axi_rdata_i[0]_i_3_n_0 ;
  wire \s_axi_rdata_i[0]_i_4_n_0 ;
  wire \s_axi_rdata_i[0]_i_5_n_0 ;
  wire \s_axi_rdata_i[0]_i_7_n_0 ;
  wire \s_axi_rdata_i[1]_i_3_n_0 ;
  wire \s_axi_rdata_i[1]_i_6_n_0 ;
  wire \s_axi_rdata_i[1]_i_7_n_0 ;
  wire \s_axi_rdata_i[2]_i_3_n_0 ;
  wire \s_axi_rdata_i[2]_i_6_n_0 ;
  wire \s_axi_rdata_i[2]_i_7_n_0 ;
  wire \s_axi_rdata_i[3]_i_11_n_0 ;
  wire \s_axi_rdata_i[3]_i_3_n_0 ;
  wire \s_axi_rdata_i[3]_i_6_n_0 ;
  wire \s_axi_rdata_i[3]_i_7_n_0 ;
  wire \s_axi_rdata_i[3]_i_8_n_0 ;
  wire \s_axi_rdata_i[4]_i_3_n_0 ;
  wire \s_axi_rdata_i[4]_i_5_n_0 ;
  wire \s_axi_rdata_i[4]_i_6_n_0 ;
  wire \s_axi_rdata_i[4]_i_7_n_0 ;
  wire \s_axi_rdata_i[4]_i_9_n_0 ;
  wire \s_axi_rdata_i[5]_i_3_n_0 ;
  wire \s_axi_rdata_i[5]_i_6_n_0 ;
  wire \s_axi_rdata_i[5]_i_7_n_0 ;
  wire \s_axi_rdata_i[6]_i_3_n_0 ;
  wire \s_axi_rdata_i[6]_i_5_n_0 ;
  wire \s_axi_rdata_i[6]_i_6_n_0 ;
  wire \s_axi_rdata_i[6]_i_7_n_0 ;
  wire \s_axi_rdata_i[6]_i_9_n_0 ;
  wire \s_axi_rdata_i[7]_i_3_n_0 ;
  wire \s_axi_rdata_i[7]_i_4_n_0 ;
  wire \s_axi_rdata_i[7]_i_6_n_0 ;
  wire \s_axi_rdata_i[7]_i_7_n_0 ;
  wire \s_axi_rdata_i[7]_i_8_n_0 ;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i0;
  wire s_axi_rvalid_i_i_1_n_0;
  wire [8:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [2:0]\sr_i_reg[0] ;
  wire \sr_i_reg[4] ;
  wire \sr_i_reg[5] ;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire \timing_param_tbuf_i_reg[0] ;
  wire \timing_param_tbuf_i_reg[1] ;
  wire \timing_param_tbuf_i_reg[2] ;
  wire \timing_param_tbuf_i_reg[3] ;
  wire [3:0]\timing_param_tbuf_i_reg[7] ;
  wire [2:0]\timing_param_thddat_i_reg[7] ;
  wire [0:0]\timing_param_thdsta_i_reg[0] ;
  wire [7:0]\timing_param_thigh_i_reg[7] ;
  wire \timing_param_tsudat_i_reg[5] ;
  wire [6:0]\timing_param_tsudat_i_reg[7] ;
  wire [3:0]\timing_param_tsusta_i_reg[7] ;
  wire [7:0]\timing_param_tsusto_i_reg[7] ;

  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .O(plusOp[3]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .R(clear));
  system_axi_iic_0_0_address_decoder I_DECODER
       (.AXI_IP2Bus_Error(AXI_IP2Bus_Error),
        .AXI_IP2Bus_RdAck1(AXI_IP2Bus_RdAck1),
        .AXI_IP2Bus_RdAck2(AXI_IP2Bus_RdAck2),
        .AXI_IP2Bus_RdAck20(AXI_IP2Bus_RdAck20),
        .AXI_IP2Bus_WrAck1(AXI_IP2Bus_WrAck1),
        .AXI_IP2Bus_WrAck2(AXI_IP2Bus_WrAck2),
        .AXI_IP2Bus_WrAck2_reg(AXI_IP2Bus_WrAck2_reg),
        .Bus2IIC_RdCE(Bus2IIC_RdCE),
        .Bus2IIC_WrCE(Bus2IIC_WrCE),
        .D({Intr2Bus_DBus,IIC2Bus_Data,AXI_IP2Bus_Data[24],AXI_IP2Bus_Data[25],AXI_IP2Bus_Data[26],AXI_IP2Bus_Data[27],AXI_IP2Bus_Data[28],AXI_IP2Bus_Data[29],AXI_IP2Bus_Data[30],AXI_IP2Bus_Data[31]}),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]_0 (I_DECODER_n_25),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ),
        .\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] (\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ),
        .\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] (\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ),
        .\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] (\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ),
        .\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] (\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ),
        .\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] (\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] ),
        .\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] (\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ),
        .\GPO_GEN.gpo_i_reg[31] (\GPO_GEN.gpo_i_reg[31] ),
        .IIC2Bus_IntrEvent(IIC2Bus_IntrEvent),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (I_DECODER_n_1),
        .Q(start2),
        .\adr_i_reg[0] (\adr_i_reg[0] ),
        .\adr_i_reg[1] (\adr_i_reg[1] ),
        .\adr_i_reg[2] (\adr_i_reg[2] ),
        .\adr_i_reg[3] (\adr_i_reg[3] ),
        .\adr_i_reg[4] (\adr_i_reg[4] ),
        .\adr_i_reg[5] (\adr_i_reg[5] ),
        .\adr_i_reg[6] (\adr_i_reg[6] ),
        .\bus2ip_addr_i_reg[2] (\s_axi_rdata_i[1]_i_3_n_0 ),
        .\bus2ip_addr_i_reg[2]_0 (\s_axi_rdata_i[2]_i_3_n_0 ),
        .\bus2ip_addr_i_reg[2]_1 (\s_axi_rdata_i[3]_i_3_n_0 ),
        .\bus2ip_addr_i_reg[2]_2 (\bus2ip_addr_i_reg[2]_0 ),
        .\bus2ip_addr_i_reg[5] (\s_axi_rdata_i[4]_i_3_n_0 ),
        .\bus2ip_addr_i_reg[5]_0 (\s_axi_rdata_i[4]_i_5_n_0 ),
        .\bus2ip_addr_i_reg[5]_1 (\s_axi_rdata_i[5]_i_3_n_0 ),
        .\bus2ip_addr_i_reg[5]_2 (\s_axi_rdata_i[6]_i_3_n_0 ),
        .\bus2ip_addr_i_reg[5]_3 (\s_axi_rdata_i[6]_i_5_n_0 ),
        .\bus2ip_addr_i_reg[5]_4 (\s_axi_rdata_i[7]_i_3_n_0 ),
        .\bus2ip_addr_i_reg[5]_5 (\s_axi_rdata_i[7]_i_4_n_0 ),
        .\bus2ip_addr_i_reg[6] (\s_axi_rdata_i[0]_i_5_n_0 ),
        .\bus2ip_addr_i_reg[8] ({Bus2IIC_Addr[0],Bus2IIC_Addr[1],Q,\bus2ip_addr_i_reg_n_0_[1] ,\bus2ip_addr_i_reg_n_0_[0] }),
        .bus2ip_rnw_i_reg(bus2ip_rnw_i_reg_n_0),
        .\cr_i_reg[4] (\cr_i_reg[4] ),
        .\cr_i_reg[4]_0 (\cr_i_reg[4]_0 ),
        .cr_txModeSelect_clr(cr_txModeSelect_clr),
        .cr_txModeSelect_set(cr_txModeSelect_set),
        .gpo(gpo),
        .\ip_irpt_enable_reg_reg[7] (\ip_irpt_enable_reg_reg[7] ),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(ipif_glbl_irpt_enable_reg_reg),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .is_read(is_read),
        .is_write_reg(is_write_reg_n_0),
        .p_1_in(p_1_in),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .reset_trig0(reset_trig0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_bresp(s_axi_bresp),
        .\s_axi_bresp_i_reg[1] (I_DECODER_n_44),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .\state_reg[1] (state),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1),
        .\timing_param_tbuf_i_reg[1] (\timing_param_tbuf_i_reg[1] ),
        .\timing_param_tbuf_i_reg[2] (\timing_param_tbuf_i_reg[2] ),
        .\timing_param_tbuf_i_reg[3] (\timing_param_tbuf_i_reg[3] ),
        .\timing_param_thdsta_i_reg[0] (\s_axi_rdata_i[0]_i_3_n_0 ),
        .\timing_param_thigh_i_reg[0] (\s_axi_rdata_i[0]_i_4_n_0 ),
        .\timing_param_tsudat_i_reg[5] (\timing_param_tsudat_i_reg[5] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[0]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[0]),
        .O(\bus2ip_addr_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[1]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[1]),
        .O(\bus2ip_addr_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[3]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[4]),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[5]),
        .O(\bus2ip_addr_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[6]),
        .O(\bus2ip_addr_i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[7]_i_1 
       (.I0(s_axi_araddr[7]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[7]),
        .O(\bus2ip_addr_i[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(\bus2ip_addr_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[8]_i_2 
       (.I0(s_axi_araddr[8]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[8]),
        .O(\bus2ip_addr_i[8]_i_2_n_0 ));
  FDRE \bus2ip_addr_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[0]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[0] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[1]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[1] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(Q[0]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(Q[1]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[4]_i_1_n_0 ),
        .Q(Q[2]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[5]_i_1_n_0 ),
        .Q(Q[3]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[6]_i_1_n_0 ),
        .Q(Q[4]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[7]_i_1_n_0 ),
        .Q(Bus2IIC_Addr[1]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[8]_i_2_n_0 ),
        .Q(Bus2IIC_Addr[0]),
        .R(rst));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(bus2ip_rnw_i_reg_n_0),
        .R(rst));
  LUT4 #(
    .INIT(16'h2F20)) 
    is_read_i_1
       (.I0(s_axi_arvalid),
        .I1(state[1]),
        .I2(is_write),
        .I3(is_read),
        .O(is_read_i_1_n_0));
  LUT6 #(
    .INIT(64'hAA80808055555555)) 
    is_read_i_2
       (.I0(state[0]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .I3(s_axi_bvalid),
        .I4(s_axi_bready),
        .I5(state[1]),
        .O(is_write));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_read_i_1_n_0),
        .Q(is_read),
        .R(rst));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    is_write_i_1
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(is_write),
        .I5(is_write_reg_n_0),
        .O(is_write_i_1_n_0));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_write_i_1_n_0),
        .Q(is_write_reg_n_0),
        .R(rst));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_Bus2IP_Reset),
        .Q(rst),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4F44)) 
    s_axi_arready_INST_0
       (.I0(I_DECODER_n_1),
        .I1(is_read),
        .I2(AXI_IP2Bus_RdAck1),
        .I3(AXI_IP2Bus_RdAck2),
        .O(s_axi_arready));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_bresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_44),
        .Q(s_axi_bresp),
        .R(rst));
  LUT5 #(
    .INIT(32'h5D550C00)) 
    s_axi_bvalid_i_i_1
       (.I0(s_axi_bready),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_wready),
        .I4(s_axi_bvalid),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \s_axi_rdata_i[0]_i_3 
       (.I0(\timing_param_thdsta_i_reg[0] ),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ),
        .O(\s_axi_rdata_i[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEAEAE00AEAE)) 
    \s_axi_rdata_i[0]_i_4 
       (.I0(\s_axi_rdata_i[0]_i_7_n_0 ),
        .I1(\timing_param_thigh_i_reg[7] [0]),
        .I2(\s_axi_rdata_i[3]_i_8_n_0 ),
        .I3(\timing_param_tbuf_i_reg[0] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\s_axi_rdata_i[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \s_axi_rdata_i[0]_i_5 
       (.I0(Q[4]),
        .I1(Tx_addr[0]),
        .I2(Q[3]),
        .I3(\timing_param_tsudat_i_reg[7] [0]),
        .I4(Q[2]),
        .I5(\GPO_GEN.gpo_i_reg[31]_0 ),
        .O(\s_axi_rdata_i[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hABAAABABABAAAAAA)) 
    \s_axi_rdata_i[0]_i_7 
       (.I0(\s_axi_rdata_i[3]_i_11_n_0 ),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\timing_param_tsusto_i_reg[7] [0]),
        .I4(Q[3]),
        .I5(Rc_fifo_data[7]),
        .O(\s_axi_rdata_i[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040404FF04FF)) 
    \s_axi_rdata_i[1]_i_3 
       (.I0(\s_axi_rdata_i[1]_i_6_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\s_axi_rdata_i[1]_i_7_n_0 ),
        .I4(\s_axi_rdata_i[3]_i_8_n_0 ),
        .I5(\timing_param_thigh_i_reg[7] [1]),
        .O(\s_axi_rdata_i[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s_axi_rdata_i[1]_i_6 
       (.I0(Tx_addr[1]),
        .I1(Q[3]),
        .I2(\timing_param_tsudat_i_reg[7] [1]),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(\IIC2Bus_IntrEvent_reg[5] ),
        .O(\s_axi_rdata_i[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hABAAABABABAAAAAA)) 
    \s_axi_rdata_i[1]_i_7 
       (.I0(\s_axi_rdata_i[3]_i_11_n_0 ),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\timing_param_tsusto_i_reg[7] [1]),
        .I4(Q[3]),
        .I5(Rc_fifo_data[6]),
        .O(\s_axi_rdata_i[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040404FF04FF)) 
    \s_axi_rdata_i[2]_i_3 
       (.I0(\s_axi_rdata_i[2]_i_6_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\s_axi_rdata_i[2]_i_7_n_0 ),
        .I4(\s_axi_rdata_i[3]_i_8_n_0 ),
        .I5(\timing_param_thigh_i_reg[7] [2]),
        .O(\s_axi_rdata_i[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s_axi_rdata_i[2]_i_6 
       (.I0(Tx_addr[2]),
        .I1(Q[3]),
        .I2(\timing_param_tsudat_i_reg[7] [2]),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(\sr_i_reg[5] ),
        .O(\s_axi_rdata_i[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hABAAABABABAAAAAA)) 
    \s_axi_rdata_i[2]_i_7 
       (.I0(\s_axi_rdata_i[3]_i_11_n_0 ),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\timing_param_tsusto_i_reg[7] [2]),
        .I4(Q[3]),
        .I5(Rc_fifo_data[5]),
        .O(\s_axi_rdata_i[2]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata_i[31]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(s_axi_rdata_i));
  LUT3 #(
    .INIT(8'h1F)) 
    \s_axi_rdata_i[3]_i_11 
       (.I0(Q[0]),
        .I1(Q[4]),
        .I2(Q[1]),
        .O(\s_axi_rdata_i[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040404FF04FF)) 
    \s_axi_rdata_i[3]_i_3 
       (.I0(\s_axi_rdata_i[3]_i_6_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\s_axi_rdata_i[3]_i_7_n_0 ),
        .I4(\s_axi_rdata_i[3]_i_8_n_0 ),
        .I5(\timing_param_thigh_i_reg[7] [3]),
        .O(\s_axi_rdata_i[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s_axi_rdata_i[3]_i_6 
       (.I0(Tx_addr[3]),
        .I1(Q[3]),
        .I2(\timing_param_tsudat_i_reg[7] [3]),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(\sr_i_reg[4] ),
        .O(\s_axi_rdata_i[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111000)) 
    \s_axi_rdata_i[3]_i_7 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\timing_param_tsusto_i_reg[7] [3]),
        .I3(Q[3]),
        .I4(Rc_fifo_data[4]),
        .I5(\s_axi_rdata_i[3]_i_11_n_0 ),
        .O(\s_axi_rdata_i[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \s_axi_rdata_i[3]_i_8 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[2]),
        .O(\s_axi_rdata_i[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000A808AAAAAAAA)) 
    \s_axi_rdata_i[4]_i_3 
       (.I0(\s_axi_rdata_i[4]_i_6_n_0 ),
        .I1(Tx_fifo_data[0]),
        .I2(Q[3]),
        .I3(\timing_param_tsusta_i_reg[7] [0]),
        .I4(I_DECODER_n_25),
        .I5(\s_axi_rdata_i[4]_i_7_n_0 ),
        .O(\s_axi_rdata_i[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFABFB)) 
    \s_axi_rdata_i[4]_i_5 
       (.I0(Q[3]),
        .I1(\sr_i_reg[0] [0]),
        .I2(Q[4]),
        .I3(\timing_param_thddat_i_reg[7] [0]),
        .I4(Q[2]),
        .I5(\s_axi_rdata_i[4]_i_9_n_0 ),
        .O(\s_axi_rdata_i[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFDD55F555DD55F5)) 
    \s_axi_rdata_i[4]_i_6 
       (.I0(Q[0]),
        .I1(\timing_param_tsusto_i_reg[7] [4]),
        .I2(Rc_fifo_data[3]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\timing_param_thigh_i_reg[7] [4]),
        .O(\s_axi_rdata_i[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAAABFFF)) 
    \s_axi_rdata_i[4]_i_7 
       (.I0(Q[4]),
        .I1(\timing_param_tbuf_i_reg[7] [0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(\s_axi_rdata_i[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2000FFFFFFFF)) 
    \s_axi_rdata_i[4]_i_9 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\timing_param_tsudat_i_reg[7] [4]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\s_axi_rdata_i[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000A808AAAAAAAA)) 
    \s_axi_rdata_i[5]_i_3 
       (.I0(\s_axi_rdata_i[5]_i_6_n_0 ),
        .I1(Tx_fifo_data[1]),
        .I2(Q[3]),
        .I3(\timing_param_tsusta_i_reg[7] [1]),
        .I4(I_DECODER_n_25),
        .I5(\s_axi_rdata_i[5]_i_7_n_0 ),
        .O(\s_axi_rdata_i[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFDD55F555DD55F5)) 
    \s_axi_rdata_i[5]_i_6 
       (.I0(Q[0]),
        .I1(\timing_param_tsusto_i_reg[7] [5]),
        .I2(Rc_fifo_data[2]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\timing_param_thigh_i_reg[7] [5]),
        .O(\s_axi_rdata_i[5]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAAABFFF)) 
    \s_axi_rdata_i[5]_i_7 
       (.I0(Q[4]),
        .I1(\timing_param_tbuf_i_reg[7] [1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(\s_axi_rdata_i[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000A808AAAAAAAA)) 
    \s_axi_rdata_i[6]_i_3 
       (.I0(\s_axi_rdata_i[6]_i_6_n_0 ),
        .I1(Tx_fifo_data[2]),
        .I2(Q[3]),
        .I3(\timing_param_tsusta_i_reg[7] [2]),
        .I4(I_DECODER_n_25),
        .I5(\s_axi_rdata_i[6]_i_7_n_0 ),
        .O(\s_axi_rdata_i[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFABFB)) 
    \s_axi_rdata_i[6]_i_5 
       (.I0(Q[3]),
        .I1(\sr_i_reg[0] [1]),
        .I2(Q[4]),
        .I3(\timing_param_thddat_i_reg[7] [1]),
        .I4(Q[2]),
        .I5(\s_axi_rdata_i[6]_i_9_n_0 ),
        .O(\s_axi_rdata_i[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FAFAF0F0FCFCF)) 
    \s_axi_rdata_i[6]_i_6 
       (.I0(\timing_param_tsusto_i_reg[7] [6]),
        .I1(Rc_fifo_data[1]),
        .I2(Q[0]),
        .I3(\timing_param_thigh_i_reg[7] [6]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\s_axi_rdata_i[6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAAABFFF)) 
    \s_axi_rdata_i[6]_i_7 
       (.I0(Q[4]),
        .I1(\timing_param_tbuf_i_reg[7] [2]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(\s_axi_rdata_i[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2000FFFFFFFF)) 
    \s_axi_rdata_i[6]_i_9 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\timing_param_tsudat_i_reg[7] [5]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\s_axi_rdata_i[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00E2)) 
    \s_axi_rdata_i[7]_i_3 
       (.I0(Tx_fifo_data[3]),
        .I1(Q[3]),
        .I2(\timing_param_tsusta_i_reg[7] [3]),
        .I3(I_DECODER_n_25),
        .I4(\s_axi_rdata_i[7]_i_6_n_0 ),
        .I5(\s_axi_rdata_i[7]_i_7_n_0 ),
        .O(\s_axi_rdata_i[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFABFB)) 
    \s_axi_rdata_i[7]_i_4 
       (.I0(Q[3]),
        .I1(\sr_i_reg[0] [2]),
        .I2(Q[4]),
        .I3(\timing_param_thddat_i_reg[7] [2]),
        .I4(Q[2]),
        .I5(\s_axi_rdata_i[7]_i_8_n_0 ),
        .O(\s_axi_rdata_i[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h55554000)) 
    \s_axi_rdata_i[7]_i_6 
       (.I0(Q[4]),
        .I1(\timing_param_tbuf_i_reg[7] [3]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(\s_axi_rdata_i[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0044CC0CCC44CC0C)) 
    \s_axi_rdata_i[7]_i_7 
       (.I0(\timing_param_tsusto_i_reg[7] [7]),
        .I1(Q[0]),
        .I2(Rc_fifo_data[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\timing_param_thigh_i_reg[7] [7]),
        .O(\s_axi_rdata_i[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2000FFFFFFFF)) 
    \s_axi_rdata_i[7]_i_8 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\timing_param_tsudat_i_reg[7] [6]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\s_axi_rdata_i[7]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(AXI_IP2Bus_Data[31]),
        .Q(s_axi_rdata[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(AXI_IP2Bus_Data[30]),
        .Q(s_axi_rdata[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(AXI_IP2Bus_Data[29]),
        .Q(s_axi_rdata[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(Intr2Bus_DBus),
        .Q(s_axi_rdata[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(AXI_IP2Bus_Data[28]),
        .Q(s_axi_rdata[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(AXI_IP2Bus_Data[27]),
        .Q(s_axi_rdata[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(AXI_IP2Bus_Data[26]),
        .Q(s_axi_rdata[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(AXI_IP2Bus_Data[25]),
        .Q(s_axi_rdata[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(AXI_IP2Bus_Data[24]),
        .Q(s_axi_rdata[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(IIC2Bus_Data),
        .Q(s_axi_rdata[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(AXI_IP2Bus_Error),
        .Q(s_axi_rresp),
        .R(rst));
  LUT3 #(
    .INIT(8'hDC)) 
    s_axi_rvalid_i_i_1
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid_i0),
        .I2(s_axi_rvalid),
        .O(s_axi_rvalid_i_i_1_n_0));
  LUT6 #(
    .INIT(64'h000022F200000000)) 
    s_axi_rvalid_i_i_2
       (.I0(AXI_IP2Bus_RdAck2),
        .I1(AXI_IP2Bus_RdAck1),
        .I2(is_read),
        .I3(I_DECODER_n_1),
        .I4(state[1]),
        .I5(state[0]),
        .O(s_axi_rvalid_i0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h000F0008)) 
    start2_i_1
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(state[1]),
        .I3(state[0]),
        .I4(s_axi_arvalid),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(rst));
  LUT5 #(
    .INIT(32'h2F2CEFEC)) 
    \state[0]_i_1 
       (.I0(s_axi_wready),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_arvalid),
        .I4(\state[0]_i_2_n_0 ),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \state[0]_i_2 
       (.I0(s_axi_rvalid),
        .I1(s_axi_rready),
        .I2(s_axi_bvalid),
        .I3(s_axi_bready),
        .O(\state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAFAE)) 
    \state[1]_i_1 
       (.I0(s_axi_rvalid_i0),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\state[1]_i_2_n_0 ),
        .I4(\state[1]_i_3_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \state[1]_i_2 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .O(\state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h002A2A2A)) 
    \state[1]_i_3 
       (.I0(state[1]),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .O(\state[1]_i_3_n_0 ));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(rst));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(rst));
endmodule

module system_axi_iic_0_0_soft_reset
   (sw_rst_cond_d1,
    AXI_Bus2IP_Reset,
    ctrlFifoDin,
    SR,
    sw_rst_cond,
    s_axi_aclk,
    reset_trig0,
    s_axi_wdata,
    Tx_fifo_rst,
    s_axi_aresetn);
  output sw_rst_cond_d1;
  output AXI_Bus2IP_Reset;
  output [0:1]ctrlFifoDin;
  output [0:0]SR;
  input sw_rst_cond;
  input s_axi_aclk;
  input reset_trig0;
  input [1:0]s_axi_wdata;
  input Tx_fifo_rst;
  input s_axi_aresetn;

  wire AXI_Bus2IP_Reset;
  wire \RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[3].RST_FLOPS_n_0 ;
  wire S;
  wire [0:0]SR;
  wire Tx_fifo_rst;
  wire [0:1]ctrlFifoDin;
  wire [1:3]flop_q_chain;
  wire reset_trig0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [1:0]s_axi_wdata;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;

  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FIFO_RAM[0].SRL16E_I_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(SR),
        .I2(Tx_fifo_rst),
        .O(ctrlFifoDin[0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FIFO_RAM[1].SRL16E_I_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(SR),
        .I2(Tx_fifo_rst),
        .O(ctrlFifoDin[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \GPO_GEN.gpo_i[31]_i_1 
       (.I0(\RESET_FLOPS[3].RST_FLOPS_n_0 ),
        .I1(s_axi_aresetn),
        .O(SR));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[0].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(S),
        .Q(flop_q_chain[1]),
        .R(AXI_Bus2IP_Reset));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[1].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[2]),
        .R(AXI_Bus2IP_Reset));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[1].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[1]),
        .O(\RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[2].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[3]),
        .R(AXI_Bus2IP_Reset));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[2].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[2]),
        .O(\RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[3].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ),
        .Q(\RESET_FLOPS[3].RST_FLOPS_n_0 ),
        .R(AXI_Bus2IP_Reset));
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[3].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[3]),
        .O(\RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ));
  FDRE reset_trig_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(reset_trig0),
        .Q(S),
        .R(AXI_Bus2IP_Reset));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(s_axi_aresetn),
        .O(AXI_Bus2IP_Reset));
  FDRE sw_rst_cond_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sw_rst_cond),
        .Q(sw_rst_cond_d1),
        .R(AXI_Bus2IP_Reset));
endmodule

(* CHECK_LICENSE_TYPE = "system_axi_iic_0_0,axi_iic,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_iic,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module system_axi_iic_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    iic2intc_irpt,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    sda_i,
    sda_o,
    sda_t,
    scl_i,
    scl_o,
    scl_t,
    gpo);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 INTERRUPT INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output iic2intc_irpt;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [8:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [8:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SDA_I" *) (* x_interface_parameter = "XIL_INTERFACENAME IIC, BOARD.ASSOCIATED_PARAM IIC_BOARD_INTERFACE" *) input sda_i;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SDA_O" *) output sda_o;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SDA_T" *) output sda_t;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SCL_I" *) input scl_i;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SCL_O" *) output scl_o;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SCL_T" *) output scl_t;
  output [0:0]gpo;

  wire [0:0]gpo;
  wire iic2intc_irpt;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire scl_i;
  wire scl_o;
  wire scl_t;
  wire sda_i;
  wire sda_o;
  wire sda_t;

  (* C_DEFAULT_VALUE = "8'b00000000" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_GPO_WIDTH = "1" *) 
  (* C_IIC_FREQ = "400000" *) 
  (* C_SCL_INERTIAL_DELAY = "0" *) 
  (* C_SDA_INERTIAL_DELAY = "0" *) 
  (* C_SDA_LEVEL = "1" *) 
  (* C_SMBUS_PMBUS_HOST = "0" *) 
  (* C_S_AXI_ACLK_FREQ_HZ = "100000000" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TEN_BIT_ADR = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  system_axi_iic_0_0_axi_iic U0
       (.gpo(gpo),
        .iic2intc_irpt(iic2intc_irpt),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .scl_i(scl_i),
        .scl_o(scl_o),
        .scl_t(scl_t),
        .sda_i(sda_i),
        .sda_o(sda_o),
        .sda_t(sda_t));
endmodule

module system_axi_iic_0_0_upcnt_n
   (Q,
    stop_scl_reg_reg,
    out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ,
    CO,
    detect_stop_b_reg,
    \timing_param_thddat_i_reg[8] ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ,
    \timing_param_thigh_i_reg[8] ,
    stop_scl_reg,
    \timing_param_tsusto_i_reg[7] ,
    \cr_i_reg[2] ,
    \timing_param_tsusta_i_reg[8] ,
    arb_lost,
    SR,
    s_axi_aclk);
  output [8:0]Q;
  output stop_scl_reg_reg;
  input [3:0]out;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  input [0:0]CO;
  input detect_stop_b_reg;
  input [0:0]\timing_param_thddat_i_reg[8] ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  input [0:0]\timing_param_thigh_i_reg[8] ;
  input stop_scl_reg;
  input [0:0]\timing_param_tsusto_i_reg[7] ;
  input [0:0]\cr_i_reg[2] ;
  input [0:0]\timing_param_tsusta_i_reg[8] ;
  input arb_lost;
  input [0:0]SR;
  input s_axi_aclk;

  wire [0:0]CO;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  wire [8:0]Q;
  wire [0:0]SR;
  wire arb_lost;
  wire clk_cnt_en;
  wire clk_cnt_rst;
  wire [0:0]\cr_i_reg[2] ;
  wire detect_stop_b_reg;
  wire [3:0]out;
  wire [1:0]p_0_in;
  wire \q_int[0]_i_1_n_0 ;
  wire \q_int[0]_i_2__0_n_0 ;
  wire \q_int[0]_i_5__0_n_0 ;
  wire \q_int[0]_i_6_n_0 ;
  wire \q_int[0]_i_7_n_0 ;
  wire \q_int[0]_i_9_n_0 ;
  wire \q_int[1]_i_1__0_n_0 ;
  wire \q_int[2]_i_1__0_n_0 ;
  wire \q_int[3]_i_1__0_n_0 ;
  wire \q_int[3]_i_2_n_0 ;
  wire \q_int[4]_i_1__0_n_0 ;
  wire \q_int[5]_i_1__0_n_0 ;
  wire \q_int[6]_i_1__0_n_0 ;
  wire s_axi_aclk;
  wire stop_scl_reg;
  wire stop_scl_reg_reg;
  wire [0:0]\timing_param_thddat_i_reg[8] ;
  wire [0:0]\timing_param_thigh_i_reg[8] ;
  wire [0:0]\timing_param_tsusta_i_reg[8] ;
  wire [0:0]\timing_param_tsusto_i_reg[7] ;

  LUT2 #(
    .INIT(4'hE)) 
    \q_int[0]_i_1 
       (.I0(clk_cnt_en),
        .I1(clk_cnt_rst),
        .O(\q_int[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h45551000)) 
    \q_int[0]_i_2__0 
       (.I0(clk_cnt_rst),
        .I1(\q_int[0]_i_5__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\q_int[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h003030302232F2F2)) 
    \q_int[0]_i_3 
       (.I0(\q_int[0]_i_6_n_0 ),
        .I1(out[3]),
        .I2(out[0]),
        .I3(\q_int[0]_i_7_n_0 ),
        .I4(out[2]),
        .I5(out[1]),
        .O(clk_cnt_en));
  LUT6 #(
    .INIT(64'hFFFFFFFF888F0000)) 
    \q_int[0]_i_4 
       (.I0(\q_int[0]_i_7_n_0 ),
        .I1(out[1]),
        .I2(out[0]),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .I4(stop_scl_reg_reg),
        .I5(\q_int[0]_i_9_n_0 ),
        .O(clk_cnt_rst));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \q_int[0]_i_5__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\q_int[0]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAABAAABAFFBA)) 
    \q_int[0]_i_6 
       (.I0(out[0]),
        .I1(CO),
        .I2(detect_stop_b_reg),
        .I3(out[2]),
        .I4(\timing_param_thddat_i_reg[8] ),
        .I5(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .O(\q_int[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \q_int[0]_i_7 
       (.I0(\timing_param_thigh_i_reg[8] ),
        .I1(stop_scl_reg),
        .I2(\timing_param_tsusto_i_reg[7] ),
        .I3(\cr_i_reg[2] ),
        .I4(\timing_param_tsusta_i_reg[8] ),
        .I5(arb_lost),
        .O(\q_int[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0145014401450145)) 
    \q_int[0]_i_9 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(out[3]),
        .I4(CO),
        .I5(detect_stop_b_reg),
        .O(\q_int[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h5104)) 
    \q_int[1]_i_1__0 
       (.I0(clk_cnt_rst),
        .I1(Q[6]),
        .I2(\q_int[0]_i_5__0_n_0 ),
        .I3(Q[7]),
        .O(\q_int[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \q_int[2]_i_1__0 
       (.I0(clk_cnt_rst),
        .I1(\q_int[0]_i_5__0_n_0 ),
        .I2(Q[6]),
        .O(\q_int[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \q_int[3]_i_1__0 
       (.I0(clk_cnt_rst),
        .I1(\q_int[3]_i_2_n_0 ),
        .I2(Q[5]),
        .O(\q_int[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \q_int[3]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\q_int[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \q_int[4]_i_1__0 
       (.I0(clk_cnt_rst),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\q_int[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \q_int[5]_i_1__0 
       (.I0(clk_cnt_rst),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\q_int[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \q_int[6]_i_1__0 
       (.I0(clk_cnt_rst),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\q_int[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \q_int[7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(clk_cnt_rst),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \q_int[8]_i_1 
       (.I0(clk_cnt_rst),
        .I1(Q[0]),
        .O(p_0_in[0]));
  FDRE \q_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1_n_0 ),
        .D(\q_int[0]_i_2__0_n_0 ),
        .Q(Q[8]),
        .R(SR));
  FDRE \q_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1_n_0 ),
        .D(\q_int[1]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(SR));
  FDRE \q_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1_n_0 ),
        .D(\q_int[2]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(SR));
  FDRE \q_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1_n_0 ),
        .D(\q_int[3]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE \q_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1_n_0 ),
        .D(\q_int[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE \q_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1_n_0 ),
        .D(\q_int[5]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE \q_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1_n_0 ),
        .D(\q_int[6]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \q_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \q_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(Q[0]),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    stop_scl_reg_i_2
       (.I0(out[2]),
        .I1(out[3]),
        .O(stop_scl_reg_reg));
endmodule

(* ORIG_REF_NAME = "upcnt_n" *) 
module system_axi_iic_0_0_upcnt_n_2
   (\q_int_reg[0]_0 ,
    Q,
    sda_setup,
    sda_rin_d1,
    scndry_out,
    rsta_d1,
    \cr_i_reg[2] ,
    tx_under_prev_d1,
    tx_under_prev_i_reg,
    gen_stop,
    gen_stop_d1,
    SR,
    s_axi_aclk);
  output \q_int_reg[0]_0 ;
  output [8:0]Q;
  input sda_setup;
  input sda_rin_d1;
  input scndry_out;
  input rsta_d1;
  input [0:0]\cr_i_reg[2] ;
  input tx_under_prev_d1;
  input tx_under_prev_i_reg;
  input gen_stop;
  input gen_stop_d1;
  input [0:0]SR;
  input s_axi_aclk;

  wire [8:0]Q;
  wire [0:0]SR;
  wire [0:0]\cr_i_reg[2] ;
  wire gen_stop;
  wire gen_stop_d1;
  wire [4:0]p_0_in__0;
  wire \q_int[0]_i_1__0_n_0 ;
  wire \q_int[0]_i_2__1_n_0 ;
  wire \q_int[0]_i_4__0_n_0 ;
  wire \q_int[0]_i_5_n_0 ;
  wire \q_int[1]_i_1__1_n_0 ;
  wire \q_int[2]_i_1__1_n_0 ;
  wire \q_int[3]_i_1__1_n_0 ;
  wire \q_int[3]_i_2__0_n_0 ;
  wire \q_int_reg[0]_0 ;
  wire rsta_d1;
  wire s_axi_aclk;
  wire scndry_out;
  wire sda_rin_d1;
  wire sda_setup;
  wire tx_under_prev_d1;
  wire tx_under_prev_i_reg;

  LUT2 #(
    .INIT(4'hE)) 
    \q_int[0]_i_1__0 
       (.I0(sda_setup),
        .I1(\q_int_reg[0]_0 ),
        .O(\q_int[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h45551000)) 
    \q_int[0]_i_2__1 
       (.I0(\q_int_reg[0]_0 ),
        .I1(\q_int[0]_i_4__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\q_int[0]_i_2__1_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \q_int[0]_i_3__0 
       (.I0(sda_rin_d1),
        .I1(scndry_out),
        .I2(\q_int[0]_i_5_n_0 ),
        .O(\q_int_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \q_int[0]_i_4__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\q_int[0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \q_int[0]_i_5 
       (.I0(rsta_d1),
        .I1(\cr_i_reg[2] ),
        .I2(tx_under_prev_d1),
        .I3(tx_under_prev_i_reg),
        .I4(gen_stop),
        .I5(gen_stop_d1),
        .O(\q_int[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h5104)) 
    \q_int[1]_i_1__1 
       (.I0(\q_int_reg[0]_0 ),
        .I1(Q[6]),
        .I2(\q_int[0]_i_4__0_n_0 ),
        .I3(Q[7]),
        .O(\q_int[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \q_int[2]_i_1__1 
       (.I0(\q_int_reg[0]_0 ),
        .I1(\q_int[0]_i_4__0_n_0 ),
        .I2(Q[6]),
        .O(\q_int[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \q_int[3]_i_1__1 
       (.I0(\q_int_reg[0]_0 ),
        .I1(\q_int[3]_i_2__0_n_0 ),
        .I2(Q[5]),
        .O(\q_int[3]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \q_int[3]_i_2__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\q_int[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \q_int[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(\q_int_reg[0]_0 ),
        .O(p_0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \q_int[5]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\q_int_reg[0]_0 ),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \q_int[6]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\q_int_reg[0]_0 ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \q_int[7]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\q_int_reg[0]_0 ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \q_int[8]_i_1__0 
       (.I0(Q[0]),
        .I1(\q_int_reg[0]_0 ),
        .O(p_0_in__0[0]));
  FDRE \q_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__0_n_0 ),
        .D(\q_int[0]_i_2__1_n_0 ),
        .Q(Q[8]),
        .R(SR));
  FDRE \q_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__0_n_0 ),
        .D(\q_int[1]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(SR));
  FDRE \q_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__0_n_0 ),
        .D(\q_int[2]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(SR));
  FDRE \q_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__0_n_0 ),
        .D(\q_int[3]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE \q_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__0_n_0 ),
        .D(p_0_in__0[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \q_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__0_n_0 ),
        .D(p_0_in__0[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \q_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__0_n_0 ),
        .D(p_0_in__0[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \q_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__0_n_0 ),
        .D(p_0_in__0[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \q_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__0_n_0 ),
        .D(p_0_in__0[0]),
        .Q(Q[0]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "upcnt_n" *) 
module system_axi_iic_0_0_upcnt_n__parameterized0
   (E,
    EarlyAckDataState0,
    dtc_i_reg,
    out,
    \FSM_onehot_state_reg[4] ,
    detect_start_reg,
    ro_prev_d1_reg,
    bit_cnt_en,
    scl_falling_edge,
    dtc_i,
    SR,
    s_axi_aclk);
  output [0:0]E;
  output EarlyAckDataState0;
  output dtc_i_reg;
  input [5:0]out;
  input \FSM_onehot_state_reg[4] ;
  input detect_start_reg;
  input ro_prev_d1_reg;
  input bit_cnt_en;
  input scl_falling_edge;
  input dtc_i;
  input [0:0]SR;
  input s_axi_aclk;

  wire [0:0]E;
  wire EarlyAckDataState0;
  wire \FSM_onehot_state[6]_i_4_n_0 ;
  wire \FSM_onehot_state[6]_i_7_n_0 ;
  wire \FSM_onehot_state_reg[4] ;
  wire [0:0]SR;
  wire [3:0]bit_cnt;
  wire bit_cnt_en;
  wire detect_start_reg;
  wire dtc_i;
  wire dtc_i_reg;
  wire [5:0]out;
  wire \q_int[0]_i_1__1_n_0 ;
  wire \q_int[0]_i_2_n_0 ;
  wire \q_int[0]_i_3__1_n_0 ;
  wire \q_int[1]_i_1_n_0 ;
  wire \q_int[2]_i_1_n_0 ;
  wire \q_int[3]_i_1_n_0 ;
  wire ro_prev_d1_reg;
  wire s_axi_aclk;
  wire scl_falling_edge;

  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAEAA)) 
    EarlyAckDataState_i_1
       (.I0(out[4]),
        .I1(out[3]),
        .I2(bit_cnt[2]),
        .I3(bit_cnt[3]),
        .I4(bit_cnt[1]),
        .I5(bit_cnt[0]),
        .O(EarlyAckDataState0));
  LUT5 #(
    .INIT(32'h0000FEEE)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(\FSM_onehot_state[6]_i_4_n_0 ),
        .I1(out[2]),
        .I2(detect_start_reg),
        .I3(out[0]),
        .I4(ro_prev_d1_reg),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFCFCFC)) 
    \FSM_onehot_state[6]_i_4 
       (.I0(out[1]),
        .I1(out[5]),
        .I2(out[4]),
        .I3(\FSM_onehot_state_reg[4] ),
        .I4(detect_start_reg),
        .I5(\FSM_onehot_state[6]_i_7_n_0 ),
        .O(\FSM_onehot_state[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_onehot_state[6]_i_7 
       (.I0(bit_cnt[0]),
        .I1(bit_cnt[1]),
        .I2(bit_cnt[3]),
        .I3(bit_cnt[2]),
        .O(\FSM_onehot_state[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0080FFFF00800000)) 
    dtc_i_i_1
       (.I0(bit_cnt[2]),
        .I1(bit_cnt[1]),
        .I2(bit_cnt[0]),
        .I3(bit_cnt[3]),
        .I4(scl_falling_edge),
        .I5(dtc_i),
        .O(dtc_i_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \q_int[0]_i_1__1 
       (.I0(bit_cnt_en),
        .I1(detect_start_reg),
        .I2(out[0]),
        .I3(out[4]),
        .I4(out[5]),
        .I5(out[2]),
        .O(\q_int[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \q_int[0]_i_2 
       (.I0(\q_int[0]_i_3__1_n_0 ),
        .I1(bit_cnt[0]),
        .I2(bit_cnt[1]),
        .I3(bit_cnt[2]),
        .I4(bit_cnt[3]),
        .O(\q_int[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \q_int[0]_i_3__1 
       (.I0(out[2]),
        .I1(out[5]),
        .I2(out[4]),
        .I3(out[0]),
        .I4(detect_start_reg),
        .O(\q_int[0]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \q_int[1]_i_1 
       (.I0(\q_int[0]_i_3__1_n_0 ),
        .I1(bit_cnt[1]),
        .I2(bit_cnt[0]),
        .I3(bit_cnt[2]),
        .O(\q_int[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \q_int[2]_i_1 
       (.I0(\q_int[0]_i_3__1_n_0 ),
        .I1(bit_cnt[1]),
        .I2(bit_cnt[0]),
        .O(\q_int[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \q_int[3]_i_1 
       (.I0(detect_start_reg),
        .I1(out[0]),
        .I2(out[4]),
        .I3(out[5]),
        .I4(out[2]),
        .I5(bit_cnt[0]),
        .O(\q_int[3]_i_1_n_0 ));
  FDRE \q_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__1_n_0 ),
        .D(\q_int[0]_i_2_n_0 ),
        .Q(bit_cnt[3]),
        .R(SR));
  FDRE \q_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__1_n_0 ),
        .D(\q_int[1]_i_1_n_0 ),
        .Q(bit_cnt[2]),
        .R(SR));
  FDRE \q_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__1_n_0 ),
        .D(\q_int[2]_i_1_n_0 ),
        .Q(bit_cnt[1]),
        .R(SR));
  FDRE \q_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__1_n_0 ),
        .D(\q_int[3]_i_1_n_0 ),
        .Q(bit_cnt[0]),
        .R(SR));
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
