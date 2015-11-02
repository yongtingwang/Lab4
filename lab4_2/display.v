`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:08:42 08/21/2015 
// Design Name: 
// Module Name:    display 
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
module display(
	ftsd_in,
	display
    );
input [2:0] ftsd_in;
output reg [14:0] display;

always@(ftsd_in)
case(ftsd_in)
3'd1: display=15'b011000001111111;
3'd2: display=15'b011000001111111;
3'd3: display=15'b100000111111111;
3'd4: display=15'b100100001111111;
3'd5: display=15'b011111111011011;
3'd6: display=15'b100100110111101;
endcase

endmodule
