`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:54:57 10/27/2019 
// Design Name: 
// Module Name:    select 
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
module select(
	input [2:0] sel,
	input clk_10Hz,
	input clk_100Hz,
	input clk_1kHz,

	output reg clk_out,
	output reg [2:0] dp
    );
	
	always @ (*) begin
		case(sel)
			3'b100:begin
				clk_out = clk_10Hz;
				dp = 3'b011;
			end
			3'b010:begin
				clk_out = clk_100Hz;
				dp = 3'b101;
			end
			3'b001:begin
				clk_out = clk_1kHz;
				dp = 3'b110;
			end
			default: begin
				clk_out = 1'b0;
				dp = 3'b111;
			end
		
		endcase
	end

endmodule