`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:04:47 02/23/2019
// Design Name:   dff
// Module Name:   C:/Users/user/Desktop/EXECUGUTIONS/newww/dff_tb.v
// Project Name:  newww
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dff_tb;

	// Inputs
	reg clk;
	reg d;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	dff uut (
		.clk(clk), 
		.d(d), 
		.q(q), 
		.qb(qb)
	);

always #5 clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 1;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		d = 1;		// Add stimulus here
		#100 $finish;

	end
      
endmodule

