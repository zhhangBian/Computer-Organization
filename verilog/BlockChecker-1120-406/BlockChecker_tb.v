`timescale 1ns / 1ps

module BlockChecker_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] in;

	// Outputs
	wire result;
	wire [4:0] out;

	// Instantiate the Unit Under Test (UUT)
	BlockChecker uut (
		.clk(clk), 
		.reset(reset), 
		.in(in), 
		.result(result),
		.out(out)
	);

	initial begin
		clk = 0;
		reset = 0;
		in = 0;

		#100;
		#10; in="a";
		#10; in=" ";
		#10; in="B";
		#10; in="e";
		#10; in="g";
		#10; in="i";
		#10; in="n";
		#10; in=" ";
		#10; in="e";
		#10; in="n";
		#10; in="D";
		#10; in="c";
		#10; in=" ";
		#10; in="e";
		#10; in="n";
		#10; in="d";
		#10; in=" ";
		#10; in="a";
		#10; in="b";
		#10; in="e";
		#10; in="g";
		#10; in="i";
		#10; in="n";
		#10; in=" ";
		#10; in="c";
		#10; in="e";
		#10; in="n";
		#10; in="d";
		#10; in=" ";
		#10; in="b";
		#10; in="E";
		#10; in="g";
		#10; in="I";
		#10; in="N";
		#10; in=" ";
		#10; in="e";
		#10; in="e";
		#10; in="n";
		#10; in="d";
		#10; in=" ";
		#10; in="a";
		#10; in="a";
		#10; in="a";

	end
	
	always #10 clk=~clk;
      
endmodule

