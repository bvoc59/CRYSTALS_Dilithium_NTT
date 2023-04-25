`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2023 02:24:07 AM
// Design Name: 
// Module Name: ntt_butterfly_16x16
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module ntt_butterfly_16x16(
	 input clk_100Mhz,
	 input [23:0] fi_0,
	 input [23:0] fi_1,
	 input [23:0] fi_2,
	 input [23:0] fi_3,
	 input [23:0] fi_4,
	 input [23:0] fi_5,
	 input [23:0] fi_6,
	 input [23:0] fi_7,
	 input [23:0] fi_8,
	 input [23:0] fi_9,
	 input [23:0] fi_10,
	 input [23:0] fi_11,
	 input [23:0] fi_12,
	 input [23:0] fi_13,
	 input [23:0] fi_14,
	 input [23:0] fi_15,
	 output [23:0] Fi_0,
	 output [23:0] Fi_1,
	 output [23:0] Fi_2,
	 output [23:0] Fi_3,
	 output [23:0] Fi_4,
	 output [23:0] Fi_5,
	 output [23:0] Fi_6,
	 output [23:0] Fi_7,
	 output [23:0] Fi_8,
	 output [23:0] Fi_9,
	 output [23:0] Fi_10,
	 output [23:0] Fi_11,
	 output [23:0] Fi_12,
	 output [23:0] Fi_13,
	 output [23:0] Fi_14,
	 output [23:0] Fi_15
 	 );

	 parameter C_POS_R_16 = 24'd7778734;
	 parameter C_NEG_R_16 = 24'd601683;
	 parameter C_POS_R_48 = 24'd3764867;
	 parameter C_NEG_R_48 = 24'd4615550;
	 parameter C_POS_R_80 = 24'd2682288;
	 parameter C_NEG_R_80 = 24'd5698129;
	 parameter C_POS_R_112 = 24'd557458;
	 parameter C_NEG_R_112 = 24'd7822959;
	 parameter C_POS_R_144 = 24'd3542485;
	 parameter C_NEG_R_144 = 24'd4837932;
	 parameter C_POS_R_176 = 24'd7375178;
	 parameter C_NEG_R_176 = 24'd1005239;
	 parameter C_POS_R_208 = 24'd2129892;
	 parameter C_NEG_R_208 = 24'd6250525;
	 parameter C_POS_R_240 = 24'd7159240;
	 parameter C_NEG_R_240 = 24'd1221177;

	 wire [48:0] sum0;
	 wire [48:0] sum1;
	 wire [48:0] sum2;
	 wire [48:0] sum3;
	 wire [48:0] sum4;
	 wire [48:0] sum5;
	 wire [48:0] sum6;
	 wire [48:0] sum7;
	 wire [48:0] sum8;
	 wire [48:0] sum9;
	 wire [48:0] sum10;
	 wire [48:0] sum11;
	 wire [48:0] sum12;
	 wire [48:0] sum13;
	 wire [48:0] sum14;
	 wire [48:0] sum15;

	 wire [47:0] prod0;
	 wire [47:0] prod1;
	 wire [47:0] prod2;
	 wire [47:0] prod3;
	 wire [47:0] prod4;
	 wire [47:0] prod5;
	 wire [47:0] prod6;
	 wire [47:0] prod7;
	 wire [47:0] prod8;
	 wire [47:0] prod9;
	 wire [47:0] prod10;
	 wire [47:0] prod11;
	 wire [47:0] prod12;
	 wire [47:0] prod13;
	 wire [47:0] prod14;
	 wire [47:0] prod15;

	 mult_gen_0 mult_gen_0i(.CLK(clk_100Mhz), .A(fi_8), .B(C_POS_R_16), .P(prod0));
	 mult_gen_0 mult_gen_1i(.CLK(clk_100Mhz), .A(fi_9), .B(C_POS_R_48), .P(prod1));
	 mult_gen_0 mult_gen_2i(.CLK(clk_100Mhz), .A(fi_10), .B(C_POS_R_80), .P(prod2));
	 mult_gen_0 mult_gen_3i(.CLK(clk_100Mhz), .A(fi_11), .B(C_POS_R_112), .P(prod3));
	 mult_gen_0 mult_gen_4i(.CLK(clk_100Mhz), .A(fi_12), .B(C_POS_R_144), .P(prod4));
	 mult_gen_0 mult_gen_5i(.CLK(clk_100Mhz), .A(fi_13), .B(C_POS_R_176), .P(prod5));
	 mult_gen_0 mult_gen_6i(.CLK(clk_100Mhz), .A(fi_14), .B(C_POS_R_208), .P(prod6));
	 mult_gen_0 mult_gen_7i(.CLK(clk_100Mhz), .A(fi_15), .B(C_POS_R_240), .P(prod7));
	 mult_gen_0 mult_gen_8i(.CLK(clk_100Mhz), .A(fi_8), .B(C_NEG_R_16), .P(prod8));
	 mult_gen_0 mult_gen_9i(.CLK(clk_100Mhz), .A(fi_9), .B(C_NEG_R_48), .P(prod9));
	 mult_gen_0 mult_gen_10i(.CLK(clk_100Mhz), .A(fi_10), .B(C_NEG_R_80), .P(prod10));
	 mult_gen_0 mult_gen_11i(.CLK(clk_100Mhz), .A(fi_11), .B(C_NEG_R_112), .P(prod11));
	 mult_gen_0 mult_gen_12i(.CLK(clk_100Mhz), .A(fi_12), .B(C_NEG_R_144), .P(prod12));
	 mult_gen_0 mult_gen_13i(.CLK(clk_100Mhz), .A(fi_13), .B(C_NEG_R_176), .P(prod13));
	 mult_gen_0 mult_gen_14i(.CLK(clk_100Mhz), .A(fi_14), .B(C_NEG_R_208), .P(prod14));
	 mult_gen_0 mult_gen_15i(.CLK(clk_100Mhz), .A(fi_15), .B(C_NEG_R_240), .P(prod15));

	 c_add_0 c_add_0i(.A(prod0), .B(fi_0), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum0));
	 c_add_0 c_add_1i(.A(prod1), .B(fi_1), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum1));
	 c_add_0 c_add_2i(.A(prod2), .B(fi_2), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum2));
	 c_add_0 c_add_3i(.A(prod3), .B(fi_3), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum3));
	 c_add_0 c_add_4i(.A(prod4), .B(fi_4), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum4));
	 c_add_0 c_add_5i(.A(prod5), .B(fi_5), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum5));
	 c_add_0 c_add_6i(.A(prod6), .B(fi_6), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum6));
	 c_add_0 c_add_7i(.A(prod7), .B(fi_7), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum7));
	 c_add_0 c_add_8i(.A(prod8), .B(fi_0), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum8));
	 c_add_0 c_add_9i(.A(prod9), .B(fi_1), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum9));
	 c_add_0 c_add_10i(.A(prod10), .B(fi_2), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum10));
	 c_add_0 c_add_11i(.A(prod11), .B(fi_3), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum11));
	 c_add_0 c_add_12i(.A(prod12), .B(fi_4), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum12));
	 c_add_0 c_add_13i(.A(prod13), .B(fi_5), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum13));
	 c_add_0 c_add_14i(.A(prod14), .B(fi_6), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum14));
	 c_add_0 c_add_15i(.A(prod15), .B(fi_7), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum15));

	 barret barret_0i(.clk_100Mhz(clk_100Mhz), .a_in(sum0), .a_out(Fi_0)); 
	 barret barret_1i(.clk_100Mhz(clk_100Mhz), .a_in(sum1), .a_out(Fi_1)); 
	 barret barret_2i(.clk_100Mhz(clk_100Mhz), .a_in(sum2), .a_out(Fi_2)); 
	 barret barret_3i(.clk_100Mhz(clk_100Mhz), .a_in(sum3), .a_out(Fi_3)); 
	 barret barret_4i(.clk_100Mhz(clk_100Mhz), .a_in(sum4), .a_out(Fi_4)); 
	 barret barret_5i(.clk_100Mhz(clk_100Mhz), .a_in(sum5), .a_out(Fi_5)); 
	 barret barret_6i(.clk_100Mhz(clk_100Mhz), .a_in(sum6), .a_out(Fi_6)); 
	 barret barret_7i(.clk_100Mhz(clk_100Mhz), .a_in(sum7), .a_out(Fi_7)); 
	 barret barret_8i(.clk_100Mhz(clk_100Mhz), .a_in(sum8), .a_out(Fi_8)); 
	 barret barret_9i(.clk_100Mhz(clk_100Mhz), .a_in(sum9), .a_out(Fi_9)); 
	 barret barret_10i(.clk_100Mhz(clk_100Mhz), .a_in(sum10), .a_out(Fi_10)); 
	 barret barret_11i(.clk_100Mhz(clk_100Mhz), .a_in(sum11), .a_out(Fi_11)); 
	 barret barret_12i(.clk_100Mhz(clk_100Mhz), .a_in(sum12), .a_out(Fi_12)); 
	 barret barret_13i(.clk_100Mhz(clk_100Mhz), .a_in(sum13), .a_out(Fi_13)); 
	 barret barret_14i(.clk_100Mhz(clk_100Mhz), .a_in(sum14), .a_out(Fi_14)); 
	 barret barret_15i(.clk_100Mhz(clk_100Mhz), .a_in(sum15), .a_out(Fi_15)); 

endmodule