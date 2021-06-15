`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:55:27 10/27/2019 
// Design Name: 
// Module Name:    control 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module control(
	input clk_in, //内部基准时钟（分频后的时钟三选一）
	
	output reg gate = 1'b0,  //闸门信号
	output reg reset = 1'b0, //复位信号
	output reg latch = 1'b0  //锁存信号
    );
	
	reg [3:0] counter_16 = 4'd0; 
	always @ (posedge clk_in) begin
		counter_16 <= counter_16 + 4'd1;
		if(counter_16 <= 4'd9) begin
			gate <= 1'b1;
		end
		else
			gate <= 1'b0;
			
		if(counter_16 == 4'd11) begin
			latch <= 1'b1;
		end
		else
			latch <= 1'b0;
			
		if(counter_16 == 4'd13) begin
			reset <= 1'b1;
		end
		else
			reset <= 1'b0;
	
	end

endmodule


