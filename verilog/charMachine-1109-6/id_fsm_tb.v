`timescale 1ns / 1ps

module id_fsm_tb;

	// Inputs
	reg [7:0] char;
	reg clk;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	id_fsm uut (
		.char(char), 
		.clk(clk), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		char = 0;
		clk = 0;

		// Wait 10 ns for global reset to finish
		#10;
        
		// Add stimulus here
		
		#5 char=8'd97; #5;
		#5 char=8'd98; #5;
		#5 char=8'd99; #5;
		#5 char=8'd100; #5;
		
		#5 char=8'd49; #5;
		#5 char=8'd50; #5;
		#5 char=8'd51; #5;
		#5 char=8'd52; #5;
		
		#5 char=8'd47; #5;
	end
	
	always #5 clk = ~clk;
      
endmodule

