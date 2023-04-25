`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2023 11:43:29 PM
// Design Name: 
// Module Name: barret
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


module barret(
    input clk_100Mhz, 
    input      [48:0] a_in, 
    output reg [23:0] a_out 
    );
    
    //parameter r_const = 24'd8396807; 
    parameter q_const = 24'd8380417; 
    parameter k_const =  6'd46; 
    
    wire [72:0] b1;
    wire [26:0] b2;
    wire [49:0] b3; 
    wire [50:0] b4; 
    wire [50:0] b5; 
    wire mux_en; 
    
    mult_gen_49_bit mult_gen_49_biti(.CLK(clk_100Mhz), .A(a_in), .P(b1));  
    mult_gen_27_bit mult_gen_27_biti(.CLK(clk_100Mhz), .A(b2),   .P(b3));
    
    c_sub_51_bit c_sub_51_biti0(.A(a_in),     .B({1'd0, b3}),      .CLK(clk_100Mhz), .CE(1'b1), .S(b4));
    c_sub_51_bit c_sub_51_biti1(.A(b4[48:0]), .B({27'd0, q_const}),.CLK(clk_100Mhz), .CE(1'b1), .S(b5));
    
    assign b2     = (b1 >> k_const); 
    assign mux_en = (b4 >= q_const) ? 1'b1 : 1'b0; 
   
    always @ (*) begin 
        case(mux_en)
            1'b1: a_out = b5[23:0]; 
            1'b0: a_out = b4[23:0]; 
        endcase
    end 
    
endmodule
