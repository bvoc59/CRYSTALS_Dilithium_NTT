`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2023 02:24:07 AM
// Design Name: 
// Module Name: ntt_butterfly_8x8
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

module ntt_butterfly_8x8(
	 input clk_100Mhz,
	 input [23:0] fi_0,
	 input [23:0] fi_1,
	 input [23:0] fi_2,
	 input [23:0] fi_3,
	 input [23:0] fi_4,
	 input [23:0] fi_5,
	 input [23:0] fi_6,
	 input [23:0] fi_7,
	 output [23:0] Fi_0,
	 output [23:0] Fi_1,
	 output [23:0] Fi_2,
	 output [23:0] Fi_3,
	 output [23:0] Fi_4,
	 output [23:0] Fi_5,
	 output [23:0] Fi_6,
	 output [23:0] Fi_7
 	 );

	 parameter C_POS_R_32 = 24'd5178923;
	 parameter C_NEG_R_32 = 24'd3201494;
	 parameter C_POS_R_96 = 24'd5234739;
	 parameter C_NEG_R_96 = 24'd3145678;
	 parameter C_POS_R_160 = 24'd5496691;
	 parameter C_NEG_R_160 = 24'd2883726;
	 parameter C_POS_R_224 = 24'd5178987;
	 parameter C_NEG_R_224 = 24'd3201430;

	 wire [48:0] sum0;
	 wire [48:0] sum1;
	 wire [48:0] sum2;
	 wire [48:0] sum3;
	 wire [48:0] sum4;
	 wire [48:0] sum5;
	 wire [48:0] sum6;
	 wire [48:0] sum7;

	 wire [47:0] prod0;
	 wire [47:0] prod1;
	 wire [47:0] prod2;
	 wire [47:0] prod3;
	 wire [47:0] prod4;
	 wire [47:0] prod5;
	 wire [47:0] prod6;
	 wire [47:0] prod7;

	 mult_gen_0 mult_gen_0i(.CLK(clk_100Mhz), .A(fi_4), .B(C_POS_R_32), .P(prod0));
	 mult_gen_0 mult_gen_1i(.CLK(clk_100Mhz), .A(fi_5), .B(C_POS_R_96), .P(prod1));
	 mult_gen_0 mult_gen_2i(.CLK(clk_100Mhz), .A(fi_6), .B(C_POS_R_160), .P(prod2));
	 mult_gen_0 mult_gen_3i(.CLK(clk_100Mhz), .A(fi_7), .B(C_POS_R_224), .P(prod3));
	 mult_gen_0 mult_gen_4i(.CLK(clk_100Mhz), .A(fi_4), .B(C_NEG_R_32), .P(prod4));
	 mult_gen_0 mult_gen_5i(.CLK(clk_100Mhz), .A(fi_5), .B(C_NEG_R_96), .P(prod5));
	 mult_gen_0 mult_gen_6i(.CLK(clk_100Mhz), .A(fi_6), .B(C_NEG_R_160), .P(prod6));
	 mult_gen_0 mult_gen_7i(.CLK(clk_100Mhz), .A(fi_7), .B(C_NEG_R_224), .P(prod7));

	 c_add_0 c_add_0i(.A(prod0), .B(fi_0), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum0));
	 c_add_0 c_add_1i(.A(prod1), .B(fi_1), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum1));
	 c_add_0 c_add_2i(.A(prod2), .B(fi_2), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum2));
	 c_add_0 c_add_3i(.A(prod3), .B(fi_3), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum3));
	 c_add_0 c_add_4i(.A(prod4), .B(fi_0), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum4));
	 c_add_0 c_add_5i(.A(prod5), .B(fi_1), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum5));
	 c_add_0 c_add_6i(.A(prod6), .B(fi_2), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum6));
	 c_add_0 c_add_7i(.A(prod7), .B(fi_3), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum7));

	 barret barret_0i(.clk_100Mhz(clk_100Mhz), .a_in(sum0), .a_out(Fi_0)); 
	 barret barret_1i(.clk_100Mhz(clk_100Mhz), .a_in(sum1), .a_out(Fi_1)); 
	 barret barret_2i(.clk_100Mhz(clk_100Mhz), .a_in(sum2), .a_out(Fi_2)); 
	 barret barret_3i(.clk_100Mhz(clk_100Mhz), .a_in(sum3), .a_out(Fi_3)); 
	 barret barret_4i(.clk_100Mhz(clk_100Mhz), .a_in(sum4), .a_out(Fi_4)); 
	 barret barret_5i(.clk_100Mhz(clk_100Mhz), .a_in(sum5), .a_out(Fi_5)); 
	 barret barret_6i(.clk_100Mhz(clk_100Mhz), .a_in(sum6), .a_out(Fi_6)); 
	 barret barret_7i(.clk_100Mhz(clk_100Mhz), .a_in(sum7), .a_out(Fi_7)); 

endmodule