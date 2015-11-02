`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:10:33 08/31/2015 
// Design Name: 
// Module Name:    lab4_3 
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
module lab4_3(
	clk,
	en,
	mode,
	rst_n,
	display,
	ftsd_ctl
    );
input clk,en,rst_n;
input [2:0] mode;
output [14:0] display;
output [3:0] ftsd_ctl;
	 
wire clk_out;
wire [1:0] clk_ctl;
wire [3:0] in0,in1,in2,in3,bcd;

freq_div f1(
	.clk_out(clk_out), // divided clock output
	.clk_ctl(clk_ctl), // divided clock output for scan freq
	.clk(clk), // global clock input
	.rst_n(rst_n) // active low reset
	);
	
shifter s1(
	.clk_out(clk_out),
	.en(en),
	.rst_n(rst_n),
	.mode(mode),
	.in0(in0),
	.in1(in1), 
	.in2(in2), 
	.in3(in3)
    );

scan_ctl sc1(
	.ftsd_ctl(ftsd_ctl), // ftsd display control signal 
	.ftsd_in(bcd), // output to ftsd display
	.in0(in0),
	.in1(in1), 
	.in2(in2), 
	.in3(in3),
	.ftsd_ctl_en(clk_ctl) // divided clock for scan control
	);
	
	
 bcd2ftsegdec b1(
	.display(display), // 14-segment display output
	.bcd(bcd) // BCD input
	);
	
endmodule
