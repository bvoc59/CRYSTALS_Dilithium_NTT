`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2023 02:24:07 AM
// Design Name: 
// Module Name: ntt_butterfly_64x64
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

module ntt_butterfly_64x64(
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
	 input [23:0] fi_32,
	 input [23:0] fi_33,
	 input [23:0] fi_34,
	 input [23:0] fi_35,
	 input [23:0] fi_36,
	 input [23:0] fi_37,
	 input [23:0] fi_38,
	 input [23:0] fi_39,
	 input [23:0] fi_40,
	 input [23:0] fi_41,
	 input [23:0] fi_42,
	 input [23:0] fi_43,
	 input [23:0] fi_44,
	 input [23:0] fi_45,
	 input [23:0] fi_46,
	 input [23:0] fi_47,
	 input [23:0] fi_48,
	 input [23:0] fi_49,
	 input [23:0] fi_50,
	 input [23:0] fi_51,
	 input [23:0] fi_52,
	 input [23:0] fi_53,
	 input [23:0] fi_54,
	 input [23:0] fi_55,
	 input [23:0] fi_56,
	 input [23:0] fi_57,
	 input [23:0] fi_58,
	 input [23:0] fi_59,
	 input [23:0] fi_60,
	 input [23:0] fi_61,
	 input [23:0] fi_62,
	 input [23:0] fi_63,
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
	 output [23:0] Fi_31,
	 output [23:0] Fi_32,
	 output [23:0] Fi_33,
	 output [23:0] Fi_34,
	 output [23:0] Fi_35,
	 output [23:0] Fi_36,
	 output [23:0] Fi_37,
	 output [23:0] Fi_38,
	 output [23:0] Fi_39,
	 output [23:0] Fi_40,
	 output [23:0] Fi_41,
	 output [23:0] Fi_42,
	 output [23:0] Fi_43,
	 output [23:0] Fi_44,
	 output [23:0] Fi_45,
	 output [23:0] Fi_46,
	 output [23:0] Fi_47,
	 output [23:0] Fi_48,
	 output [23:0] Fi_49,
	 output [23:0] Fi_50,
	 output [23:0] Fi_51,
	 output [23:0] Fi_52,
	 output [23:0] Fi_53,
	 output [23:0] Fi_54,
	 output [23:0] Fi_55,
	 output [23:0] Fi_56,
	 output [23:0] Fi_57,
	 output [23:0] Fi_58,
	 output [23:0] Fi_59,
	 output [23:0] Fi_60,
	 output [23:0] Fi_61,
	 output [23:0] Fi_62,
	 output [23:0] Fi_63
 	 );

	 parameter C_POS_R_4 = 24'd3602218;
	 parameter C_NEG_R_4 = 24'd4778199;
	 parameter C_POS_R_12 = 24'd3415069;
	 parameter C_NEG_R_12 = 24'd4965348;
	 parameter C_POS_R_20 = 24'd394148;
	 parameter C_NEG_R_20 = 24'd7986269;
	 parameter C_POS_R_28 = 24'd5483103;
	 parameter C_NEG_R_28 = 24'd2897314;
	 parameter C_POS_R_36 = 24'd5269599;
	 parameter C_NEG_R_36 = 24'd3110818;
	 parameter C_POS_R_44 = 24'd3756790;
	 parameter C_NEG_R_44 = 24'd4623627;
	 parameter C_POS_R_52 = 24'd2071829;
	 parameter C_NEG_R_52 = 24'd6308588;
	 parameter C_POS_R_60 = 24'd2917338;
	 parameter C_NEG_R_60 = 24'd5463079;
	 parameter C_POS_R_68 = 24'd2740543;
	 parameter C_NEG_R_68 = 24'd5639874;
	 parameter C_POS_R_76 = 24'd7562881;
	 parameter C_NEG_R_76 = 24'd817536;
	 parameter C_POS_R_84 = 24'd1095468;
	 parameter C_NEG_R_84 = 24'd7284949;
	 parameter C_POS_R_92 = 24'd556856;
	 parameter C_NEG_R_92 = 24'd7823561;
	 parameter C_POS_R_100 = 24'd3704823;
	 parameter C_NEG_R_100 = 24'd4675594;
	 parameter C_POS_R_108 = 24'd6663429;
	 parameter C_NEG_R_108 = 24'd1716988;
	 parameter C_POS_R_116 = 24'd3241972;
	 parameter C_NEG_R_116 = 24'd5138445;
	 parameter C_POS_R_124 = 24'd3345963;
	 parameter C_NEG_R_124 = 24'd5034454;
	 parameter C_POS_R_132 = 24'd3182878;
	 parameter C_NEG_R_132 = 24'd5197539;
	 parameter C_POS_R_140 = 24'd1759347;
	 parameter C_NEG_R_140 = 24'd6621070;
	 parameter C_POS_R_148 = 24'd928749;
	 parameter C_NEG_R_148 = 24'd7451668;
	 parameter C_POS_R_156 = 24'd3192354;
	 parameter C_NEG_R_156 = 24'd5188063;
	 parameter C_POS_R_164 = 24'd2101410;
	 parameter C_NEG_R_164 = 24'd6279007;
	 parameter C_POS_R_172 = 24'd6444618;
	 parameter C_NEG_R_172 = 24'd1935799;
	 parameter C_POS_R_180 = 24'd4361428;
	 parameter C_NEG_R_180 = 24'd4018989;
	 parameter C_POS_R_188 = 24'd1853806;
	 parameter C_NEG_R_188 = 24'd6526611;
	 parameter C_POS_R_196 = 24'd4793971;
	 parameter C_NEG_R_196 = 24'd3586446;
	 parameter C_POS_R_204 = 24'd4805951;
	 parameter C_NEG_R_204 = 24'd3574466;
	 parameter C_POS_R_212 = 24'd4874037;
	 parameter C_NEG_R_212 = 24'd3506380;
	 parameter C_POS_R_220 = 24'd3870317;
	 parameter C_NEG_R_220 = 24'd4510100;
	 parameter C_POS_R_228 = 24'd1159875;
	 parameter C_NEG_R_228 = 24'd7220542;
	 parameter C_POS_R_236 = 24'd4430364;
	 parameter C_NEG_R_236 = 24'd3950053;
	 parameter C_POS_R_244 = 24'd2156050;
	 parameter C_NEG_R_244 = 24'd6224367;
	 parameter C_POS_R_252 = 24'd1858416;
	 parameter C_NEG_R_252 = 24'd6522001;

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
	 wire [48:0] sum32;
	 wire [48:0] sum33;
	 wire [48:0] sum34;
	 wire [48:0] sum35;
	 wire [48:0] sum36;
	 wire [48:0] sum37;
	 wire [48:0] sum38;
	 wire [48:0] sum39;
	 wire [48:0] sum40;
	 wire [48:0] sum41;
	 wire [48:0] sum42;
	 wire [48:0] sum43;
	 wire [48:0] sum44;
	 wire [48:0] sum45;
	 wire [48:0] sum46;
	 wire [48:0] sum47;
	 wire [48:0] sum48;
	 wire [48:0] sum49;
	 wire [48:0] sum50;
	 wire [48:0] sum51;
	 wire [48:0] sum52;
	 wire [48:0] sum53;
	 wire [48:0] sum54;
	 wire [48:0] sum55;
	 wire [48:0] sum56;
	 wire [48:0] sum57;
	 wire [48:0] sum58;
	 wire [48:0] sum59;
	 wire [48:0] sum60;
	 wire [48:0] sum61;
	 wire [48:0] sum62;
	 wire [48:0] sum63;

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
	 wire [47:0] prod32;
	 wire [47:0] prod33;
	 wire [47:0] prod34;
	 wire [47:0] prod35;
	 wire [47:0] prod36;
	 wire [47:0] prod37;
	 wire [47:0] prod38;
	 wire [47:0] prod39;
	 wire [47:0] prod40;
	 wire [47:0] prod41;
	 wire [47:0] prod42;
	 wire [47:0] prod43;
	 wire [47:0] prod44;
	 wire [47:0] prod45;
	 wire [47:0] prod46;
	 wire [47:0] prod47;
	 wire [47:0] prod48;
	 wire [47:0] prod49;
	 wire [47:0] prod50;
	 wire [47:0] prod51;
	 wire [47:0] prod52;
	 wire [47:0] prod53;
	 wire [47:0] prod54;
	 wire [47:0] prod55;
	 wire [47:0] prod56;
	 wire [47:0] prod57;
	 wire [47:0] prod58;
	 wire [47:0] prod59;
	 wire [47:0] prod60;
	 wire [47:0] prod61;
	 wire [47:0] prod62;
	 wire [47:0] prod63;

	 mult_gen_0 mult_gen_0i(.CLK(clk_100Mhz), .A(fi_32), .B(C_POS_R_4), .P(prod0));
	 mult_gen_0 mult_gen_1i(.CLK(clk_100Mhz), .A(fi_33), .B(C_POS_R_12), .P(prod1));
	 mult_gen_0 mult_gen_2i(.CLK(clk_100Mhz), .A(fi_34), .B(C_POS_R_20), .P(prod2));
	 mult_gen_0 mult_gen_3i(.CLK(clk_100Mhz), .A(fi_35), .B(C_POS_R_28), .P(prod3));
	 mult_gen_0 mult_gen_4i(.CLK(clk_100Mhz), .A(fi_36), .B(C_POS_R_36), .P(prod4));
	 mult_gen_0 mult_gen_5i(.CLK(clk_100Mhz), .A(fi_37), .B(C_POS_R_44), .P(prod5));
	 mult_gen_0 mult_gen_6i(.CLK(clk_100Mhz), .A(fi_38), .B(C_POS_R_52), .P(prod6));
	 mult_gen_0 mult_gen_7i(.CLK(clk_100Mhz), .A(fi_39), .B(C_POS_R_60), .P(prod7));
	 mult_gen_0 mult_gen_8i(.CLK(clk_100Mhz), .A(fi_40), .B(C_POS_R_68), .P(prod8));
	 mult_gen_0 mult_gen_9i(.CLK(clk_100Mhz), .A(fi_41), .B(C_POS_R_76), .P(prod9));
	 mult_gen_0 mult_gen_10i(.CLK(clk_100Mhz), .A(fi_42), .B(C_POS_R_84), .P(prod10));
	 mult_gen_0 mult_gen_11i(.CLK(clk_100Mhz), .A(fi_43), .B(C_POS_R_92), .P(prod11));
	 mult_gen_0 mult_gen_12i(.CLK(clk_100Mhz), .A(fi_44), .B(C_POS_R_100), .P(prod12));
	 mult_gen_0 mult_gen_13i(.CLK(clk_100Mhz), .A(fi_45), .B(C_POS_R_108), .P(prod13));
	 mult_gen_0 mult_gen_14i(.CLK(clk_100Mhz), .A(fi_46), .B(C_POS_R_116), .P(prod14));
	 mult_gen_0 mult_gen_15i(.CLK(clk_100Mhz), .A(fi_47), .B(C_POS_R_124), .P(prod15));
	 mult_gen_0 mult_gen_16i(.CLK(clk_100Mhz), .A(fi_48), .B(C_POS_R_132), .P(prod16));
	 mult_gen_0 mult_gen_17i(.CLK(clk_100Mhz), .A(fi_49), .B(C_POS_R_140), .P(prod17));
	 mult_gen_0 mult_gen_18i(.CLK(clk_100Mhz), .A(fi_50), .B(C_POS_R_148), .P(prod18));
	 mult_gen_0 mult_gen_19i(.CLK(clk_100Mhz), .A(fi_51), .B(C_POS_R_156), .P(prod19));
	 mult_gen_0 mult_gen_20i(.CLK(clk_100Mhz), .A(fi_52), .B(C_POS_R_164), .P(prod20));
	 mult_gen_0 mult_gen_21i(.CLK(clk_100Mhz), .A(fi_53), .B(C_POS_R_172), .P(prod21));
	 mult_gen_0 mult_gen_22i(.CLK(clk_100Mhz), .A(fi_54), .B(C_POS_R_180), .P(prod22));
	 mult_gen_0 mult_gen_23i(.CLK(clk_100Mhz), .A(fi_55), .B(C_POS_R_188), .P(prod23));
	 mult_gen_0 mult_gen_24i(.CLK(clk_100Mhz), .A(fi_56), .B(C_POS_R_196), .P(prod24));
	 mult_gen_0 mult_gen_25i(.CLK(clk_100Mhz), .A(fi_57), .B(C_POS_R_204), .P(prod25));
	 mult_gen_0 mult_gen_26i(.CLK(clk_100Mhz), .A(fi_58), .B(C_POS_R_212), .P(prod26));
	 mult_gen_0 mult_gen_27i(.CLK(clk_100Mhz), .A(fi_59), .B(C_POS_R_220), .P(prod27));
	 mult_gen_0 mult_gen_28i(.CLK(clk_100Mhz), .A(fi_60), .B(C_POS_R_228), .P(prod28));
	 mult_gen_0 mult_gen_29i(.CLK(clk_100Mhz), .A(fi_61), .B(C_POS_R_236), .P(prod29));
	 mult_gen_0 mult_gen_30i(.CLK(clk_100Mhz), .A(fi_62), .B(C_POS_R_244), .P(prod30));
	 mult_gen_0 mult_gen_31i(.CLK(clk_100Mhz), .A(fi_63), .B(C_POS_R_252), .P(prod31));
	 mult_gen_0 mult_gen_32i(.CLK(clk_100Mhz), .A(fi_32), .B(C_NEG_R_4), .P(prod32));
	 mult_gen_0 mult_gen_33i(.CLK(clk_100Mhz), .A(fi_33), .B(C_NEG_R_12), .P(prod33));
	 mult_gen_0 mult_gen_34i(.CLK(clk_100Mhz), .A(fi_34), .B(C_NEG_R_20), .P(prod34));
	 mult_gen_0 mult_gen_35i(.CLK(clk_100Mhz), .A(fi_35), .B(C_NEG_R_28), .P(prod35));
	 mult_gen_0 mult_gen_36i(.CLK(clk_100Mhz), .A(fi_36), .B(C_NEG_R_36), .P(prod36));
	 mult_gen_0 mult_gen_37i(.CLK(clk_100Mhz), .A(fi_37), .B(C_NEG_R_44), .P(prod37));
	 mult_gen_0 mult_gen_38i(.CLK(clk_100Mhz), .A(fi_38), .B(C_NEG_R_52), .P(prod38));
	 mult_gen_0 mult_gen_39i(.CLK(clk_100Mhz), .A(fi_39), .B(C_NEG_R_60), .P(prod39));
	 mult_gen_0 mult_gen_40i(.CLK(clk_100Mhz), .A(fi_40), .B(C_NEG_R_68), .P(prod40));
	 mult_gen_0 mult_gen_41i(.CLK(clk_100Mhz), .A(fi_41), .B(C_NEG_R_76), .P(prod41));
	 mult_gen_0 mult_gen_42i(.CLK(clk_100Mhz), .A(fi_42), .B(C_NEG_R_84), .P(prod42));
	 mult_gen_0 mult_gen_43i(.CLK(clk_100Mhz), .A(fi_43), .B(C_NEG_R_92), .P(prod43));
	 mult_gen_0 mult_gen_44i(.CLK(clk_100Mhz), .A(fi_44), .B(C_NEG_R_100), .P(prod44));
	 mult_gen_0 mult_gen_45i(.CLK(clk_100Mhz), .A(fi_45), .B(C_NEG_R_108), .P(prod45));
	 mult_gen_0 mult_gen_46i(.CLK(clk_100Mhz), .A(fi_46), .B(C_NEG_R_116), .P(prod46));
	 mult_gen_0 mult_gen_47i(.CLK(clk_100Mhz), .A(fi_47), .B(C_NEG_R_124), .P(prod47));
	 mult_gen_0 mult_gen_48i(.CLK(clk_100Mhz), .A(fi_48), .B(C_NEG_R_132), .P(prod48));
	 mult_gen_0 mult_gen_49i(.CLK(clk_100Mhz), .A(fi_49), .B(C_NEG_R_140), .P(prod49));
	 mult_gen_0 mult_gen_50i(.CLK(clk_100Mhz), .A(fi_50), .B(C_NEG_R_148), .P(prod50));
	 mult_gen_0 mult_gen_51i(.CLK(clk_100Mhz), .A(fi_51), .B(C_NEG_R_156), .P(prod51));
	 mult_gen_0 mult_gen_52i(.CLK(clk_100Mhz), .A(fi_52), .B(C_NEG_R_164), .P(prod52));
	 mult_gen_0 mult_gen_53i(.CLK(clk_100Mhz), .A(fi_53), .B(C_NEG_R_172), .P(prod53));
	 mult_gen_0 mult_gen_54i(.CLK(clk_100Mhz), .A(fi_54), .B(C_NEG_R_180), .P(prod54));
	 mult_gen_0 mult_gen_55i(.CLK(clk_100Mhz), .A(fi_55), .B(C_NEG_R_188), .P(prod55));
	 mult_gen_0 mult_gen_56i(.CLK(clk_100Mhz), .A(fi_56), .B(C_NEG_R_196), .P(prod56));
	 mult_gen_0 mult_gen_57i(.CLK(clk_100Mhz), .A(fi_57), .B(C_NEG_R_204), .P(prod57));
	 mult_gen_0 mult_gen_58i(.CLK(clk_100Mhz), .A(fi_58), .B(C_NEG_R_212), .P(prod58));
	 mult_gen_0 mult_gen_59i(.CLK(clk_100Mhz), .A(fi_59), .B(C_NEG_R_220), .P(prod59));
	 mult_gen_0 mult_gen_60i(.CLK(clk_100Mhz), .A(fi_60), .B(C_NEG_R_228), .P(prod60));
	 mult_gen_0 mult_gen_61i(.CLK(clk_100Mhz), .A(fi_61), .B(C_NEG_R_236), .P(prod61));
	 mult_gen_0 mult_gen_62i(.CLK(clk_100Mhz), .A(fi_62), .B(C_NEG_R_244), .P(prod62));
	 mult_gen_0 mult_gen_63i(.CLK(clk_100Mhz), .A(fi_63), .B(C_NEG_R_252), .P(prod63));

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
	 c_add_0 c_add_16i(.A(prod16), .B(fi_16), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum16));
	 c_add_0 c_add_17i(.A(prod17), .B(fi_17), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum17));
	 c_add_0 c_add_18i(.A(prod18), .B(fi_18), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum18));
	 c_add_0 c_add_19i(.A(prod19), .B(fi_19), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum19));
	 c_add_0 c_add_20i(.A(prod20), .B(fi_20), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum20));
	 c_add_0 c_add_21i(.A(prod21), .B(fi_21), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum21));
	 c_add_0 c_add_22i(.A(prod22), .B(fi_22), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum22));
	 c_add_0 c_add_23i(.A(prod23), .B(fi_23), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum23));
	 c_add_0 c_add_24i(.A(prod24), .B(fi_24), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum24));
	 c_add_0 c_add_25i(.A(prod25), .B(fi_25), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum25));
	 c_add_0 c_add_26i(.A(prod26), .B(fi_26), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum26));
	 c_add_0 c_add_27i(.A(prod27), .B(fi_27), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum27));
	 c_add_0 c_add_28i(.A(prod28), .B(fi_28), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum28));
	 c_add_0 c_add_29i(.A(prod29), .B(fi_29), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum29));
	 c_add_0 c_add_30i(.A(prod30), .B(fi_30), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum30));
	 c_add_0 c_add_31i(.A(prod31), .B(fi_31), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum31));
	 c_add_0 c_add_32i(.A(prod32), .B(fi_0), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum32));
	 c_add_0 c_add_33i(.A(prod33), .B(fi_1), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum33));
	 c_add_0 c_add_34i(.A(prod34), .B(fi_2), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum34));
	 c_add_0 c_add_35i(.A(prod35), .B(fi_3), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum35));
	 c_add_0 c_add_36i(.A(prod36), .B(fi_4), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum36));
	 c_add_0 c_add_37i(.A(prod37), .B(fi_5), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum37));
	 c_add_0 c_add_38i(.A(prod38), .B(fi_6), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum38));
	 c_add_0 c_add_39i(.A(prod39), .B(fi_7), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum39));
	 c_add_0 c_add_40i(.A(prod40), .B(fi_8), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum40));
	 c_add_0 c_add_41i(.A(prod41), .B(fi_9), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum41));
	 c_add_0 c_add_42i(.A(prod42), .B(fi_10), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum42));
	 c_add_0 c_add_43i(.A(prod43), .B(fi_11), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum43));
	 c_add_0 c_add_44i(.A(prod44), .B(fi_12), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum44));
	 c_add_0 c_add_45i(.A(prod45), .B(fi_13), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum45));
	 c_add_0 c_add_46i(.A(prod46), .B(fi_14), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum46));
	 c_add_0 c_add_47i(.A(prod47), .B(fi_15), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum47));
	 c_add_0 c_add_48i(.A(prod48), .B(fi_16), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum48));
	 c_add_0 c_add_49i(.A(prod49), .B(fi_17), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum49));
	 c_add_0 c_add_50i(.A(prod50), .B(fi_18), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum50));
	 c_add_0 c_add_51i(.A(prod51), .B(fi_19), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum51));
	 c_add_0 c_add_52i(.A(prod52), .B(fi_20), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum52));
	 c_add_0 c_add_53i(.A(prod53), .B(fi_21), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum53));
	 c_add_0 c_add_54i(.A(prod54), .B(fi_22), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum54));
	 c_add_0 c_add_55i(.A(prod55), .B(fi_23), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum55));
	 c_add_0 c_add_56i(.A(prod56), .B(fi_24), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum56));
	 c_add_0 c_add_57i(.A(prod57), .B(fi_25), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum57));
	 c_add_0 c_add_58i(.A(prod58), .B(fi_26), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum58));
	 c_add_0 c_add_59i(.A(prod59), .B(fi_27), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum59));
	 c_add_0 c_add_60i(.A(prod60), .B(fi_28), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum60));
	 c_add_0 c_add_61i(.A(prod61), .B(fi_29), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum61));
	 c_add_0 c_add_62i(.A(prod62), .B(fi_30), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum62));
	 c_add_0 c_add_63i(.A(prod63), .B(fi_31), .CLK(clk_100Mhz),  .CE(1'b1), .S(sum63));

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
	 barret barret_32i(.clk_100Mhz(clk_100Mhz), .a_in(sum32), .a_out(Fi_32)); 
	 barret barret_33i(.clk_100Mhz(clk_100Mhz), .a_in(sum33), .a_out(Fi_33)); 
	 barret barret_34i(.clk_100Mhz(clk_100Mhz), .a_in(sum34), .a_out(Fi_34)); 
	 barret barret_35i(.clk_100Mhz(clk_100Mhz), .a_in(sum35), .a_out(Fi_35)); 
	 barret barret_36i(.clk_100Mhz(clk_100Mhz), .a_in(sum36), .a_out(Fi_36)); 
	 barret barret_37i(.clk_100Mhz(clk_100Mhz), .a_in(sum37), .a_out(Fi_37)); 
	 barret barret_38i(.clk_100Mhz(clk_100Mhz), .a_in(sum38), .a_out(Fi_38)); 
	 barret barret_39i(.clk_100Mhz(clk_100Mhz), .a_in(sum39), .a_out(Fi_39)); 
	 barret barret_40i(.clk_100Mhz(clk_100Mhz), .a_in(sum40), .a_out(Fi_40)); 
	 barret barret_41i(.clk_100Mhz(clk_100Mhz), .a_in(sum41), .a_out(Fi_41)); 
	 barret barret_42i(.clk_100Mhz(clk_100Mhz), .a_in(sum42), .a_out(Fi_42)); 
	 barret barret_43i(.clk_100Mhz(clk_100Mhz), .a_in(sum43), .a_out(Fi_43)); 
	 barret barret_44i(.clk_100Mhz(clk_100Mhz), .a_in(sum44), .a_out(Fi_44)); 
	 barret barret_45i(.clk_100Mhz(clk_100Mhz), .a_in(sum45), .a_out(Fi_45)); 
	 barret barret_46i(.clk_100Mhz(clk_100Mhz), .a_in(sum46), .a_out(Fi_46)); 
	 barret barret_47i(.clk_100Mhz(clk_100Mhz), .a_in(sum47), .a_out(Fi_47)); 
	 barret barret_48i(.clk_100Mhz(clk_100Mhz), .a_in(sum48), .a_out(Fi_48)); 
	 barret barret_49i(.clk_100Mhz(clk_100Mhz), .a_in(sum49), .a_out(Fi_49)); 
	 barret barret_50i(.clk_100Mhz(clk_100Mhz), .a_in(sum50), .a_out(Fi_50)); 
	 barret barret_51i(.clk_100Mhz(clk_100Mhz), .a_in(sum51), .a_out(Fi_51)); 
	 barret barret_52i(.clk_100Mhz(clk_100Mhz), .a_in(sum52), .a_out(Fi_52)); 
	 barret barret_53i(.clk_100Mhz(clk_100Mhz), .a_in(sum53), .a_out(Fi_53)); 
	 barret barret_54i(.clk_100Mhz(clk_100Mhz), .a_in(sum54), .a_out(Fi_54)); 
	 barret barret_55i(.clk_100Mhz(clk_100Mhz), .a_in(sum55), .a_out(Fi_55)); 
	 barret barret_56i(.clk_100Mhz(clk_100Mhz), .a_in(sum56), .a_out(Fi_56)); 
	 barret barret_57i(.clk_100Mhz(clk_100Mhz), .a_in(sum57), .a_out(Fi_57)); 
	 barret barret_58i(.clk_100Mhz(clk_100Mhz), .a_in(sum58), .a_out(Fi_58)); 
	 barret barret_59i(.clk_100Mhz(clk_100Mhz), .a_in(sum59), .a_out(Fi_59)); 
	 barret barret_60i(.clk_100Mhz(clk_100Mhz), .a_in(sum60), .a_out(Fi_60)); 
	 barret barret_61i(.clk_100Mhz(clk_100Mhz), .a_in(sum61), .a_out(Fi_61)); 
	 barret barret_62i(.clk_100Mhz(clk_100Mhz), .a_in(sum62), .a_out(Fi_62)); 
	 barret barret_63i(.clk_100Mhz(clk_100Mhz), .a_in(sum63), .a_out(Fi_63)); 

endmodule