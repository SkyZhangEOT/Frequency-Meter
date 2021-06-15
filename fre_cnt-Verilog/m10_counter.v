`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:55:58 10/27/2019 
// Design Name: 
// Module Name:    m10_counter 
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
module m10_counter(
	input clk_50M,
	input ext_signal,    //被测信号
	input counter_en,    //闸门信号
	input clear,         //清零信号
	
	output over,
	output [3:0] result1,
	output [3:0] result2,
	output [3:0] result3,
	output [3:0] result4,
	output [3:0] result5,
	output [3:0] result6,
	output [3:0] result7,
	output [3:0] result8
	
    );


	reg [3:0] cnt1 = 4'd0;
	reg [3:0] cnt2 = 4'd0;
	reg [3:0] cnt3 = 4'd0;
	reg [3:0] cnt4 = 4'd0;
	reg [3:0] cnt5 = 4'd0;
	reg [3:0] cnt6 = 4'd0;
	reg [3:0] cnt7 = 4'd0;
	reg [3:0] cnt8 = 4'd0;

	reg over_buf = 1'b0;
	
	assign result1 = cnt1;
	assign result2 = cnt2;
	assign result3 = cnt3;
	assign result4 = cnt4;
	assign result5 = cnt5;
	assign result6 = cnt6;
	assign result7 = cnt7;
	assign result8 = cnt8;
	assign over = over_buf;
	
	reg real_en = 1'b0;  //实际的闸门信号
	always @ (posedge ext_signal) begin
		if(counter_en == 1'b1) begin
			real_en <= 1'b1;
		end
		else
			real_en <= 1'b0;
		
	end

	always @ (negedge ext_signal) begin
		if(clear == 1'b1) begin
			over_buf <= 1'b0;
			cnt1 <= 4'd0;
			cnt2 <= 4'd0;
			cnt3 <= 4'd0;
			cnt4 <= 4'd0;
			cnt5 <= 4'd0;
			cnt6 <= 4'd0;
			cnt7 <= 4'd0;
			cnt8 <= 4'd0;
			over_buf <= 1'b0;
		end
		else begin
				if(real_en == 1'b1) begin
					if(cnt1 < 4'b1001) begin
						cnt1 <= cnt1 + 1'b1;
					end
					else begin
						cnt1 <= 4'b0000;
						if(cnt2 < 4'b1001) begin
							cnt2 <= cnt2 + 1'b1;
						end
						else begin
							cnt2 <= 4'b0000;
							if(cnt3 < 4'b1001) begin
								cnt3 <= cnt3 + 1'b1;
							end
							else begin
								cnt3 <= 4'b0000;
								if(cnt4 < 4'b1001) begin
									cnt4 <= cnt4 + 1'b1;
								end
								else begin
									cnt4 <= 4'b0000;
									if(cnt5 < 4'b1001) begin
										cnt5 <= cnt5 + 1'b1;
									end
									else begin
										cnt5 <= 4'b0000;
										if(cnt6 < 4'b1001) begin
											cnt6 <= cnt6 + 1'b1;
										end
										else begin
											cnt6 <= 4'b0000;
											if(cnt7 < 4'b1001) begin
												cnt7 <= cnt7 + 1'b1;
											end
											else begin
												cnt7 <= 4'b0000;
												if(cnt8 < 4'b1001) begin
													cnt8 <= cnt8 + 1'b1;
												end
												else begin
													cnt8 <= 4'b0000;
													over_buf <= 1'b1;  //计数溢出
												end
											
											end
										end
									end
								end
							end
						end
					end
				end
			end
	
		
	end

endmodule
