`timescale 1ns / 1ps

module intcheck_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	intcheck uut (
		.clk(clk), 
		.reset(reset), 
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#5; in="i";
		#5; in="n";
		#5; in="t";
		#5; in=" ";
		#5; in=" ";
		#5; in="A";
		#5; in=";";
		#5; in="i";
		#5; in="n";
		#5; in="t";
		#5; in=" ";
		#5; in="b";
		#5; in="_";
		#5; in="1";
		#5; in=",";
		#5; in="c";
		#5; in=";";
		#5; in=" ";
		#5; in="i";
		#5; in="n";
		#5; in="t";
		#5; in=" ";
		#5; in="i";
		#5; in=",";
		#5; in="i";
		#5; in="n";
		#5; in=",";
		#5; in="i";
		#5; in="n";
		#5; in="t";
		#5; in="d";
		#5; in=";";
		#5; in="i";
		#5; in="n";
		#5; in="t";
		#5; in=" ";
		#5; in="e";
		#5; in="[";
		#5; in="2";
		#5; in="]";
		#5; in=";";
		#5; in=";";
		#5; in="i";
		#5; in="n";
		#5; in="t";
		#5; in=" ";
		#5; in="f";
		#5; in=",";
		#5; in="i";
		#5; in="n";
		#5; in="t";
		#5; in=",";
		#5; in="g";
		#5; in=";";
		#5; in="i";


	end
      
endmodule

