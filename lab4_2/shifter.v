`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:53:11 08/21/2015 
// Design Name: 
// Module Name:    shifter 
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
`define BIT_WIDTH 3
module shifter(
	q3,q4,q5,q6,
	clk_out,
	rst_n
    );
output reg [`BIT_WIDTH-1:0] q3,q4,q5,q6;
reg [`BIT_WIDTH-1:0] q1,q2;
input clk_out,rst_n;

//Sequential logic:Flip flops
always@(posedge clk_out or negedge rst_n)
	if(~rst_n)	begin
	q1<=`BIT_WIDTH'd1;
	q2<=`BIT_WIDTH'd2;
	q3<=`BIT_WIDTH'd3;
	q4<=`BIT_WIDTH'd4;
	q5<=`BIT_WIDTH'd5;
	q6<=`BIT_WIDTH'd6; 	end

	else begin
	q1<=q6;
	q2<=q1;
	q3<=q2;
	q4<=q3;
	q5<=q4;
	q6<=q5;	end
endmodule
