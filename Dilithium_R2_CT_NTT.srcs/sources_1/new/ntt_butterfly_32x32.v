`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2023 02:24:07 AM
// Design Name: 
// Module Name: ntt_butterfly_32x32
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

module ntt_butterfly_32x32(
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
	 input [23:0] fi_16,
	 input [23:0] fi_17,
	 input [23:0] fi_18,
	 input [23:0] fi_19,
	 input [23:0] fi_20,
	 input [23:0] fi_21,
	 input [23:0] fi_22,
	 input [23:0] fi_23,
	 input [23:0] fi_24,
	 input [23:0] fi_25,
	 input [23:0] fi_26,
	 input [23:0] fi_27,
	 input [23:0] fi_28,
	 input [23:0] fi_29,
	 input [23:0] fi_30,
	 input [23:0] fi_31,
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
	 output [23:0] Fi_15,
	 output [23:0] Fi_16,
	 output [23:0] Fi_17,
	 output [23:0] Fi_18,
	 output [23:0] Fi_19,
	 output [23:0] Fi_20,
	 output [23:0] Fi_21,
	 output [23:0] Fi_22,
	 output [23:0] Fi_23,
	 output [23:0] Fi_24,
	 output [23:0] Fi_25,
	 output [23:0] Fi_26,
	 output [23:0] Fi_27,
	 output [23:0] Fi_28,
	 output [23:0] Fi_29,
	 output [23:0] Fi_30,
	 output [23:0] Fi_31
 	 );

	 parameter C_POS_R_8 = 24'd5010068;
	 parameter C_NEG_R_8 = 24'd3370349;
	 parameter C_POS_R_24 = 24'd5152541;
	 parameter C_NEG_R_24 = 24'd3227876;
	 parameter C_POS_R_40 = 24'd4855975;
	 parameter C_NEG_R_40 = 24'd3524442;
	 parameter C_POS_R_56 = 24'd7737789;
	 parameter C_NEG_R_56 = 24'd642628;
	 parameter C_POS_R_72 = 24'd2663378;
	 parameter C_NEG_R_72 = 24'd5717039;
	 parameter C_POS_R_88 = 24'd2453983;
	 parameter C_NEG_R_88 = 24'd5926434;
	 parameter C_POS_R_104 = 24'd676590;
	 parameter C_NEG_R_104 = 24'd7703827;
	 parameter C_POS_R_120 = 24'd2815639;
	 parameter C_NEG_R_120 = 24'd5564778;
	 parameter C_POS_R_136 = 24'd4317364;
	 parameter C_NEG_R_136 = 24'd4063053;
	 parameter C_POS_R_152 = 24'd1714295;
	 parameter C_NEG_R_152 = 24'd6666122;
	 parameter C_POS_R_168 = 24'd7946292;
	 parameter C_NEG_R_168 = 24'd434125;
	 parameter C_POS_R_184 = 24'd4795319;
	 parameter C_NEG_R_184 = 24'd3585098;
	 parameter C_POS_R_200 = 24'd6705802;
	 parameter C_NEG_R_200 = 24'd1674615;
	 parameter C_POS_R_216 = 24'd1460718;
	 parameter C_NEG_R_216 = 24'd6919699;
	 parameter C_POS_R_232 = 24'd7044481;
	 parameter C_NEG_R_232 = 24'd1335936;
	 parameter C_POS_R_248 = 24'd2283733;
	 parameter C_NEG_R_248 = 24'd6096684;

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
	 wire [48:0] sum16;
	 wire [48:0] sum17;
	 wire [48:0] sum18;
	 wire [48:0] sum19;
	 wire [48:0] sum20;
	 wire [48:0] sum21;
	 wire [48:0] sum22;
	 wire [48:0] sum23;
	 wire [48:0] sum24;
	 wire [48:0] sum25;
	 wire [48:0] sum26;
	 wire [48:0] sum27;
	 wire [48:0] sum28;
	 wire [48:0] sum29;
	 wire [48:0] sum30;
	 wire [48:0] sum31;

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
	 wire [47:0] prod16;
	 wire [47:0] prod17;
	 wire [47:0] prod18;
	 wire [47:0] prod19;
	 wire [47:0] prod20;
	 wire [47:0] prod21;
	 wire [47:0] prod22;
	 wire [47:0] prod23;
	 wire [47:0] prod24;
	 wire [47:0] prod25;
	 wire [47:0] prod26;
	 wire [47:0] prod27;
	 wire [47:0] prod28;
	 wire [47:0] prod29;
	 wire [47:0] prod30;
	 wire [47:0] prod31;

	 mult_gen_0 mult_gen_0i(.CLK(clk_100Mhz), .A(fi_16), .B(C_POS_R_8), .P(prod0));
	 mult_gen_0 mult_gen_1i(.CLK(clk_100Mhz), .A(fi_17), .B(C_POS_R_24), .P(prod1));
	 mult_gen_0 mult_gen_2i(.CLK(clk_100Mhz), .A(fi_18), .B(C_POS_R_40), .P(prod2));
	 mult_gen_0 mult_gen_3i(.CLK(clk_100Mhz), .A(fi_19), .B(C_POS_R_56), .P(prod3));
	 mult_gen_0 mult_gen_4i(.CLK(clk_100Mhz), .A(fi_20), .B(C_POS_R_72), .P(prod4));
	 mult_gen_0 mult_gen_5i(.CLK(clk_100Mhz), .A(fi_21), .B(C_POS_R_88), .P(prod5));
	 mult_gen_0 mult_gen_6i(.CLK(clk_100Mhz), .A(fi_22), .B(C_POS_R_104), .P(prod6));
	 mult_gen_0 mult_gen_7i(.CLK(clk_100Mhz), .A(fi_23), .B(C_POS_R_120), .P(prod7));
	 mult_gen_0 mult_gen_8i(.CLK(clk_100Mhz), .A(fi_24), .B(C_POS_R_136), .P(prod8));
	 mult_gen_0 mult_gen_9i(.CLK(clk_100Mhz), .A(fi_25), .B(C_POS_R_152), .P(prod9));
	 mult_gen_0 mult_gen_10i(.CLK(clk_100Mhz), .A(fi_26), .B(C_POS_R_168), .P(prod10));
	 mult_gen_0 mult_gen_11i(.CLK(clk_100Mhz), .A(fi_27), .B(C_POS_R_184), .P(prod11));
	 mult_gen_0 mult_gen_12i(.CLK(clk_100Mhz), .A(fi_28), .B(C_POS_R_200), .P(prod12));
	 mult_gen_0 mult_gen_13i(.CLK(clk_100Mhz), .A(fi_29), .B(C_POS_R_216), .P(prod13));
	 mult_gen_0 mult_gen_14i(.CLK(clk_100Mhz), .A(fi_30), .B(C_POS_R_232), .P(prod14));
	 mult_gen_0 mult_gen_15i(.CLK(clk_100Mhz), .A(fi_31), .B(C_POS_R_248), .P(prod15));
	 mult_gen_0 mult_gen_16i(.CLK(clk_100Mhz), .A(fi_16), .B(C_NEG_R_8), .P(prod16));
	 mult_gen_0 mult_gen_17i(.CLK(clk_100Mhz), .A(fi_17), .B(C_NEG_R_24), .P(prod17));
	 mult_gen_0 mult_gen_18i(.CLK(clk_100Mhz), .A(fi_18), .B(C_NEG_R_40), .P(prod18));
	 mult_gen_0 mult_gen_19i(.CLK(clk_100Mhz), .A(fi_19), .B(C_NEG_R_56), .P(prod19));
	 mult_gen_0 mult_gen_20i(.CLK(clk_100Mhz), .A(fi_20), .B(C_NEG_R_72), .P(prod20));
	 mult_gen_0 mult_gen_21i(.CLK(clk_100Mhz), .A(fi_21), .B(C_NEG_R_88), .P(prod21));
	 mult_gen_0 mult_gen_22i(.CLK(clk_100Mhz), .A(fi_22), .B(C_NEG_R_104), .P(prod22));
	 mult_gen_0 mult_gen_23i(.CLK(clk_100Mhz), .A(fi_23), .B(C_NEG_R_120), .P(prod23));
	 mult_gen_0 mult_gen_24i(.CLK(clk_100Mhz), .A(fi_24), .B(C_NEG_R_136), .P(prod24));
	 mult_gen_0 mult_gen_25i(.CLK(clk_100Mhz), .A(fi_25), .B(C_NEG_R_152), .P(prod25));
	 mult_gen_0 mult_gen_26i(.CLK(clk_100Mhz), .A(fi_26), .B(C_NEG_R_168), .P(prod26));
	 mult_gen_0 mult_gen_27i(.CLK(clk_100Mhz), .A(fi_27), .B(C_NEG_R_184), .P(prod27));
	 mult_gen_0 mult_gen_28i(.CLK(clk_100Mhz), .A(fi_28), .B(C_NEG_R_200), .P(prod28));
	 mult_gen_0 mult_gen_29i(.CLK(clk_100Mhz), .A(fi_29), .B(C_NEG_R_216), .P(prod29));
	 mult_gen_0 mult_gen_30i(.CLK(clk_100Mhz), .A(fi_30), .B(C_NEG_R_232), .P(prod30));
	 mult_gen_0 mult_gen_31i(.CLK(clk_100Mhz), .A(fi_31), .B(C_NEG_R_248), .P(prod31));

	 c_add_0 c_add_0i(.A(prod0), .B(fi_0), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum0));
	 c_add_0 c_add_1i(.A(prod1), .B(fi_1), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum1));
	 c_add_0 c_add_2i(.A(prod2), .B(fi_2), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum2));
	 c_add_0 c_add_3i(.A(prod3), .B(fi_3), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum3));
	 c_add_0 c_add_4i(.A(prod4), .B(fi_4), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum4));
	 c_add_0 c_add_5i(.A(prod5), .B(fi_5), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum5));
	 c_add_0 c_add_6i(.A(prod6), .B(fi_6), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum6));
	 c_add_0 c_add_7i(.A(prod7), .B(fi_7), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum7));
	 c_add_0 c_add_8i(.A(prod8), .B(fi_8), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum8));
	 c_add_0 c_add_9i(.A(prod9), .B(fi_9), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum9));
	 c_add_0 c_add_10i(.A(prod10), .B(fi_10), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum10));
	 c_add_0 c_add_11i(.A(prod11), .B(fi_11), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum11));
	 c_add_0 c_add_12i(.A(prod12), .B(fi_12), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum12));
	 c_add_0 c_add_13i(.A(prod13), .B(fi_13), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum13));
	 c_add_0 c_add_14i(.A(prod14), .B(fi_14), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum14));
	 c_add_0 c_add_15i(.A(prod15), .B(fi_15), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum15));
	 c_add_0 c_add_16i(.A(prod16), .B(fi_0), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum16));
	 c_add_0 c_add_17i(.A(prod17), .B(fi_1), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum17));
	 c_add_0 c_add_18i(.A(prod18), .B(fi_2), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum18));
	 c_add_0 c_add_19i(.A(prod19), .B(fi_3), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum19));
	 c_add_0 c_add_20i(.A(prod20), .B(fi_4), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum20));
	 c_add_0 c_add_21i(.A(prod21), .B(fi_5), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum21));
	 c_add_0 c_add_22i(.A(prod22), .B(fi_6), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum22));
	 c_add_0 c_add_23i(.A(prod23), .B(fi_7), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum23));
	 c_add_0 c_add_24i(.A(prod24), .B(fi_8), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum24));
	 c_add_0 c_add_25i(.A(prod25), .B(fi_9), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum25));
	 c_add_0 c_add_26i(.A(prod26), .B(fi_10), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum26));
	 c_add_0 c_add_27i(.A(prod27), .B(fi_11), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum27));
	 c_add_0 c_add_28i(.A(prod28), .B(fi_12), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum28));
	 c_add_0 c_add_29i(.A(prod29), .B(fi_13), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum29));
	 c_add_0 c_add_30i(.A(prod30), .B(fi_14), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum30));
	 c_add_0 c_add_31i(.A(prod31), .B(fi_15), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum31));

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
	 barret barret_16i(.clk_100Mhz(clk_100Mhz), .a_in(sum16), .a_out(Fi_16)); 
	 barret barret_17i(.clk_100Mhz(clk_100Mhz), .a_in(sum17), .a_out(Fi_17)); 
	 barret barret_18i(.clk_100Mhz(clk_100Mhz), .a_in(sum18), .a_out(Fi_18)); 
	 barret barret_19i(.clk_100Mhz(clk_100Mhz), .a_in(sum19), .a_out(Fi_19)); 
	 barret barret_20i(.clk_100Mhz(clk_100Mhz), .a_in(sum20), .a_out(Fi_20)); 
	 barret barret_21i(.clk_100Mhz(clk_100Mhz), .a_in(sum21), .a_out(Fi_21)); 
	 barret barret_22i(.clk_100Mhz(clk_100Mhz), .a_in(sum22), .a_out(Fi_22)); 
	 barret barret_23i(.clk_100Mhz(clk_100Mhz), .a_in(sum23), .a_out(Fi_23)); 
	 barret barret_24i(.clk_100Mhz(clk_100Mhz), .a_in(sum24), .a_out(Fi_24)); 
	 barret barret_25i(.clk_100Mhz(clk_100Mhz), .a_in(sum25), .a_out(Fi_25)); 
	 barret barret_26i(.clk_100Mhz(clk_100Mhz), .a_in(sum26), .a_out(Fi_26)); 
	 barret barret_27i(.clk_100Mhz(clk_100Mhz), .a_in(sum27), .a_out(Fi_27)); 
	 barret barret_28i(.clk_100Mhz(clk_100Mhz), .a_in(sum28), .a_out(Fi_28)); 
	 barret barret_29i(.clk_100Mhz(clk_100Mhz), .a_in(sum29), .a_out(Fi_29)); 
	 barret barret_30i(.clk_100Mhz(clk_100Mhz), .a_in(sum30), .a_out(Fi_30)); 
	 barret barret_31i(.clk_100Mhz(clk_100Mhz), .a_in(sum31), .a_out(Fi_31)); 

endmodule