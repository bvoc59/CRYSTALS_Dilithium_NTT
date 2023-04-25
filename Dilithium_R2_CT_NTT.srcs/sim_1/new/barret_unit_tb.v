`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2023 12:08:19 AM
// Design Name: 
// Module Name: barret_unit_tb
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


module barret_unit_tb();

    reg   clk_100Mhz; 
    reg  [48:0] a_in; 
    wire [23:0] a_out; 
    
    integer i; 
    integer j; 
    integer CYCLES_TO_WAIT; 
    
    //Input test vectors
	reg [48:0] test_vec_in[0:15];

	//Expected-output test vectors
	reg [23:0] test_vec_exp_out[0:15];

	initial begin
	 	 test_vec_in[0] = 49'd489561004794400;
	 	 test_vec_in[1] = 49'd177063511738327;
	 	 test_vec_in[2] = 49'd184401539358373;
	 	 test_vec_in[3] = 49'd245608830581402;
	 	 test_vec_in[4] = 49'd378287209047147;
	 	 test_vec_in[5] = 49'd155849189373538;
	 	 test_vec_in[6] = 49'd427335879058359;
	 	 test_vec_in[7] = 49'd522489207235025;
	 	 test_vec_in[8] = 49'd50225706452496;
	 	 test_vec_in[9] = 49'd29874555579978;
	 	 test_vec_in[10] = 49'd14920645035417;
	 	 test_vec_in[11] = 49'd72716533111783;
	 	 test_vec_in[12] = 49'd182768610115993;
	 	 test_vec_in[13] = 49'd420568235977580;
	 	 test_vec_in[14] = 49'd29235355699863;
	 	 test_vec_in[15] = 49'd343461724798177;
	end

	initial begin
	 	 test_vec_exp_out[0] = 49'd5996980;
	 	 test_vec_exp_out[1] = 49'd8160162;
	 	 test_vec_exp_out[2] = 49'd187919;
	 	 test_vec_exp_out[3] = 49'd2385995;
	 	 test_vec_exp_out[4] = 49'd4406922;
	 	 test_vec_exp_out[5] = 49'd7475845;
	 	 test_vec_exp_out[6] = 49'd4452210;
	 	 test_vec_exp_out[7] = 49'd8047877;
	 	 test_vec_exp_out[8] = 49'd6918922;
	 	 test_vec_exp_out[9] = 49'd3156293;
	 	 test_vec_exp_out[10] = 49'd8141528;
	 	 test_vec_exp_out[11] = 49'd6780297;
	 	 test_vec_exp_out[12] = 49'd3578406;
	 	 test_vec_exp_out[13] = 49'd641449;
	 	 test_vec_exp_out[14] = 49'd2822019;
	 	 test_vec_exp_out[15] = 49'd5054395;
	end
       
    initial begin 
        clk_100Mhz     = 1'b0; 
        i              = 0; 
        j              = 0; 
        CYCLES_TO_WAIT = 5; 
        a_in           = test_vec_in[0];
    end 

    //Clock Source: 
    always begin 
        #5 clk_100Mhz = ~clk_100Mhz; 
    end 
    
    //Test logic 
    always @ (posedge clk_100Mhz) begin 
        i = i + 1;
        if(i % CYCLES_TO_WAIT == 0 && j < 15) begin 
            if(a_out == test_vec_exp_out[j]) begin 
                $display("\t[Testbench, j = %d] PASS \n", j); 
            end 
            else begin 
                $display("\t[Testbench, j = %d] FAIL \n", j);
                $display("\t[Testbench, j = %d] Expected: %d, Recieved: %d \n", j, test_vec_exp_out[j], a_out);
            end
            j = j + 1; 
            a_in = test_vec_in[j]; 
            
        end 
    end 
    
    //Device Under Test (DUT) 
    barret barret_DUT(
        .clk_100Mhz(clk_100Mhz), 
        .a_in(a_in), 
        .a_out(a_out)
    );
    
    

endmodule
