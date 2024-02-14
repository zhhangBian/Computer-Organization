`timescale 1ns / 1ps

module mips_tb;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [31:0] pc_now;
	wire [31:0] str_now;
	wire if_reg;
	wire if_mem;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset)
	);

	always #1 clk=~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		#2 reset = 1;
	
		#2 reset=0;

		// Wait 100 ns for global reset to finish
		#1000000;
        
		// Add stimulus here

	end
      
endmodule

