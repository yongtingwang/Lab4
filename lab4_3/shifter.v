`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:24:46 08/31/2015 
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
module shifter(
	clk_out,
	en,
	rst_n,
	mode,
	in0,
	in1, 
	in2, 
	in3,
    );

input clk_out,en,rst_n;
input [2:0] mode;
output reg [3:0] in0,in1,in2,in3;
reg [3:0] in0_temp,in1_temp,in2_temp,in3_temp;

always@(posedge clk_out or negedge rst_n)
	if(~rst_n) begin
	in0<=4'd1;
	in1<=4'd0;
	in2<=4'd1;
	in3<=4'd0;
	end

	else begin
	in0<=in0_temp;
	in1<=in1_temp;
	in2<=in2_temp;
	in3<=in3_temp;
	end

always@(*)
	if (mode[1]& mode[0]&en) begin
	in0_temp=0;
	in1_temp=in0;
	in2_temp=in1;
	in3_temp=in2;
	end
	
	else if (mode[1] & (~mode[0])&en) begin
	in0_temp=in1;
	in1_temp=in2;
	in2_temp=in3;
	in3_temp=0;
	end

	else if (mode[2] &mode[0]&en) begin
	in0_temp=4'd1;
	in1_temp=in0;
	in2_temp=in1;
	in3_temp=in2;
	end
	
	else if (mode[2] & (~mode[0])&en) begin
	in0_temp=in1;
	in1_temp=in2;
	in2_temp=in3;
	in3_temp=4'd1;
	end

	else if (mode[0]&en) begin
	in0_temp=in3;
	in1_temp=in0;
	in2_temp=in1;
	in3_temp=in2;
	end
	
	else if (~mode[0]&en) begin
	in0_temp=in1;
	in1_temp=in2;
	in2_temp=in3;
	in3_temp=in0;
	end
	
	else begin
   in0_temp=in0;
	in1_temp=in1;
	in2_temp=in2;
	in3_temp=in3;
	end

	
endmodule
