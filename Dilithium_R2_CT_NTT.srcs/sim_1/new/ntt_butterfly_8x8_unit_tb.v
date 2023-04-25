`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2023 01:24:49 AM
// Design Name: 
// Module Name: ntt_butterfly_8x8_unit_tb
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


module ntt_butterfly_8x8_unit_tb();

     parameter CYCLES_TO_WAIT = 10; 
    
	 integer i; 
	 integer j; 
   
     reg clk_100Mhz;

  	 reg  [23:0] fi_0;
	 reg  [23:0] fi_1;
	 reg  [23:0] fi_2;
	 reg  [23:0] fi_3;
	 reg  [23:0] fi_4;
	 reg  [23:0] fi_5;
	 reg  [23:0] fi_6;
	 reg  [23:0] fi_7;

	 wire [23:0] Fi_0;
	 wire [23:0] Fi_1;
	 wire [23:0] Fi_2;
	 wire [23:0] Fi_3;
	 wire [23:0] Fi_4;
	 wire [23:0] Fi_5;
	 wire [23:0] Fi_6;
	 wire [23:0] Fi_7;

	 //Input test vectors: fi_0 
	 reg [23:0] test_vec_in_fi_0[0:7];

	 //Input test vectors: fi_1 
	 reg [23:0] test_vec_in_fi_1[0:7];

	 //Input test vectors: fi_2 
	 reg [23:0] test_vec_in_fi_2[0:7];

	 //Input test vectors: fi_3 
	 reg [23:0] test_vec_in_fi_3[0:7];

	 //Input test vectors: fi_4 
	 reg [23:0] test_vec_in_fi_4[0:7];

	 //Input test vectors: fi_5 
	 reg [23:0] test_vec_in_fi_5[0:7];

	 //Input test vectors: fi_6 
	 reg [23:0] test_vec_in_fi_6[0:7];

	 //Input test vectors: fi_7 
	 reg [23:0] test_vec_in_fi_7[0:7];

	 //Expected-output test vectors: Fi_0 
	 reg [23:0] test_vec_exp_out_Fi_0[0:7];

	 //Expected-output test vectors: Fi_1 
	 reg [23:0] test_vec_exp_out_Fi_1[0:7];

	 //Expected-output test vectors: Fi_2 
	 reg [23:0] test_vec_exp_out_Fi_2[0:7];

	 //Expected-output test vectors: Fi_3 
	 reg [23:0] test_vec_exp_out_Fi_3[0:7];

	 //Expected-output test vectors: Fi_4 
	 reg [23:0] test_vec_exp_out_Fi_4[0:7];

	 //Expected-output test vectors: Fi_5 
	 reg [23:0] test_vec_exp_out_Fi_5[0:7];

	 //Expected-output test vectors: Fi_6 
	 reg [23:0] test_vec_exp_out_Fi_6[0:7];

	 //Expected-output test vectors: Fi_7 
	 reg [23:0] test_vec_exp_out_Fi_7[0:7];
	 
	 initial begin 
         clk_100Mhz = 1'b0; 
     end 
     
     //Clock source 
     always begin 
        #5; clk_100Mhz = ~clk_100Mhz; 
     end 

	 //Initialization Blocks
	 initial begin
	 	 test_vec_in_fi_0[0] = 24'd6160794;
	 	 test_vec_in_fi_1[0] = 24'd3729094;
	 	 test_vec_in_fi_2[0] = 24'd821436;
	 	 test_vec_in_fi_3[0] = 24'd1638510;
	 	 test_vec_in_fi_4[0] = 24'd7514611;
	 	 test_vec_in_fi_5[0] = 24'd6118607;
	 	 test_vec_in_fi_6[0] = 24'd5530952;
	 	 test_vec_in_fi_7[0] = 24'd7342218;

	 	 test_vec_exp_out_Fi_0[0] = 24'd5669706;
	 	 test_vec_exp_out_Fi_1[0] = 24'd5935776;
	 	 test_vec_exp_out_Fi_2[0] = 24'd2835773;
	 	 test_vec_exp_out_Fi_3[0] = 24'd7778795;
	 	 test_vec_exp_out_Fi_4[0] = 24'd6651882;
	 	 test_vec_exp_out_Fi_5[0] = 24'd1522412;
	 	 test_vec_exp_out_Fi_6[0] = 24'd7187516;
	 	 test_vec_exp_out_Fi_7[0] = 24'd3878642;
	 end

	 initial begin
	 	 test_vec_in_fi_0[1] = 24'd6876389;
	 	 test_vec_in_fi_1[1] = 24'd1975857;
	 	 test_vec_in_fi_2[1] = 24'd4602930;
	 	 test_vec_in_fi_3[1] = 24'd7808932;
	 	 test_vec_in_fi_4[1] = 24'd283156;
	 	 test_vec_in_fi_5[1] = 24'd8356797;
	 	 test_vec_in_fi_6[1] = 24'd80761;
	 	 test_vec_in_fi_7[1] = 24'd7536007;

	 	 test_vec_exp_out_Fi_0[1] = 24'd2728632;
	 	 test_vec_exp_out_Fi_1[1] = 24'd2113095;
	 	 test_vec_exp_out_Fi_2[1] = 24'd3795874;
	 	 test_vec_exp_out_Fi_3[1] = 24'd5921040;
	 	 test_vec_exp_out_Fi_4[1] = 24'd2643729;
	 	 test_vec_exp_out_Fi_5[1] = 24'd1838619;
	 	 test_vec_exp_out_Fi_6[1] = 24'd5409986;
	 	 test_vec_exp_out_Fi_7[1] = 24'd1316407;
	 end

	 initial begin
	 	 test_vec_in_fi_0[2] = 24'd1244392;
	 	 test_vec_in_fi_1[2] = 24'd3230516;
	 	 test_vec_in_fi_2[2] = 24'd6747272;
	 	 test_vec_in_fi_3[2] = 24'd1042654;
	 	 test_vec_in_fi_4[2] = 24'd2464511;
	 	 test_vec_in_fi_5[2] = 24'd2892116;
	 	 test_vec_in_fi_6[2] = 24'd5141250;
	 	 test_vec_in_fi_7[2] = 24'd7534089;

	 	 test_vec_exp_out_Fi_0[2] = 24'd4768373;
	 	 test_vec_exp_out_Fi_1[2] = 24'd925230;
	 	 test_vec_exp_out_Fi_2[2] = 24'd5392395;
	 	 test_vec_exp_out_Fi_3[2] = 24'd5032258;
	 	 test_vec_exp_out_Fi_4[2] = 24'd6100828;
	 	 test_vec_exp_out_Fi_5[2] = 24'd5535802;
	 	 test_vec_exp_out_Fi_6[2] = 24'd8102149;
	 	 test_vec_exp_out_Fi_7[2] = 24'd5433467;
	 end

	 initial begin
	 	 test_vec_in_fi_0[3] = 24'd835924;
	 	 test_vec_in_fi_1[3] = 24'd6030074;
	 	 test_vec_in_fi_2[3] = 24'd1887552;
	 	 test_vec_in_fi_3[3] = 24'd5492287;
	 	 test_vec_in_fi_4[3] = 24'd2226060;
	 	 test_vec_in_fi_5[3] = 24'd1897376;
	 	 test_vec_in_fi_6[3] = 24'd5856029;
	 	 test_vec_in_fi_7[3] = 24'd3248945;

	 	 test_vec_exp_out_Fi_0[3] = 24'd6479918;
	 	 test_vec_exp_out_Fi_1[3] = 24'd5076546;
	 	 test_vec_exp_out_Fi_2[3] = 24'd4350607;
	 	 test_vec_exp_out_Fi_3[3] = 24'd6256317;
	 	 test_vec_exp_out_Fi_4[3] = 24'd3572347;
	 	 test_vec_exp_out_Fi_5[3] = 24'd6983602;
	 	 test_vec_exp_out_Fi_6[3] = 24'd7804914;
	 	 test_vec_exp_out_Fi_7[3] = 24'd4728257;
	 end

	 initial begin
	 	 test_vec_in_fi_0[4] = 24'd2113451;
	 	 test_vec_in_fi_1[4] = 24'd3390569;
	 	 test_vec_in_fi_2[4] = 24'd5629027;
	 	 test_vec_in_fi_3[4] = 24'd5900066;
	 	 test_vec_in_fi_4[4] = 24'd5492090;
	 	 test_vec_in_fi_5[4] = 24'd2181125;
	 	 test_vec_in_fi_6[4] = 24'd6374548;
	 	 test_vec_in_fi_7[4] = 24'd1865695;

	 	 test_vec_exp_out_Fi_0[4] = 24'd3175772;
	 	 test_vec_exp_out_Fi_1[4] = 24'd904055;
	 	 test_vec_exp_out_Fi_2[4] = 24'd512679;
	 	 test_vec_exp_out_Fi_3[4] = 24'd4760456;
	 	 test_vec_exp_out_Fi_4[4] = 24'd1051130;
	 	 test_vec_exp_out_Fi_5[4] = 24'd5877083;
	 	 test_vec_exp_out_Fi_6[4] = 24'd2364958;
	 	 test_vec_exp_out_Fi_7[4] = 24'd7039676;
	 end

	 initial begin
	 	 test_vec_in_fi_0[5] = 24'd6889110;
	 	 test_vec_in_fi_1[5] = 24'd2253402;
	 	 test_vec_in_fi_2[5] = 24'd7538125;
	 	 test_vec_in_fi_3[5] = 24'd4834889;
	 	 test_vec_in_fi_4[5] = 24'd4888133;
	 	 test_vec_in_fi_5[5] = 24'd7304219;
	 	 test_vec_in_fi_6[5] = 24'd7240836;
	 	 test_vec_in_fi_7[5] = 24'd1347179;

	 	 test_vec_exp_out_Fi_0[5] = 24'd950864;
	 	 test_vec_exp_out_Fi_1[5] = 24'd4613492;
	 	 test_vec_exp_out_Fi_2[5] = 24'd457053;
	 	 test_vec_exp_out_Fi_3[5] = 24'd3373799;
	 	 test_vec_exp_out_Fi_4[5] = 24'd4446939;
	 	 test_vec_exp_out_Fi_5[5] = 24'd8273729;
	 	 test_vec_exp_out_Fi_6[5] = 24'd6238780;
	 	 test_vec_exp_out_Fi_7[5] = 24'd6295979;
	 end

	 initial begin
	 	 test_vec_in_fi_0[6] = 24'd3536705;
	 	 test_vec_in_fi_1[6] = 24'd3058919;
	 	 test_vec_in_fi_2[6] = 24'd3474614;
	 	 test_vec_in_fi_3[6] = 24'd5554529;
	 	 test_vec_in_fi_4[6] = 24'd6723010;
	 	 test_vec_in_fi_5[6] = 24'd6107763;
	 	 test_vec_in_fi_6[6] = 24'd4994185;
	 	 test_vec_in_fi_7[6] = 24'd3280394;

	 	 test_vec_exp_out_Fi_0[6] = 24'd3753375;
	 	 test_vec_exp_out_Fi_1[6] = 24'd320226;
	 	 test_vec_exp_out_Fi_2[6] = 24'd6281642;
	 	 test_vec_exp_out_Fi_3[6] = 24'd6876327;
	 	 test_vec_exp_out_Fi_4[6] = 24'd3320035;
	 	 test_vec_exp_out_Fi_5[6] = 24'd5797612;
	 	 test_vec_exp_out_Fi_6[6] = 24'd667586;
	 	 test_vec_exp_out_Fi_7[6] = 24'd4232731;
	 end

	 initial begin
	 	 test_vec_in_fi_0[7] = 24'd6510849;
	 	 test_vec_in_fi_1[7] = 24'd1126108;
	 	 test_vec_in_fi_2[7] = 24'd6161972;
	 	 test_vec_in_fi_3[7] = 24'd906439;
	 	 test_vec_in_fi_4[7] = 24'd1310684;
	 	 test_vec_in_fi_5[7] = 24'd6419979;
	 	 test_vec_in_fi_6[7] = 24'd5670648;
	 	 test_vec_in_fi_7[7] = 24'd5782392;

	 	 test_vec_exp_out_Fi_0[7] = 24'd1384189;
	 	 test_vec_exp_out_Fi_1[7] = 24'd1974865;
	 	 test_vec_exp_out_Fi_2[7] = 24'd1453786;
	 	 test_vec_exp_out_Fi_3[7] = 24'd8198446;
	 	 test_vec_exp_out_Fi_4[7] = 24'd3257092;
	 	 test_vec_exp_out_Fi_5[7] = 24'd277351;
	 	 test_vec_exp_out_Fi_6[7] = 24'd2489741;
	 	 test_vec_exp_out_Fi_7[7] = 24'd1994849;
	 end   

    
    
    initial begin 
	     i = 0; 
	     j = 0;
	     fi_0 = test_vec_in_fi_0[j];
	     fi_1 = test_vec_in_fi_1[j]; 
	     fi_2 = test_vec_in_fi_2[j]; 
	     fi_3 = test_vec_in_fi_3[j]; 
	     fi_4 = test_vec_in_fi_4[j];
	     fi_5 = test_vec_in_fi_5[j]; 
	     fi_6 = test_vec_in_fi_6[j]; 
	     fi_7 = test_vec_in_fi_7[j]; 
	 end   
	 
	 //Test bench logic 
     always @ (posedge clk_100Mhz) begin 
        i = i + 1; 
        if(i % CYCLES_TO_WAIT == 0 && j < 8) begin    
            if(Fi_0 == test_vec_exp_out_Fi_0[j] && 
               Fi_1 == test_vec_exp_out_Fi_1[j] && 
               Fi_2 == test_vec_exp_out_Fi_2[j] && 
               Fi_3 == test_vec_exp_out_Fi_3[j] && 
               Fi_4 == test_vec_exp_out_Fi_4[j] && 
               Fi_5 == test_vec_exp_out_Fi_5[j] && 
               Fi_6 == test_vec_exp_out_Fi_6[j] && 
               Fi_7 == test_vec_exp_out_Fi_7[j]) begin 
                $display("\t[Testbench, j = %d] PASS", j); 
            end 
            else begin 
                $display("\t[Testbench, j = %d] FAIL", j); 
                
                $display("\t \t[Testbench, j = %d] Fi_0 Exepcted: %h", j, test_vec_exp_out_Fi_0[j]);  
                $display("\t \t[Testbench, j = %d] Fi_1 Expected: %h", j, test_vec_exp_out_Fi_1[j]);
                $display("\t \t[Testbench, j = %d] Fi_2 Exepcted: %h", j, test_vec_exp_out_Fi_2[j]);  
                $display("\t \t[Testbench, j = %d] Fi_3 Expected: %h", j, test_vec_exp_out_Fi_3[j]);
                $display("\t \t[Testbench, j = %d] Fi_4 Exepcted: %h", j, test_vec_exp_out_Fi_4[j]);  
                $display("\t \t[Testbench, j = %d] Fi_5 Expected: %h", j, test_vec_exp_out_Fi_5[j]);
                $display("\t \t[Testbench, j = %d] Fi_6 Exepcted: %h", j, test_vec_exp_out_Fi_6[j]);  
                $display("\t \t[Testbench, j = %d] Fi_7 Expected: %h", j, test_vec_exp_out_Fi_7[j]);
                
                $display("\t \t[Testbench, j = %d] Fi_0 Received: %h", j, Fi_0);
                $display("\t \t[Testbench, j = %d] Fi_1 Received: %h", j, Fi_1);
                $display("\t \t[Testbench, j = %d] Fi_2 Received: %h", j, Fi_2);
                $display("\t \t[Testbench, j = %d] Fi_3 Received: %h", j, Fi_3);
                $display("\t \t[Testbench, j = %d] Fi_4 Received: %h", j, Fi_4);
                $display("\t \t[Testbench, j = %d] Fi_5 Received: %h", j, Fi_5);
                $display("\t \t[Testbench, j = %d] Fi_6 Received: %h", j, Fi_6);
                $display("\t \t[Testbench, j = %d] Fi_7 Received: %h", j, Fi_7);
                
            end 
            
            j = j + 1;
            fi_0 = test_vec_in_fi_0[j];
            fi_1 = test_vec_in_fi_1[j]; 
            fi_2 = test_vec_in_fi_2[j];
            fi_3 = test_vec_in_fi_3[j]; 
            fi_4 = test_vec_in_fi_4[j];
            fi_5 = test_vec_in_fi_5[j]; 
            fi_6 = test_vec_in_fi_6[j];
            fi_7 = test_vec_in_fi_7[j]; 
                    
        end 
     end 
    
     //Device under test (DUT) 
     ntt_butterfly_8x8 ntt_butterfly_8x8_DUT(
        .clk_100Mhz(clk_100Mhz), 
        .fi_0(fi_0), 
        .fi_1(fi_1), 
        .fi_2(fi_2), 
        .fi_3(fi_3),
        .fi_4(fi_4), 
        .fi_5(fi_5), 
        .fi_6(fi_6), 
        .fi_7(fi_7),
        .Fi_0(Fi_0), 
        .Fi_1(Fi_1),
        .Fi_2(Fi_2),
        .Fi_3(Fi_3),
        .Fi_4(Fi_4), 
        .Fi_5(Fi_5),
        .Fi_6(Fi_6),
        .Fi_7(Fi_7));

endmodule
