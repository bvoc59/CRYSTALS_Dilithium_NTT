`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2023 10:38:05 PM
// Design Name: 
// Module Name: ntt_core_demux
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

module ntt_core_demux( 
	 input clk_100Mhz,
	 input [7:0] index, 
	 input [23:0] ntt_data_in, 
	 output reg [23:0] ntt_core_in0, 
	 output reg [23:0] ntt_core_in1, 
	 output reg [23:0] ntt_core_in2, 
	 output reg [23:0] ntt_core_in3, 
	 output reg [23:0] ntt_core_in4, 
	 output reg [23:0] ntt_core_in5, 
	 output reg [23:0] ntt_core_in6, 
	 output reg [23:0] ntt_core_in7, 
	 output reg [23:0] ntt_core_in8, 
	 output reg [23:0] ntt_core_in9, 
	 output reg [23:0] ntt_core_in10, 
	 output reg [23:0] ntt_core_in11, 
	 output reg [23:0] ntt_core_in12, 
	 output reg [23:0] ntt_core_in13, 
	 output reg [23:0] ntt_core_in14, 
	 output reg [23:0] ntt_core_in15, 
	 output reg [23:0] ntt_core_in16, 
	 output reg [23:0] ntt_core_in17, 
	 output reg [23:0] ntt_core_in18, 
	 output reg [23:0] ntt_core_in19, 
	 output reg [23:0] ntt_core_in20, 
	 output reg [23:0] ntt_core_in21, 
	 output reg [23:0] ntt_core_in22, 
	 output reg [23:0] ntt_core_in23, 
	 output reg [23:0] ntt_core_in24, 
	 output reg [23:0] ntt_core_in25, 
	 output reg [23:0] ntt_core_in26, 
	 output reg [23:0] ntt_core_in27, 
	 output reg [23:0] ntt_core_in28, 
	 output reg [23:0] ntt_core_in29, 
	 output reg [23:0] ntt_core_in30, 
	 output reg [23:0] ntt_core_in31, 
	 output reg [23:0] ntt_core_in32, 
	 output reg [23:0] ntt_core_in33, 
	 output reg [23:0] ntt_core_in34, 
	 output reg [23:0] ntt_core_in35, 
	 output reg [23:0] ntt_core_in36, 
	 output reg [23:0] ntt_core_in37, 
	 output reg [23:0] ntt_core_in38, 
	 output reg [23:0] ntt_core_in39, 
	 output reg [23:0] ntt_core_in40, 
	 output reg [23:0] ntt_core_in41, 
	 output reg [23:0] ntt_core_in42, 
	 output reg [23:0] ntt_core_in43, 
	 output reg [23:0] ntt_core_in44, 
	 output reg [23:0] ntt_core_in45, 
	 output reg [23:0] ntt_core_in46, 
	 output reg [23:0] ntt_core_in47, 
	 output reg [23:0] ntt_core_in48, 
	 output reg [23:0] ntt_core_in49, 
	 output reg [23:0] ntt_core_in50, 
	 output reg [23:0] ntt_core_in51, 
	 output reg [23:0] ntt_core_in52, 
	 output reg [23:0] ntt_core_in53, 
	 output reg [23:0] ntt_core_in54, 
	 output reg [23:0] ntt_core_in55, 
	 output reg [23:0] ntt_core_in56, 
	 output reg [23:0] ntt_core_in57, 
	 output reg [23:0] ntt_core_in58, 
	 output reg [23:0] ntt_core_in59, 
	 output reg [23:0] ntt_core_in60, 
	 output reg [23:0] ntt_core_in61, 
	 output reg [23:0] ntt_core_in62, 
	 output reg [23:0] ntt_core_in63, 
	 output reg [23:0] ntt_core_in64, 
	 output reg [23:0] ntt_core_in65, 
	 output reg [23:0] ntt_core_in66, 
	 output reg [23:0] ntt_core_in67, 
	 output reg [23:0] ntt_core_in68, 
	 output reg [23:0] ntt_core_in69, 
	 output reg [23:0] ntt_core_in70, 
	 output reg [23:0] ntt_core_in71, 
	 output reg [23:0] ntt_core_in72, 
	 output reg [23:0] ntt_core_in73, 
	 output reg [23:0] ntt_core_in74, 
	 output reg [23:0] ntt_core_in75, 
	 output reg [23:0] ntt_core_in76, 
	 output reg [23:0] ntt_core_in77, 
	 output reg [23:0] ntt_core_in78, 
	 output reg [23:0] ntt_core_in79, 
	 output reg [23:0] ntt_core_in80, 
	 output reg [23:0] ntt_core_in81, 
	 output reg [23:0] ntt_core_in82, 
	 output reg [23:0] ntt_core_in83, 
	 output reg [23:0] ntt_core_in84, 
	 output reg [23:0] ntt_core_in85, 
	 output reg [23:0] ntt_core_in86, 
	 output reg [23:0] ntt_core_in87, 
	 output reg [23:0] ntt_core_in88, 
	 output reg [23:0] ntt_core_in89, 
	 output reg [23:0] ntt_core_in90, 
	 output reg [23:0] ntt_core_in91, 
	 output reg [23:0] ntt_core_in92, 
	 output reg [23:0] ntt_core_in93, 
	 output reg [23:0] ntt_core_in94, 
	 output reg [23:0] ntt_core_in95, 
	 output reg [23:0] ntt_core_in96, 
	 output reg [23:0] ntt_core_in97, 
	 output reg [23:0] ntt_core_in98, 
	 output reg [23:0] ntt_core_in99, 
	 output reg [23:0] ntt_core_in100, 
	 output reg [23:0] ntt_core_in101, 
	 output reg [23:0] ntt_core_in102, 
	 output reg [23:0] ntt_core_in103, 
	 output reg [23:0] ntt_core_in104, 
	 output reg [23:0] ntt_core_in105, 
	 output reg [23:0] ntt_core_in106, 
	 output reg [23:0] ntt_core_in107, 
	 output reg [23:0] ntt_core_in108, 
	 output reg [23:0] ntt_core_in109, 
	 output reg [23:0] ntt_core_in110, 
	 output reg [23:0] ntt_core_in111, 
	 output reg [23:0] ntt_core_in112, 
	 output reg [23:0] ntt_core_in113, 
	 output reg [23:0] ntt_core_in114, 
	 output reg [23:0] ntt_core_in115, 
	 output reg [23:0] ntt_core_in116, 
	 output reg [23:0] ntt_core_in117, 
	 output reg [23:0] ntt_core_in118, 
	 output reg [23:0] ntt_core_in119, 
	 output reg [23:0] ntt_core_in120, 
	 output reg [23:0] ntt_core_in121, 
	 output reg [23:0] ntt_core_in122, 
	 output reg [23:0] ntt_core_in123, 
	 output reg [23:0] ntt_core_in124, 
	 output reg [23:0] ntt_core_in125, 
	 output reg [23:0] ntt_core_in126, 
	 output reg [23:0] ntt_core_in127, 
	 output reg [23:0] ntt_core_in128, 
	 output reg [23:0] ntt_core_in129, 
	 output reg [23:0] ntt_core_in130, 
	 output reg [23:0] ntt_core_in131, 
	 output reg [23:0] ntt_core_in132, 
	 output reg [23:0] ntt_core_in133, 
	 output reg [23:0] ntt_core_in134, 
	 output reg [23:0] ntt_core_in135, 
	 output reg [23:0] ntt_core_in136, 
	 output reg [23:0] ntt_core_in137, 
	 output reg [23:0] ntt_core_in138, 
	 output reg [23:0] ntt_core_in139, 
	 output reg [23:0] ntt_core_in140, 
	 output reg [23:0] ntt_core_in141, 
	 output reg [23:0] ntt_core_in142, 
	 output reg [23:0] ntt_core_in143, 
	 output reg [23:0] ntt_core_in144, 
	 output reg [23:0] ntt_core_in145, 
	 output reg [23:0] ntt_core_in146, 
	 output reg [23:0] ntt_core_in147, 
	 output reg [23:0] ntt_core_in148, 
	 output reg [23:0] ntt_core_in149, 
	 output reg [23:0] ntt_core_in150, 
	 output reg [23:0] ntt_core_in151, 
	 output reg [23:0] ntt_core_in152, 
	 output reg [23:0] ntt_core_in153, 
	 output reg [23:0] ntt_core_in154, 
	 output reg [23:0] ntt_core_in155, 
	 output reg [23:0] ntt_core_in156, 
	 output reg [23:0] ntt_core_in157, 
	 output reg [23:0] ntt_core_in158, 
	 output reg [23:0] ntt_core_in159, 
	 output reg [23:0] ntt_core_in160, 
	 output reg [23:0] ntt_core_in161, 
	 output reg [23:0] ntt_core_in162, 
	 output reg [23:0] ntt_core_in163, 
	 output reg [23:0] ntt_core_in164, 
	 output reg [23:0] ntt_core_in165, 
	 output reg [23:0] ntt_core_in166, 
	 output reg [23:0] ntt_core_in167, 
	 output reg [23:0] ntt_core_in168, 
	 output reg [23:0] ntt_core_in169, 
	 output reg [23:0] ntt_core_in170, 
	 output reg [23:0] ntt_core_in171, 
	 output reg [23:0] ntt_core_in172, 
	 output reg [23:0] ntt_core_in173, 
	 output reg [23:0] ntt_core_in174, 
	 output reg [23:0] ntt_core_in175, 
	 output reg [23:0] ntt_core_in176, 
	 output reg [23:0] ntt_core_in177, 
	 output reg [23:0] ntt_core_in178, 
	 output reg [23:0] ntt_core_in179, 
	 output reg [23:0] ntt_core_in180, 
	 output reg [23:0] ntt_core_in181, 
	 output reg [23:0] ntt_core_in182, 
	 output reg [23:0] ntt_core_in183, 
	 output reg [23:0] ntt_core_in184, 
	 output reg [23:0] ntt_core_in185, 
	 output reg [23:0] ntt_core_in186, 
	 output reg [23:0] ntt_core_in187, 
	 output reg [23:0] ntt_core_in188, 
	 output reg [23:0] ntt_core_in189, 
	 output reg [23:0] ntt_core_in190, 
	 output reg [23:0] ntt_core_in191, 
	 output reg [23:0] ntt_core_in192, 
	 output reg [23:0] ntt_core_in193, 
	 output reg [23:0] ntt_core_in194, 
	 output reg [23:0] ntt_core_in195, 
	 output reg [23:0] ntt_core_in196, 
	 output reg [23:0] ntt_core_in197, 
	 output reg [23:0] ntt_core_in198, 
	 output reg [23:0] ntt_core_in199, 
	 output reg [23:0] ntt_core_in200, 
	 output reg [23:0] ntt_core_in201, 
	 output reg [23:0] ntt_core_in202, 
	 output reg [23:0] ntt_core_in203, 
	 output reg [23:0] ntt_core_in204, 
	 output reg [23:0] ntt_core_in205, 
	 output reg [23:0] ntt_core_in206, 
	 output reg [23:0] ntt_core_in207, 
	 output reg [23:0] ntt_core_in208, 
	 output reg [23:0] ntt_core_in209, 
	 output reg [23:0] ntt_core_in210, 
	 output reg [23:0] ntt_core_in211, 
	 output reg [23:0] ntt_core_in212, 
	 output reg [23:0] ntt_core_in213, 
	 output reg [23:0] ntt_core_in214, 
	 output reg [23:0] ntt_core_in215, 
	 output reg [23:0] ntt_core_in216, 
	 output reg [23:0] ntt_core_in217, 
	 output reg [23:0] ntt_core_in218, 
	 output reg [23:0] ntt_core_in219, 
	 output reg [23:0] ntt_core_in220, 
	 output reg [23:0] ntt_core_in221, 
	 output reg [23:0] ntt_core_in222, 
	 output reg [23:0] ntt_core_in223, 
	 output reg [23:0] ntt_core_in224, 
	 output reg [23:0] ntt_core_in225, 
	 output reg [23:0] ntt_core_in226, 
	 output reg [23:0] ntt_core_in227, 
	 output reg [23:0] ntt_core_in228, 
	 output reg [23:0] ntt_core_in229, 
	 output reg [23:0] ntt_core_in230, 
	 output reg [23:0] ntt_core_in231, 
	 output reg [23:0] ntt_core_in232, 
	 output reg [23:0] ntt_core_in233, 
	 output reg [23:0] ntt_core_in234, 
	 output reg [23:0] ntt_core_in235, 
	 output reg [23:0] ntt_core_in236, 
	 output reg [23:0] ntt_core_in237, 
	 output reg [23:0] ntt_core_in238, 
	 output reg [23:0] ntt_core_in239, 
	 output reg [23:0] ntt_core_in240, 
	 output reg [23:0] ntt_core_in241, 
	 output reg [23:0] ntt_core_in242, 
	 output reg [23:0] ntt_core_in243, 
	 output reg [23:0] ntt_core_in244, 
	 output reg [23:0] ntt_core_in245, 
	 output reg [23:0] ntt_core_in246, 
	 output reg [23:0] ntt_core_in247, 
	 output reg [23:0] ntt_core_in248, 
	 output reg [23:0] ntt_core_in249, 
	 output reg [23:0] ntt_core_in250, 
	 output reg [23:0] ntt_core_in251, 
	 output reg [23:0] ntt_core_in252, 
	 output reg [23:0] ntt_core_in253, 
	 output reg [23:0] ntt_core_in254, 
	 output reg [23:0] ntt_core_in255); 

	 always @(posedge clk_100Mhz) begin 
	 	 if(index == 8'd0) begin 
	 	 	 ntt_core_in0 <= ntt_data_in; 
	 	 end
	 	 else if(index == 8'd1) begin 
	 	 	 ntt_core_in1 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd2) begin 
	 	 	 ntt_core_in2 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd3) begin 
	 	 	 ntt_core_in3 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd4) begin 
	 	 	 ntt_core_in4 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd5) begin 
	 	 	 ntt_core_in5 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd6) begin 
	 	 	 ntt_core_in6 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd7) begin 
	 	 	 ntt_core_in7 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd8) begin 
	 	 	 ntt_core_in8 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd9) begin 
	 	 	 ntt_core_in9 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd10) begin 
	 	 	 ntt_core_in10 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd11) begin 
	 	 	 ntt_core_in11 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd12) begin 
	 	 	 ntt_core_in12 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd13) begin 
	 	 	 ntt_core_in13 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd14) begin 
	 	 	 ntt_core_in14 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd15) begin 
	 	 	 ntt_core_in15 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd16) begin 
	 	 	 ntt_core_in16 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd17) begin 
	 	 	 ntt_core_in17 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd18) begin 
	 	 	 ntt_core_in18 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd19) begin 
	 	 	 ntt_core_in19 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd20) begin 
	 	 	 ntt_core_in20 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd21) begin 
	 	 	 ntt_core_in21 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd22) begin 
	 	 	 ntt_core_in22 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd23) begin 
	 	 	 ntt_core_in23 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd24) begin 
	 	 	 ntt_core_in24 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd25) begin 
	 	 	 ntt_core_in25 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd26) begin 
	 	 	 ntt_core_in26 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd27) begin 
	 	 	 ntt_core_in27 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd28) begin 
	 	 	 ntt_core_in28 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd29) begin 
	 	 	 ntt_core_in29 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd30) begin 
	 	 	 ntt_core_in30 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd31) begin 
	 	 	 ntt_core_in31 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd32) begin 
	 	 	 ntt_core_in32 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd33) begin 
	 	 	 ntt_core_in33 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd34) begin 
	 	 	 ntt_core_in34 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd35) begin 
	 	 	 ntt_core_in35 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd36) begin 
	 	 	 ntt_core_in36 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd37) begin 
	 	 	 ntt_core_in37 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd38) begin 
	 	 	 ntt_core_in38 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd39) begin 
	 	 	 ntt_core_in39 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd40) begin 
	 	 	 ntt_core_in40 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd41) begin 
	 	 	 ntt_core_in41 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd42) begin 
	 	 	 ntt_core_in42 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd43) begin 
	 	 	 ntt_core_in43 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd44) begin 
	 	 	 ntt_core_in44 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd45) begin 
	 	 	 ntt_core_in45 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd46) begin 
	 	 	 ntt_core_in46 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd47) begin 
	 	 	 ntt_core_in47 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd48) begin 
	 	 	 ntt_core_in48 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd49) begin 
	 	 	 ntt_core_in49 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd50) begin 
	 	 	 ntt_core_in50 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd51) begin 
	 	 	 ntt_core_in51 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd52) begin 
	 	 	 ntt_core_in52 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd53) begin 
	 	 	 ntt_core_in53 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd54) begin 
	 	 	 ntt_core_in54 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd55) begin 
	 	 	 ntt_core_in55 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd56) begin 
	 	 	 ntt_core_in56 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd57) begin 
	 	 	 ntt_core_in57 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd58) begin 
	 	 	 ntt_core_in58 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd59) begin 
	 	 	 ntt_core_in59 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd60) begin 
	 	 	 ntt_core_in60 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd61) begin 
	 	 	 ntt_core_in61 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd62) begin 
	 	 	 ntt_core_in62 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd63) begin 
	 	 	 ntt_core_in63 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd64) begin 
	 	 	 ntt_core_in64 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd65) begin 
	 	 	 ntt_core_in65 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd66) begin 
	 	 	 ntt_core_in66 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd67) begin 
	 	 	 ntt_core_in67 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd68) begin 
	 	 	 ntt_core_in68 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd69) begin 
	 	 	 ntt_core_in69 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd70) begin 
	 	 	 ntt_core_in70 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd71) begin 
	 	 	 ntt_core_in71 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd72) begin 
	 	 	 ntt_core_in72 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd73) begin 
	 	 	 ntt_core_in73 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd74) begin 
	 	 	 ntt_core_in74 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd75) begin 
	 	 	 ntt_core_in75 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd76) begin 
	 	 	 ntt_core_in76 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd77) begin 
	 	 	 ntt_core_in77 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd78) begin 
	 	 	 ntt_core_in78 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd79) begin 
	 	 	 ntt_core_in79 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd80) begin 
	 	 	 ntt_core_in80 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd81) begin 
	 	 	 ntt_core_in81 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd82) begin 
	 	 	 ntt_core_in82 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd83) begin 
	 	 	 ntt_core_in83 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd84) begin 
	 	 	 ntt_core_in84 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd85) begin 
	 	 	 ntt_core_in85 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd86) begin 
	 	 	 ntt_core_in86 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd87) begin 
	 	 	 ntt_core_in87 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd88) begin 
	 	 	 ntt_core_in88 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd89) begin 
	 	 	 ntt_core_in89 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd90) begin 
	 	 	 ntt_core_in90 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd91) begin 
	 	 	 ntt_core_in91 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd92) begin 
	 	 	 ntt_core_in92 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd93) begin 
	 	 	 ntt_core_in93 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd94) begin 
	 	 	 ntt_core_in94 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd95) begin 
	 	 	 ntt_core_in95 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd96) begin 
	 	 	 ntt_core_in96 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd97) begin 
	 	 	 ntt_core_in97 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd98) begin 
	 	 	 ntt_core_in98 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd99) begin 
	 	 	 ntt_core_in99 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd100) begin 
	 	 	 ntt_core_in100 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd101) begin 
	 	 	 ntt_core_in101 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd102) begin 
	 	 	 ntt_core_in102 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd103) begin 
	 	 	 ntt_core_in103 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd104) begin 
	 	 	 ntt_core_in104 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd105) begin 
	 	 	 ntt_core_in105 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd106) begin 
	 	 	 ntt_core_in106 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd107) begin 
	 	 	 ntt_core_in107 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd108) begin 
	 	 	 ntt_core_in108 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd109) begin 
	 	 	 ntt_core_in109 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd110) begin 
	 	 	 ntt_core_in110 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd111) begin 
	 	 	 ntt_core_in111 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd112) begin 
	 	 	 ntt_core_in112 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd113) begin 
	 	 	 ntt_core_in113 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd114) begin 
	 	 	 ntt_core_in114 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd115) begin 
	 	 	 ntt_core_in115 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd116) begin 
	 	 	 ntt_core_in116 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd117) begin 
	 	 	 ntt_core_in117 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd118) begin 
	 	 	 ntt_core_in118 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd119) begin 
	 	 	 ntt_core_in119 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd120) begin 
	 	 	 ntt_core_in120 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd121) begin 
	 	 	 ntt_core_in121 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd122) begin 
	 	 	 ntt_core_in122 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd123) begin 
	 	 	 ntt_core_in123 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd124) begin 
	 	 	 ntt_core_in124 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd125) begin 
	 	 	 ntt_core_in125 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd126) begin 
	 	 	 ntt_core_in126 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd127) begin 
	 	 	 ntt_core_in127 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd128) begin 
	 	 	 ntt_core_in128 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd129) begin 
	 	 	 ntt_core_in129 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd130) begin 
	 	 	 ntt_core_in130 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd131) begin 
	 	 	 ntt_core_in131 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd132) begin 
	 	 	 ntt_core_in132 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd133) begin 
	 	 	 ntt_core_in133 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd134) begin 
	 	 	 ntt_core_in134 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd135) begin 
	 	 	 ntt_core_in135 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd136) begin 
	 	 	 ntt_core_in136 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd137) begin 
	 	 	 ntt_core_in137 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd138) begin 
	 	 	 ntt_core_in138 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd139) begin 
	 	 	 ntt_core_in139 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd140) begin 
	 	 	 ntt_core_in140 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd141) begin 
	 	 	 ntt_core_in141 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd142) begin 
	 	 	 ntt_core_in142 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd143) begin 
	 	 	 ntt_core_in143 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd144) begin 
	 	 	 ntt_core_in144 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd145) begin 
	 	 	 ntt_core_in145 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd146) begin 
	 	 	 ntt_core_in146 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd147) begin 
	 	 	 ntt_core_in147 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd148) begin 
	 	 	 ntt_core_in148 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd149) begin 
	 	 	 ntt_core_in149 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd150) begin 
	 	 	 ntt_core_in150 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd151) begin 
	 	 	 ntt_core_in151 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd152) begin 
	 	 	 ntt_core_in152 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd153) begin 
	 	 	 ntt_core_in153 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd154) begin 
	 	 	 ntt_core_in154 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd155) begin 
	 	 	 ntt_core_in155 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd156) begin 
	 	 	 ntt_core_in156 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd157) begin 
	 	 	 ntt_core_in157 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd158) begin 
	 	 	 ntt_core_in158 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd159) begin 
	 	 	 ntt_core_in159 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd160) begin 
	 	 	 ntt_core_in160 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd161) begin 
	 	 	 ntt_core_in161 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd162) begin 
	 	 	 ntt_core_in162 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd163) begin 
	 	 	 ntt_core_in163 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd164) begin 
	 	 	 ntt_core_in164 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd165) begin 
	 	 	 ntt_core_in165 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd166) begin 
	 	 	 ntt_core_in166 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd167) begin 
	 	 	 ntt_core_in167 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd168) begin 
	 	 	 ntt_core_in168 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd169) begin 
	 	 	 ntt_core_in169 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd170) begin 
	 	 	 ntt_core_in170 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd171) begin 
	 	 	 ntt_core_in171 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd172) begin 
	 	 	 ntt_core_in172 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd173) begin 
	 	 	 ntt_core_in173 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd174) begin 
	 	 	 ntt_core_in174 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd175) begin 
	 	 	 ntt_core_in175 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd176) begin 
	 	 	 ntt_core_in176 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd177) begin 
	 	 	 ntt_core_in177 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd178) begin 
	 	 	 ntt_core_in178 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd179) begin 
	 	 	 ntt_core_in179 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd180) begin 
	 	 	 ntt_core_in180 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd181) begin 
	 	 	 ntt_core_in181 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd182) begin 
	 	 	 ntt_core_in182 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd183) begin 
	 	 	 ntt_core_in183 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd184) begin 
	 	 	 ntt_core_in184 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd185) begin 
	 	 	 ntt_core_in185 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd186) begin 
	 	 	 ntt_core_in186 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd187) begin 
	 	 	 ntt_core_in187 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd188) begin 
	 	 	 ntt_core_in188 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd189) begin 
	 	 	 ntt_core_in189 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd190) begin 
	 	 	 ntt_core_in190 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd191) begin 
	 	 	 ntt_core_in191 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd192) begin 
	 	 	 ntt_core_in192 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd193) begin 
	 	 	 ntt_core_in193 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd194) begin 
	 	 	 ntt_core_in194 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd195) begin 
	 	 	 ntt_core_in195 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd196) begin 
	 	 	 ntt_core_in196 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd197) begin 
	 	 	 ntt_core_in197 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd198) begin 
	 	 	 ntt_core_in198 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd199) begin 
	 	 	 ntt_core_in199 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd200) begin 
	 	 	 ntt_core_in200 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd201) begin 
	 	 	 ntt_core_in201 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd202) begin 
	 	 	 ntt_core_in202 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd203) begin 
	 	 	 ntt_core_in203 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd204) begin 
	 	 	 ntt_core_in204 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd205) begin 
	 	 	 ntt_core_in205 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd206) begin 
	 	 	 ntt_core_in206 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd207) begin 
	 	 	 ntt_core_in207 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd208) begin 
	 	 	 ntt_core_in208 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd209) begin 
	 	 	 ntt_core_in209 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd210) begin 
	 	 	 ntt_core_in210 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd211) begin 
	 	 	 ntt_core_in211 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd212) begin 
	 	 	 ntt_core_in212 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd213) begin 
	 	 	 ntt_core_in213 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd214) begin 
	 	 	 ntt_core_in214 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd215) begin 
	 	 	 ntt_core_in215 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd216) begin 
	 	 	 ntt_core_in216 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd217) begin 
	 	 	 ntt_core_in217 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd218) begin 
	 	 	 ntt_core_in218 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd219) begin 
	 	 	 ntt_core_in219 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd220) begin 
	 	 	 ntt_core_in220 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd221) begin 
	 	 	 ntt_core_in221 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd222) begin 
	 	 	 ntt_core_in222 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd223) begin 
	 	 	 ntt_core_in223 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd224) begin 
	 	 	 ntt_core_in224 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd225) begin 
	 	 	 ntt_core_in225 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd226) begin 
	 	 	 ntt_core_in226 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd227) begin 
	 	 	 ntt_core_in227 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd228) begin 
	 	 	 ntt_core_in228 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd229) begin 
	 	 	 ntt_core_in229 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd230) begin 
	 	 	 ntt_core_in230 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd231) begin 
	 	 	 ntt_core_in231 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd232) begin 
	 	 	 ntt_core_in232 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd233) begin 
	 	 	 ntt_core_in233 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd234) begin 
	 	 	 ntt_core_in234 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd235) begin 
	 	 	 ntt_core_in235 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd236) begin 
	 	 	 ntt_core_in236 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd237) begin 
	 	 	 ntt_core_in237 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd238) begin 
	 	 	 ntt_core_in238 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd239) begin 
	 	 	 ntt_core_in239 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd240) begin 
	 	 	 ntt_core_in240 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd241) begin 
	 	 	 ntt_core_in241 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd242) begin 
	 	 	 ntt_core_in242 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd243) begin 
	 	 	 ntt_core_in243 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd244) begin 
	 	 	 ntt_core_in244 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd245) begin 
	 	 	 ntt_core_in245 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd246) begin 
	 	 	 ntt_core_in246 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd247) begin 
	 	 	 ntt_core_in247 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd248) begin 
	 	 	 ntt_core_in248 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd249) begin 
	 	 	 ntt_core_in249 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd250) begin 
	 	 	 ntt_core_in250 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd251) begin 
	 	 	 ntt_core_in251 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd252) begin 
	 	 	 ntt_core_in252 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd253) begin 
	 	 	 ntt_core_in253 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd254) begin 
	 	 	 ntt_core_in254 <= ntt_data_in; 
	 	 end 
	 	 else if(index == 8'd255) begin 
	 	 	 ntt_core_in255 <= ntt_data_in; 
	 	 end 
	 end 
endmodule 