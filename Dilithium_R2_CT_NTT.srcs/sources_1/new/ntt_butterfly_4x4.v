`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2023 02:24:07 AM
// Design Name: 
// Module Name: ntt_butterfly_4x4
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

module ntt_butterfly_4x4(
	 input clk_100Mhz,
	 input [23:0] fi_0,
	 input [23:0] fi_1,
	 input [23:0] fi_2,
	 input [23:0] fi_3,
	 output [23:0] Fi_0,
	 output [23:0] Fi_1,
	 output [23:0] Fi_2,
	 output [23:0] Fi_3
 	 );

	 parameter C_POS_R_64 = 24'd3765607;
	 parameter C_NEG_R_64 = 24'd4614810;
	 parameter C_POS_R_192 = 24'd3761513;
	 parameter C_NEG_R_192 = 24'd4618904;

	 wire [48:0] sum0;
	 wire [48:0] sum1;
	 wire [48:0] sum2;
	 wire [48:0] sum3;

	 wire [47:0] prod0;
	 wire [47:0] prod1;
	 wire [47:0] prod2;
	 wire [47:0] prod3;

	 mult_gen_0 mult_gen_0i(.CLK(clk_100Mhz), .A(fi_2), .B(C_POS_R_64), .P(prod0));
	 mult_gen_0 mult_gen_1i(.CLK(clk_100Mhz), .A(fi_3), .B(C_POS_R_192), .P(prod1));
	 mult_gen_0 mult_gen_2i(.CLK(clk_100Mhz), .A(fi_2), .B(C_NEG_R_64), .P(prod2));
	 mult_gen_0 mult_gen_3i(.CLK(clk_100Mhz), .A(fi_3), .B(C_NEG_R_192), .P(prod3));

	 c_add_0 c_add_0i(.A(prod0), .B(fi_0), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum0));
	 c_add_0 c_add_1i(.A(prod1), .B(fi_1), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum1));
	 c_add_0 c_add_2i(.A(prod2), .B(fi_0), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum2));
	 c_add_0 c_add_3i(.A(prod3), .B(fi_1), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum3));

	 barret barret_0i(.clk_100Mhz(clk_100Mhz), .a_in(sum0), .a_out(Fi_0)); 
	 barret barret_1i(.clk_100Mhz(clk_100Mhz), .a_in(sum1), .a_out(Fi_1)); 
	 barret barret_2i(.clk_100Mhz(clk_100Mhz), .a_in(sum2), .a_out(Fi_2)); 
	 barret barret_3i(.clk_100Mhz(clk_100Mhz), .a_in(sum3), .a_out(Fi_3)); 

endmodule
