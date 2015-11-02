`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:00:18 08/20/2015 
// Design Name: 
// Module Name:    dff 
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
module dff(
	q, // output
	d, // input
	clk, // global clock
	rst_n // active low reset
	);
	
	output q; // output
	input d; // input
	input clk; // global clock
	input rst_n; // active low reset

	reg q; // output (in always block)

	always @(posedge clk or negedge rst_n)
		if (~rst_n)
			q<=0;
		else
			q<=d;
	
endmodule

