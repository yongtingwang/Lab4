`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:54:56 08/20/2015 
// Design Name: 
// Module Name:    SMUX 
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
module SMUX(
	out,
	a,
	b,
	sel
    );
output out;
input a,b,sel;
wire out;

assign out=(sel)? a:b;

endmodule
