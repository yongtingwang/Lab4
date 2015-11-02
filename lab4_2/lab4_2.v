`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:32:51 08/21/2015 
// Design Name: 
// Module Name:    lab4_2 
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
module lab4_2(
	display,
	ftsd_ctl,
	clk,
	rst_n
    );
output [14:0] display;
output [3:0] ftsd_ctl;
input clk,rst_n;

wire clk_out;
wire [1:0] clk_ctl;
wire [2:0] in0,in1,in2,in3;
wire [2:0] in_q;

freq_div f1(
	.clk_out(clk_out), // divided clock output
	.clk_ctl(clk_ctl), // divided clock output for scan freq
	.clk(clk), // global clock input
	.rst_n(rst_n) // active low reset
	); 
	
shifter s1(
	.q3(in3), .q4(in2), .q5(in1), .q6(in0),
	.clk_out(clk_out),
	.rst_n(rst_n)
    );
scan_ctl c1(
	.ftsd_ctl(ftsd_ctl), // ftsd display control signal 
	.ftsd_in(in_q), // output to ftsd display
	.in0(in0), // 1st input
	.in1(in1), // 2nd input
	.in2(in2), // 3rd input
	.in3(in3), // 4th input
	.ftsd_ctl_en(clk_ctl) // divided clock for scan control
	);
	
display d1(
	.ftsd_in(in_q),
	.display(display)
    );
endmodule
