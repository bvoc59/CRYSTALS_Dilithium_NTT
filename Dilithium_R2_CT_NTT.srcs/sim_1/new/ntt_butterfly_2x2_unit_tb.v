`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2023 02:13:34 AM
// Design Name: 
// Module Name: ntt_butterfly_2x2_unit_tb
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


module ntt_butterfly_2x2_unit_tb();

     parameter CYCLES_TO_WAIT = 10; 
     
     integer i; 
	 integer j; 
 
     reg clk_100Mhz;
    
     reg  [23:0] fi_0;
	 reg  [23:0] fi_1;

	 wire [23:0] Fi_0;
	 wire [23:0] Fi_1;
	
	 //Input test vectors: fi_0 
	 reg [23:0] test_vec_in_fi_0[0:7];

	 //Input test vectors: fi_1 
	 reg [23:0] test_vec_in_fi_1[0:7];

	 //Expected-output test vectors: Fi_0 
	 reg [23:0] test_vec_exp_out_Fi_0[0:7];

	 //Expected-output test vectors: Fi_1 
	 reg [23:0] test_vec_exp_out_Fi_1[0:7]; 
	     
     initial begin 
         clk_100Mhz = 1'b0; 
     end 
    
     //Clock source 
     always begin 
        #5; clk_100Mhz = ~clk_100Mhz; 
     end 
   
	 //Initialization Blocks
	 initial begin
	 	 test_vec_in_fi_0[0] = 24'd3271849;
	 	 test_vec_in_fi_1[0] = 24'd7945894;

	 	 test_vec_exp_out_Fi_0[0] = 24'd3870155;
	 	 test_vec_exp_out_Fi_1[0] = 24'd2673543;
	 end

	 initial begin
	 	 test_vec_in_fi_0[1] = 24'd3248815;
	 	 test_vec_in_fi_1[1] = 24'd5672958;

	 	 test_vec_exp_out_Fi_0[1] = 24'd4050063;
	 	 test_vec_exp_out_Fi_1[1] = 24'd2447567;
	 end

	 initial begin
	 	 test_vec_in_fi_0[2] = 24'd5241336; 
	 	 test_vec_in_fi_1[2] = 24'd577640;

	 	 test_vec_exp_out_Fi_0[2] = 24'd6143024;
	 	 test_vec_exp_out_Fi_1[2] = 24'd4339648;
	 end

	 initial begin
	 	 test_vec_in_fi_0[3] = 24'd7934201;
	 	 test_vec_in_fi_1[3] = 24'd1657783;

	 	 test_vec_exp_out_Fi_0[3] = 24'd382723;
	 	 test_vec_exp_out_Fi_1[3] = 24'd7105262;
	 end

	 initial begin
	 	 test_vec_in_fi_0[4] = 24'd1571288;
	 	 test_vec_in_fi_1[4] = 24'd6230679;

	 	 test_vec_exp_out_Fi_0[4] = 24'd263414;
	 	 test_vec_exp_out_Fi_1[4] = 24'd2879162;
	 end

	 initial begin
	 	 test_vec_in_fi_0[5] = 24'd3015160;
	 	 test_vec_in_fi_1[5] = 24'd4344715;

	 	 test_vec_exp_out_Fi_0[5] = 24'd1415622;
	 	 test_vec_exp_out_Fi_1[5] = 24'd4614698;
	 end

	 initial begin
	 	 test_vec_in_fi_0[6] = 24'd7466192;
	 	 test_vec_in_fi_1[6] = 24'd6461969;

	 	 test_vec_exp_out_Fi_0[6] = 24'd3632261;
	 	 test_vec_exp_out_Fi_1[6] = 24'd2919706;
	 end

	 initial begin
	 	 test_vec_in_fi_0[7] = 24'd1587099;
	 	 test_vec_in_fi_1[7] = 24'd6850454;

	 	 test_vec_exp_out_Fi_0[7] = 24'd6234545;
	 	 test_vec_exp_out_Fi_1[7] = 24'd5320070;
	 end
	 
	 initial begin 
	     i = 0; 
	     j = 0;
	     fi_0 = test_vec_in_fi_0[j];
	     fi_1 = test_vec_in_fi_1[j]; 
	 end       
   
     //Test bench logic 
     always @ (posedge clk_100Mhz) begin 
        i = i + 1; 
        if(i % CYCLES_TO_WAIT == 0 && j < 8) begin    
            if(Fi_0 == test_vec_exp_out_Fi_0[j] && 
               Fi_1 == test_vec_exp_out_Fi_1[j]) begin 
                $display("\t[Testbench, j = %d] PASS", j); 
            end 
            else begin 
                $display("\t[Testbench, j = %d] FAIL", j); 
                $display("\t[Testbench, j = %d] Fi_0 Exepcted: %h", j, test_vec_exp_out_Fi_0[j]);  
                $display("\t[Testbench, j = %d] Fi_1 Expected: %h", j, test_vec_exp_out_Fi_1[j]);
                $display("\t[Testbench, j = %d] Fi_0 Received: %h", j, Fi_0);
                $display("\t[Testbench, j = %d] Fi_1 Received: %h", j, Fi_1);
            end 
            
            j = j + 1;
            fi_0 = test_vec_in_fi_0[j];
            fi_1 = test_vec_in_fi_1[j]; 
                    
        end 
     end 
     
     //Device under test (DUT) 
     ntt_butterfly_2x2 ntt_butterfly_2x2_DUT(
        .clk_100Mhz(clk_100Mhz), 
        .fi_0(fi_0), 
        .fi_1(fi_1), 
        .Fi_0(Fi_0), 
        .Fi_1(Fi_1));
      
endmodule
