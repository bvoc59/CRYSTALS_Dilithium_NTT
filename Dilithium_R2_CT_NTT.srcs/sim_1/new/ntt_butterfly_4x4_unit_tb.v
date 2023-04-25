`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2023 01:24:49 AM
// Design Name: 
// Module Name: ntt_butterfly_4x4_unit_tb
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


module ntt_butterfly_4x4_unit_tb();

     parameter CYCLES_TO_WAIT = 10; 
    
	 integer i; 
	 integer j; 
   
     reg clk_100Mhz;

     
     reg  [23:0] fi_0;
	 reg  [23:0] fi_1;
	 reg  [23:0] fi_2;
	 reg  [23:0] fi_3;

	 wire [23:0] Fi_0;
	 wire [23:0] Fi_1;
	 wire [23:0] Fi_2;
	 wire [23:0] Fi_3;

	 //Input test vectors: fi_0 
	 reg [23:0] test_vec_in_fi_0[0:7];

	 //Input test vectors: fi_1 
	 reg [23:0] test_vec_in_fi_1[0:7];

	 //Input test vectors: fi_2 
	 reg [23:0] test_vec_in_fi_2[0:7];

	 //Input test vectors: fi_3 
	 reg [23:0] test_vec_in_fi_3[0:7];

	 //Expected-output test vectors: Fi_0 
	 reg [23:0] test_vec_exp_out_Fi_0[0:7];

	 //Expected-output test vectors: Fi_1 
	 reg [23:0] test_vec_exp_out_Fi_1[0:7];

	 //Expected-output test vectors: Fi_2 
	 reg [23:0] test_vec_exp_out_Fi_2[0:7];

	 //Expected-output test vectors: Fi_3 
	 reg [23:0] test_vec_exp_out_Fi_3[0:7];
	 
	 initial begin 
         clk_100Mhz = 1'b0; 
     end 
     
     //Clock source 
     always begin 
        #5; clk_100Mhz = ~clk_100Mhz; 
     end 
    
     //Initialization Blocks
	 initial begin
	 	 test_vec_in_fi_0[0] = 24'd1075781;
	 	 test_vec_in_fi_1[0] = 24'd3710800;
	 	 test_vec_in_fi_2[0] = 24'd259010;
	 	 test_vec_in_fi_3[0] = 24'd7732775;

	 	 test_vec_exp_out_Fi_0[0] = 24'd1253557;
	 	 test_vec_exp_out_Fi_1[0] = 24'd1706601;
	 	 test_vec_exp_out_Fi_2[0] = 24'd898005;
	 	 test_vec_exp_out_Fi_3[0] = 24'd5714999;
	 end

	 initial begin
	 	 test_vec_in_fi_0[1] = 24'd7260950;
	 	 test_vec_in_fi_1[1] = 24'd5761137;
	 	 test_vec_in_fi_2[1] = 24'd1741078;
	 	 test_vec_in_fi_3[1] = 24'd2719574;

	 	 test_vec_exp_out_Fi_0[1] = 24'd4655354;
	 	 test_vec_exp_out_Fi_1[1] = 24'd3477626;
	 	 test_vec_exp_out_Fi_2[1] = 24'd1486129;
	 	 test_vec_exp_out_Fi_3[1] = 24'd8044648;
	 end

	 initial begin
	 	 test_vec_in_fi_0[2] = 24'd7817088;
	 	 test_vec_in_fi_1[2] = 24'd1774038;
	 	 test_vec_in_fi_2[2] = 24'd8133315;
	 	 test_vec_in_fi_3[2] = 24'd3350875;

	 	 test_vec_exp_out_Fi_0[2] = 24'd4876101;
	 	 test_vec_exp_out_Fi_1[2] = 24'd4969488;
	 	 test_vec_exp_out_Fi_2[2] = 24'd2377658;
	 	 test_vec_exp_out_Fi_3[2] = 24'd6959005;
	 end

	 initial begin
	 	 test_vec_in_fi_0[3] = 24'd2091112;
	 	 test_vec_in_fi_1[3] = 24'd3182944;
	 	 test_vec_in_fi_2[3] = 24'd7395796;
	 	 test_vec_in_fi_3[3] = 24'd3886327;

	 	 test_vec_exp_out_Fi_0[3] = 24'd3971973;
	 	 test_vec_exp_out_Fi_1[3] = 24'd137158;
	 	 test_vec_exp_out_Fi_2[3] = 24'd210251;
	 	 test_vec_exp_out_Fi_3[3] = 24'd6228730;
	 end

	 initial begin
	 	 test_vec_in_fi_0[4] = 24'd1687459;
	 	 test_vec_in_fi_1[4] = 24'd7592443;
	 	 test_vec_in_fi_2[4] = 24'd1651371;
	 	 test_vec_in_fi_3[4] = 24'd4002994;

	 	 test_vec_exp_out_Fi_0[4] = 24'd4003567;
	 	 test_vec_exp_out_Fi_1[4] = 24'd67206;
	 	 test_vec_exp_out_Fi_2[4] = 24'd7751768;
	 	 test_vec_exp_out_Fi_3[4] = 24'd6737263;
	 end

	 initial begin
	 	 test_vec_in_fi_0[5] = 24'd3579353;
	 	 test_vec_in_fi_1[5] = 24'd2533338;
	 	 test_vec_in_fi_2[5] = 24'd1512129;
	 	 test_vec_in_fi_3[5] = 24'd4865568;

	 	 test_vec_exp_out_Fi_0[5] = 24'd4415589;
	 	 test_vec_exp_out_Fi_1[5] = 24'd7696426;
	 	 test_vec_exp_out_Fi_2[5] = 24'd2743117;
	 	 test_vec_exp_out_Fi_3[5] = 24'd5750667;
	 end

	 initial begin
	 	 test_vec_in_fi_0[6] = 24'd3426322;
	 	 test_vec_in_fi_1[6] = 24'd5050482;
	 	 test_vec_in_fi_2[6] = 24'd7810668;
	 	 test_vec_in_fi_3[6] = 24'd5018164;

	 	 test_vec_exp_out_Fi_0[6] = 24'd6399015;
	 	 test_vec_exp_out_Fi_1[6] = 24'd2149737;
	 	 test_vec_exp_out_Fi_2[6] = 24'd453629;
	 	 test_vec_exp_out_Fi_3[6] = 24'd7951227;
	 end

	 initial begin
	 	 test_vec_in_fi_0[7] = 24'd735573;
	 	 test_vec_in_fi_1[7] = 24'd3688596;
	 	 test_vec_in_fi_2[7] = 24'd5018582;
	 	 test_vec_in_fi_3[7] = 24'd281937;

	 	 test_vec_exp_out_Fi_0[7] = 24'd301507;
	 	 test_vec_exp_out_Fi_1[7] = 24'd5129595;
	 	 test_vec_exp_out_Fi_2[7] = 24'd1169639;
	 	 test_vec_exp_out_Fi_3[7] = 24'd2247597;
	 end
    
    
    initial begin 
	     i = 0; 
	     j = 0;
	     fi_0 = test_vec_in_fi_0[j];
	     fi_1 = test_vec_in_fi_1[j]; 
	     fi_2 = test_vec_in_fi_2[j]; 
	     fi_3 = test_vec_in_fi_3[j]; 
	 end   
	 
	 //Test bench logic 
     always @ (posedge clk_100Mhz) begin 
        i = i + 1; 
        if(i % CYCLES_TO_WAIT == 0 && j < 8) begin    
            if(Fi_0 == test_vec_exp_out_Fi_0[j] && 
               Fi_1 == test_vec_exp_out_Fi_1[j] && 
               Fi_2 == test_vec_exp_out_Fi_2[j] && 
               Fi_3 == test_vec_exp_out_Fi_3[j]) begin 
                $display("\t[Testbench, j = %d] PASS", j); 
            end 
            else begin 
                $display("\t[Testbench, j = %d] FAIL", j); 
                $display("\t \t[Testbench, j = %d] Fi_0 Exepcted: %h", j, test_vec_exp_out_Fi_0[j]);  
                $display("\t \t[Testbench, j = %d] Fi_1 Expected: %h", j, test_vec_exp_out_Fi_1[j]);
                $display("\t \t[Testbench, j = %d] Fi_2 Exepcted: %h", j, test_vec_exp_out_Fi_2[j]);  
                $display("\t \t[Testbench, j = %d] Fi_3 Expected: %h", j, test_vec_exp_out_Fi_3[j]);
                $display("\t \t[Testbench, j = %d] Fi_0 Received: %h", j, Fi_0);
                $display("\t \t[Testbench, j = %d] Fi_1 Received: %h", j, Fi_1);
                $display("\t \t[Testbench, j = %d] Fi_0 Received: %h", j, Fi_2);
                $display("\t \t[Testbench, j = %d] Fi_1 Received: %h", j, Fi_3);
            end 
            
            j = j + 1;
            fi_0 = test_vec_in_fi_0[j];
            fi_1 = test_vec_in_fi_1[j]; 
            fi_2 = test_vec_in_fi_2[j];
            fi_3 = test_vec_in_fi_3[j]; 
                    
        end 
     end 
    
     //Device under test (DUT) 
     ntt_butterfly_4x4 ntt_butterfly_4x4_DUT(
        .clk_100Mhz(clk_100Mhz), 
        .fi_0(fi_0), 
        .fi_1(fi_1), 
        .fi_2(fi_2), 
        .fi_3(fi_3),
        .Fi_0(Fi_0), 
        .Fi_1(Fi_1),
        .Fi_2(Fi_2),
        .Fi_3(Fi_3));


endmodule
