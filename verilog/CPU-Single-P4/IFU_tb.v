`timescale 1ns / 1ps

module IFU_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [31:0] PC_next;

	// Outputs
	wire [31:0] inStr;
	wire [31:0] PC;

	// Instantiate the Unit Under Test (UUT)
	IFU uut (
		.clk(clk), 
		.reset(reset), 
		.PC_next(PC_next), 
		.inStr(inStr), 
		.PC(PC)
	);

	initial begin
		// Initialize Inputs
		#20
		clk = 0;
		reset = 0;

		#20 PC_next=32'h0000_3000;
		#20 PC_next=32'h0000_3004;
		#20 PC_next=32'h0000_3008;
		#20 PC_next=32'h0000_300c;
		#20 PC_next=32'h0000_3010;
		#20 PC_next=32'h0000_3014;
		#20 PC_next=32'h0000_3018;
		#20 PC_next=32'h0000_301c;
		#20 PC_next=32'h0000_3020;
		#20 PC_next=32'h0000_3024;
		#20 PC_next=32'h0000_3028;
		#20 PC_next=32'h0000_302c;
		#20 PC_next=32'h0000_3030;
		#20 PC_next=32'h0000_3034;


        
		// Add stimulus here

	end
      
endmodule

