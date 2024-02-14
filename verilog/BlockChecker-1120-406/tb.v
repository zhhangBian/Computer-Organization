`timescale 1ns / 1ps

module tb;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] in;

	// Outputs
	wire result;

	// Instantiate the Unit Under Test (UUT)
	BlockChecker uut (
		.clk(clk), 
		.reset(reset), 
		.in(in), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
		#5; in="a";
		#5; in=" ";
		#5; in="B";
		#5; in="e";
		#5; in="g";
		#5; in="i";
		#5; in="n";
		#5; in=" ";
		#5; in="e";
		#5; in="n";
		#5; in="D";
		#5; in="c";
		#5; in=" ";
		#5; in="e";
		#5; in="n";
		#5; in="d";
		#5; in=" ";
		#5; in="a";
		#5; in="b";
		#5; in="e";
		#5; in="g";
		#5; in="i";
		#5; in="n";
		#5; in=" ";
		#5; in="c";
		#5; in="e";
		#5; in="n";
		#5; in="d";
		#5; in=" ";
		#5; in="b";
		#5; in="E";
		#5; in="g";
		#5; in="I";
		#5; in="N";
		#5; in=" ";
		#5; in="e";
		#5; in="e";
		#5; in="n";
		#5; in="d";
		#5; in=" ";
		#5; in="a";
		#5; in="a";
		#5; in="a";
		
        
		// Add stimulus here

	end
   always #10 clk=~clk;
endmodule

