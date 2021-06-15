`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:54:18 10/27/2019 
// Design Name: 
// Module Name:    div_fre 
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

module div_fre(
	input clk_50M,    //系统时钟50MHz
	
	output reg clk_1kHz = 1'b0,
	output reg clk_100Hz = 1'b0,
   output reg clk_10Hz = 1'b0
	

    );
	
	//==========================================================================//
	//分频clk_1kHz：1kHz
	reg [31:0] count1 = 32'd0;
	always @ (posedge clk_50M) begin 
		if(count1 == 32'd24_999) begin
			count1 <= 32'd0;
			clk_1kHz <= ~clk_1kHz;
		end
		else
			count1 <= count1 + 32'd1;
	end
	//==========================================================================//
	//分频clk_100Hz:100Hz
	reg [31:0] count2 = 32'd0;

	always @ (posedge clk_1kHz) begin
		if(count2 == 32'd4) begin
			count2 <= 32'd0;
			clk_100Hz <= ~clk_100Hz;
		end
		else
			count2 <= count2 + 32'd1;
	end
	
	//==========================================================================//
	//分频clk_10Hz:10Hz
	reg [31:0] count3 = 32'd0;

	always @ (posedge clk_100Hz) begin
		if(count3 == 32'd4) begin
			count3 <= 32'd0;
			clk_10Hz<= ~clk_10Hz;
		end
		else
			count3 <= count3 + 32'd1;
	end

endmodule

