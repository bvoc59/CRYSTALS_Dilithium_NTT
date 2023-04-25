// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Tue Apr 18 23:36:11 2023
// Host        : LAPTOP-EEKFOE1E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/bvoc5/CRYSTALS_NTT/Dilithium_R2_CT_NTT/Dilithium_R2_CT_NTT.gen/sources_1/ip/c_sub_51_bit_1/c_sub_51_bit_stub.v
// Design      : c_sub_51_bit
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_14,Vivado 2021.1" *)
module c_sub_51_bit(A, B, CLK, CE, S)
/* synthesis syn_black_box black_box_pad_pin="A[48:0],B[50:0],CLK,CE,S[50:0]" */;
  input [48:0]A;
  input [50:0]B;
  input CLK;
  input CE;
  output [50:0]S;
endmodule
