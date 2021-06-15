`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:49:49 10/27/2019 
// Design Name: 
// Module Name:    top 
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
module top(
    input clk_50M,
    input [2:0] sel,
    input ext_signal,

	
    output [6:0] seg,
    output [7:0] an,
    output dp_out,
	 output [7:0] led         //指示测量档位，试验箱从左到右依次为第一档到第三档
	                          //第一档：100M；第二档：10M；第三档：1M
    );

    wire clk_10Hz;
    wire clk_100Hz;
    wire clk_1kHz;
    div_fre zds_uut1(
		  .clk_50M(clk_50M),    //系统时钟为50MHz
        .clk_10Hz(clk_10Hz),
        .clk_100Hz(clk_100Hz),
        .clk_1kHz(clk_1kHz)
	);

    wire clk_in;
    wire [2:0] dp;
    select zds_uut2(
		  .sel(sel),
        .clk_10Hz(clk_10Hz),
        .clk_100Hz(clk_100Hz),
        .clk_1kHz(clk_1kHz),

        .clk_out(clk_in),
        .dp(dp)
    );


    wire gate;
    wire reset;
    wire latch;

    control zds_uut3(
        .clk_in(clk_in),
        .gate(gate),
        .reset(reset),
        .latch(latch)

    );
	 
	
	 
	
   wire over;
	wire [3:0] result1;
	wire [3:0] result2;
	wire [3:0] result3;
	wire [3:0] result4;
	wire [3:0] result5;
	wire [3:0] result6;
	wire [3:0] result7;
	wire [3:0] result8;
    m10_counter zds_uut4(
		  .clk_50M(clk_50M),
        .ext_signal(ext_signal),
        .counter_en(gate),
        .clear(reset),
        .over(over),
        .result1(result1),
        .result2(result2),
        .result3(result3),
        .result4(result4),
        .result5(result5),
        .result6(result6),
		  .result7(result7),
        .result8(result8)
    );

	 wire over_out;
    wire [3:0] num_out1;
	 wire [3:0] num_out2;
	 wire [3:0] num_out3;
	 wire [3:0] num_out4;
	 wire [3:0] num_out5;
	 wire [3:0] num_out6;
	 wire [3:0] num_out7;
	 wire [3:0] num_out8;

    latch zds_uut5(
        .latch_in(latch),

        .num_in1(result1),
        .num_in2(result2),
        .num_in3(result3),
        .num_in4(result4),
        .num_in5(result5),
        .num_in6(result6),
		  .num_in7(result7),
        .num_in8(result8),
        .over_in(over),

        .num_out1(num_out1),
        .num_out2(num_out2),
        .num_out3(num_out3),
        .num_out4(num_out4),
        .num_out5(num_out5),
        .num_out6(num_out6),
		  .num_out7(num_out7),
        .num_out8(num_out8),
        .over_out(over_out)
    );



    dynamic_seg zds_uut6(
        .clk_1kHz(clk_1kHz),
        .over(over_out),
        .dp(dp),
        .sel(sel),

        .data1(num_out1),
        .data2(num_out2),
        .data3(num_out3),
        .data4(num_out4),
        .data5(num_out5),
        .data6(num_out6),
		  .data7(num_out7),
        .data8(num_out8),
		  
        .seg(seg),  
        .dp_out(dp_out),
        .an(an),
		  .led(led)
);


endmodule


