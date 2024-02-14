`timescale 1ns / 1ps

module mips_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [31:0] pc_now;
	reg [31:0] str_now;
	reg if_reg;
	reg if_mem;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset),
		.pc_now(pc_now),
		.str_now(str_now),
		.if_reg(if_reg),
		.if_mem(if_mem)
	);
	
	always #10 clk=~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		
		#13 reset=1;
		
		#5 reset=0;


	end
      
endmodule

