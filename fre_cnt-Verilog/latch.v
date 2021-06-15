`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:56:28 10/27/2019 
// Design Name: 
// Module Name:    latch 
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

module latch(
	input latch_in,

	input [3:0] num_in1,
	input [3:0] num_in2,
	input [3:0] num_in3,
	input [3:0] num_in4,
	input [3:0] num_in5,
	input [3:0] num_in6,
	input [3:0] num_in7,
	input [3:0] num_in8,
	input over_in,
	
	output reg [3:0] num_out1,
	output reg [3:0] num_out2,
	output reg [3:0] num_out3,
	output reg [3:0] num_out4,
	output reg [3:0] num_out5,
	output reg [3:0] num_out6,
	output reg [3:0] num_out7,
	output reg [3:0] num_out8,
	output reg over_out
    );
	
	always @ (posedge latch_in) begin
		num_out1 <= num_in1;
		num_out2 <= num_in2;
		num_out3 <= num_in3;
		num_out4 <= num_in4;
		num_out5 <= num_in5;
		num_out6 <= num_in6;
		num_out7 <= num_in7;
		num_out8 <= num_in8;
		over_out <= over_in;
	end
	



endmodule
