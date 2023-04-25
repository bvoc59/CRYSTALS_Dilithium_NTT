// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Tue Apr 18 23:34:47 2023
// Host        : LAPTOP-EEKFOE1E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/bvoc5/CRYSTALS_NTT/Dilithium_R2_CT_NTT/Dilithium_R2_CT_NTT.gen/sources_1/ip/c_add_0_1/c_add_0_stub.v
// Design      : c_add_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_14,Vivado 2021.1" *)
module c_add_0(A, B, CLK, CE, S)
/* synthesis syn_black_box black_box_pad_pin="A[47:0],B[23:0],CLK,CE,S[48:0]" */;
  input [47:0]A;
  input [23:0]B;
  input CLK;
  input CE;
  output [48:0]S;
endmodule
