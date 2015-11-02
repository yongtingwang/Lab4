`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:03:12 08/20/2015
// Design Name:   lab4_1
// Module Name:   C:/Users/kerker/NTHU/MS0/logic lab/lab_result/lab4/lab4_1/test_lab4_1.v
// Project Name:  lab4_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lab4_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_lab4_1;

	// Inputs
	reg clk;
	reg rst_n;
	reg in;
	reg mode;

	// Outputs
	wire [7:0] Q;

	// Instantiate the Unit Under Test (UUT)
	lab4_1 uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.in(in), 
		.Q(Q), 
		.mode(mode)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst_n = 1;
		in = 0;
		mode = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#10  mode=0; clk=0; in = 0;
		#10  mode=0; clk=1; in = 0;
		#10  mode=0; clk=0; in = 1;
		#10  mode=0; clk=1; in = 1;
		#10  mode=0; clk=0; in = 0;
		#10  mode=0; clk=1; in = 0;
		#10  mode=0; clk=0; in = 1;
		#10  mode=0; clk=1; in = 1;
		#10  mode=0; clk=0; in = 0;
		#10  mode=0; clk=1; in = 0;
		#10  mode=0; clk=0; in = 1;
		#10  mode=0; clk=1; in = 1;
		#10  mode=0; clk=0; in = 0;
		#10  mode=0; clk=1; in = 0;
		#10  mode=0; clk=0; in = 1;
		#10  mode=0; clk=1; in = 1;
		
		#10  mode=1;
		end
      
endmodule

