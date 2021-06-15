`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:57:30 10/27/2019 
// Design Name: 
// Module Name:    dynamic_seg 
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
module dynamic_seg(
	input clk_50M,
	input clk_1kHz,
	input over,
	input [2:0] dp,
	input [2:0] sel,
	input latch,
	
	input [3:0] data1,
	input [3:0] data2,
	input [3:0] data3,
	input [3:0] data4,
	input [3:0] data5,
	input [3:0] data6,
	input [3:0] data7,
	input [3:0] data8,
	
	output reg [6:0] seg = 7'b1111_111,  //共阳极数码管，7段
	output reg dp_out = 1'b1,
	output [7:0] an,                    //位选，8位
	

	output reg [7:0]led = 8'b1111_1111
    );
	 ///////////////////////////////////////////////////////////////////////////

	
	reg [7:0] an_buf = 8'b1111_1111;
	assign an = an_buf;
	reg [2:0] dis_bit = 3'b000;
	reg [3:0] data = 4'b0000;
	
	
	

	wire [31:0] all_data;
	reg [3:0] state = 4'd0;
	assign all_data = {data8[3:0],data7[3:0],data6[3:0],data5[3:0],data4[3:0],data3[3:0],data2[3:0],data1[3:0]};
	reg [31:0] hide_data = 32'hffff;  //高位无意义消隐后的数据
	
	
	reg latch0 = 1'b0;
	reg latch1 = 1'b0;
	wire rasing;
	assign rasing = (latch0 && (~latch1));
	always @ (posedge clk_50M) begin
		latch0 <= latch;
		latch1 <= latch0;
	end
	
	always @ (negedge clk_50M) begin
	case(sel)
		3'b100:begin
		if(rasing == 1'b1) begin 
			state <= 4'd0;
			hide_data <= 32'hffffffff;
		end
			case(state)
				4'd0:begin            //第八个数码管
					if(all_data[31:28] == 4'd0) begin
						hide_data[31:28] <= 4'b1111;
						hide_data[27:0] <= all_data[27:0];
						state <= 4'd1;
					end
					else
						 hide_data <= all_data;
				 end
				4'd1:begin            //第七个数码管
					if(all_data[27:24] == 4'd0) begin
						hide_data[31:24] <= 8'hff;
						hide_data[23:0] <= all_data[23:0];
						state <= 4'd2;
					end
					else
						hide_data[31:28] <= 4'b1111;
						hide_data[27:0] <= all_data[27:0];
				 end		     
				4'd2:begin            //第六个数码管
					if(all_data[23:20] == 4'd0) begin
						hide_data[31:20] <= 12'hfff;
						hide_data[19:0] <= all_data[19:0];
						state <= 4'd3;
					end
					else
						hide_data[31:24] <= 8'hff;
						hide_data[23:0] <= all_data[23:0];
				 end
				4'd3:begin            //第五个数码管
					if(all_data[19:16] == 4'd0) begin
						hide_data[31:16] <= 16'hffff;
						hide_data[15:0] <= all_data[15:0];
						state <= 4'd4;
					end
					else
						hide_data[31:20] <= 12'hfff;
						hide_data[19:0] <= all_data[19:0];
				 end		    		  
				4'd4:begin            //第四个数码管
					if(all_data[15:12] == 4'd0) begin
						hide_data[31:16] <= 16'hffff;
						hide_data[15:0] <= all_data[15:0];
					end
					else
						hide_data[31:16] <= 16'hffff;
						hide_data[15:0] <= all_data[15:0];
				 end							
			default:begin
					hide_data[31:0] <= 32'hffffffff;
			end
			endcase
		end
		3'b010:begin
		if(rasing == 1'b1) 
			state <= 4'd0;
			case(state)
				4'd0:begin            //第八个数码管
					if(all_data[31:28] == 4'd0) begin
						hide_data[31:28] <= 4'b1111;
						hide_data[27:0] <= all_data[27:0];
						state <= 4'd1;
					end
					else
						 hide_data <= all_data;
				 end
				4'd1:begin            //第七个数码管
					if(all_data[27:24] == 4'd0) begin
						hide_data[31:24] <= 8'hff;
						hide_data[23:0] <= all_data[23:0];
						state <= 4'd2;
					end
					else
						hide_data[31:28] <= 4'b1111;
						hide_data[27:0] <= all_data[27:0];
				 end		     
				4'd2:begin            //第六个数码管
					if(all_data[23:20] == 4'd0) begin
						hide_data[31:20] <= 12'hfff;
						hide_data[19:0] <= all_data[19:0];
						state <= 4'd3;
					end
					else
						hide_data[31:24] <= 8'hff;
						hide_data[23:0] <= all_data[23:0];
				 end
				4'd3:begin            //第五个数码管
					if(all_data[19:16] == 4'd0) begin
						hide_data[31:16] <= 16'hffff;
						hide_data[15:0] <= all_data[15:0];
						state <= 4'd4;
					end
					else
						hide_data[31:20] <= 12'hfff;
						hide_data[19:0] <= all_data[19:0];
				 end		    		  
				4'd4:begin            //第四个数码管
				if(all_data[15:12] == 4'd0) begin
					hide_data[31:12] <= 20'hfffff;
					hide_data[11:0] <= all_data[11:0];
				end
				else
					hide_data[31:16] <= 16'hffff;
					hide_data[15:0] <= all_data[15:0];
		    end		
			default:begin
					hide_data[31:0] <= 32'hffffffff;
			end
			endcase
		end
		3'b001:begin
		if(rasing == 1'b1) 
			state <= 4'd0;
			case(state)
				4'd0:begin            //第八个数码管
					if(all_data[31:28] == 4'd0) begin
						hide_data[31:28] <= 4'b1111;
						hide_data[27:0] <= all_data[27:0];
						state <= 4'd1;
					end
					else
						 hide_data <= all_data;
				 end
				4'd1:begin            //第七个数码管
					if(all_data[27:24] == 4'd0) begin
						hide_data[31:24] <= 8'hff;
						hide_data[23:0] <= all_data[23:0];
						state <= 4'd2;
					end
					else
						hide_data[31:28] <= 4'b1111;
						hide_data[27:0] <= all_data[27:0];
				 end		     
				4'd2:begin            //第六个数码管
					if(all_data[23:20] == 4'd0) begin
						hide_data[31:20] <= 12'hfff;
						hide_data[19:0] <= all_data[19:0];
						state <= 4'd3;
					end
					else
						hide_data[31:24] <= 8'hff;
						hide_data[23:0] <= all_data[23:0];
				 end
				4'd3:begin            //第五个数码管
					if(all_data[19:16] == 4'd0) begin
						hide_data[31:16] <= 16'hffff;
						hide_data[15:0] <= all_data[15:0];
						state <= 4'd4;
					end
					else
						hide_data[31:20] <= 12'hfff;
						hide_data[19:0] <= all_data[19:0];
				 end		    		  
				4'd4:begin            //第五个数码管
					if(all_data[15:12] == 4'd0) begin
						hide_data[31:12] <= 20'hfffff;
						hide_data[11:0] <= all_data[11:0];
						state <= 4'd5;
				end
				else
					hide_data[31:16] <= 16'hffff;
					hide_data[15:0] <= all_data[15:0];
		    end
				4'd5:begin            //第六个数码管
					if(all_data[11:8] == 4'd0) begin
						hide_data[31:8] <= 24'hffffff;
						hide_data[7:0] <= all_data[7:0];
					end
					else
						hide_data[31:12] <= 20'hfffff;
						hide_data[11:0] <= all_data[11:0];
		    end				 
			default:begin
					  hide_data[31:0] <= 32'hffffffff;
			end
			endcase
		end
		default:begin
			 hide_data[31:0] <= 32'hffffffff;
		end
	endcase
	end

	
	

	always @ (posedge clk_1kHz) begin
		dis_bit <= dis_bit + 1'b1;
		case(dis_bit)
			3'b000:begin         //显示第一个数码管
				data <= hide_data[3:0];
				an_buf <= 8'b1111_1110;
				dp_out <= 1'b1;
				led <= 8'hff;
			end
			3'b001:begin         //显示第二个数码管，控制小数点
				data <= hide_data[7:4];
				an_buf <= 8'b1111_1101;
				if(sel == 3'b001) begin
					dp_out <= dp[0];
				   led[5] <= 1'b0;
					led[7:6] <= 2'b11;
					led[5:0] <= 6'b11_111;
				end
				else
				    dp_out <= 1'b1;
			end
			3'b010:begin         //显示第三个数码管，控制小数点
				data <= hide_data[11:8];
				an_buf <= 8'b1111_1011;
				if(sel == 3'b010) begin
				    dp_out <= dp[1];
					 led[6] <= 1'b0;
					 led[7] <= 1'b1;
					 led[5:0] <= 6'b11_1111;
			 
				end
				else
				    dp_out <= 1'b1;
			end
			3'b011:begin         //显示第四个数码管，控制小数点
				data <= hide_data[15:12];
				an_buf <= 8'b1111_0111;
				if(sel == 3'b100) begin
				    dp_out <= dp[2];
					 led[7] <= 1'b0;
					 led[6:0] <= 7'b111_1111;
				end
				else
				    dp_out <= 1'b1;
			end
			3'b100:begin         //显示第五个数码管
				data <= hide_data[19:16];
				an_buf <= 8'b1110_1111;
				dp_out <= 1'b1;
				led <= 8'hff;
			end
			3'b101:begin         //显示第六个数码管
				data <= hide_data[23:20];
				an_buf <= 8'b1101_1111;
				dp_out <= 1'b1;
				led <= 8'hff;
			end
			3'b110:begin         //显示第七个数码管
				data <= hide_data[27:24];
				an_buf <= 8'b1011_1111;
				dp_out <= 1'b1;
				led <= 8'hff;
			end
			3'b111:begin         //显示第八个数码管
				data <= hide_data[31:28];
				an_buf <= 8'b0111_1111;
				dp_out <= 1'b1;
				dis_bit <= 3'b000;//位选信号清零
				led <= 8'hff;
			end
			default:begin
			   dis_bit <= 3'b000;
				data <= 4'b1111;
				an_buf <= 8'b1111_1111;
				dp_out <= 1'b1;
			end
		endcase
	end
	
	
	//译码部分
	always @ (data)begin
		case(data)
			4'b0000:begin
				seg <= 7'b0000_001;  //显示0
			end
			4'b0001:begin
				seg <= 7'b1001_111;  //显示1
			end
			4'b0010:begin
				seg <= 7'b0010_010;  //显示2
			end
			4'b0011:begin
				seg <= 7'b0000_110;  //显示3
			end
			4'b0100:begin
				seg <= 7'b1001_100;  //显示4
			end
			4'b0101:begin
				seg <= 7'b0100_100;  //显示5
			end
			4'b0110:begin
				seg <= 7'b0100_000;  //显示6
			end
			4'b0111:begin
				seg <= 7'b0001_111;  //显示7
			end 
			4'b1000:begin
				seg <= 7'b0000_000;  //显示8
			end
			4'b1001:begin
				seg <= 7'b0000_100;  //显示9
			end
			default:begin
				seg <= 7'b1111_111;
			end
		endcase
	end
	
	
endmodule




