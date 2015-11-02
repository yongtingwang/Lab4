`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:59:52 08/20/2015 
// Design Name: 
// Module Name:    lab4_1 
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
module lab4_1(
	clk,
	rst_n,
	in,
	Q,
	mode
    );
input clk,rst_n,mode,in;
output [7:0] Q;
wire clk_out;
wire selout;



freq_div d1(
	.clk_out(clk_out), // divided clock output
	.clk(clk), // global clock input
	.rst_n(rst_n) // active low reset
	);

SMUX(
	.out(selout),
	.a(Q[0]),
	.b(in),
	.sel(mode)
    );

dff f0(
	.q(Q[0]), // output
	.d(Q[1]), // input
	.clk(clk_out), // global clock
	.rst_n(rst_n) // active low reset
	);
	
dff f1(
	.q(Q[1]), // output
	.d(Q[2]), // input
	.clk(clk_out), // global clock
	.rst_n(rst_n) // active low reset
	);

dff f2(
	.q(Q[2]), // output
	.d(Q[3]), // input
	.clk(clk_out), // global clock
	.rst_n(rst_n) // active low reset
	);
	
dff f3(
	.q(Q[3]), // output
	.d(Q[4]), // input
	.clk(clk_out), // global clock
	.rst_n(rst_n) // active low reset
	);
	
dff f4(
	.q(Q[4]), // output
	.d(Q[5]), // input
	.clk(clk_out), // global clock
	.rst_n(rst_n) // active low reset
	);
	
dff f5(
	.q(Q[5]), // output
	.d(Q[6]), // input
	.clk(clk_out), // global clock
	.rst_n(rst_n) // active low reset
	);
	
dff f6(
	.q(Q[6]), // output
	.d(Q[7]), // input
	.clk(clk_out), // global clock
	.rst_n(rst_n) // active low reset
	);	

dff f7(
	.q(Q[7]), // output
	.d(selout), // input
	.clk(clk_out), // global clock
	.rst_n(rst_n) // active low reset
	);
	
endmodule
