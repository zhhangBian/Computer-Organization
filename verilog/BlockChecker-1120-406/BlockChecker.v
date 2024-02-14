`timescale 1ns / 1ps

`define S0 5'b00000
`define S1 5'b00001
`define S2 5'b00010
`define S3 5'b00011
`define S4 5'b00100
`define S5 5'b00101
`define S6 5'b00110
`define S7 5'b00111
`define S8 5'b01000
`define S9 5'b01001
`define S10 5'b01010

module BlockChecker(
    input clk,
    input reset,
    input [7:0] in,
    output reg result,
    output reg [4:0] out
    );

reg [4:0] status=0;
reg [15:0] stack=0;

always @(reset) begin
  if(reset==1) begin
    result = 1'b1;
    status <= `S0;
    stack <= 0;
  end
end

always @(posedge clk or posedge reset) begin
	if(reset == 1'b1) begin
    result = 1'b1;
    status <= `S0;
    stack <= 0;
	end

	else begin
		if(status == `S0) begin
		 if(stack == 0)
			result=1;
		 else
			result=0;

		 if(in == "b"||in == "B")
			status <= `S1;
		 else if(in == "e"||in == "E")
			status <= `S6;
		 else if(in == " ")
			status <= `S0;
		 else
			status <= `S9;
	  end

	  else if(status == `S1) begin
		 if(stack == 0)
			result=1;
		 else
			result=0;

		 if(in == "e"||in == "E")
			status <= `S2;
		 else if(in == " ")
			status <= `S0;
		 else
			status <= `S9;
	  end

	  else if(status == `S2) begin
		 if(stack == 0)
			result=1;
		 else
			result=0;

		 if(in == "g"||in == "G")
			status <= `S3;
		 else if(in == " ")
			status <= `S0;
		 else
			status <= `S9;
	  end

	  else if(status == `S3) begin
		 if(stack == 0)
			result=1;
		 else
			result=0;

		 if(in == "i"||in == "I")
			status <= `S4;
		 else if(in == " ")
			status <= `S0;
		 else
			status <= `S9;
	  end

	  else if(status == `S4) begin
		 if(in == "n"||in == "N") begin
			status <= `S5;
			result=1'b0;
		 end
		 else if(in == " ") begin
			status <= `S0;
			if(stack == 0)
			  result=1;
			else
			  result=0;
		 end
		 else begin
			status <= `S9;
			if(stack == 0)
			  result=1;
			else
			  result=0;
		 end
	  end

	  else if(status == `S5) begin
		 if(in == " ") begin
			status <= `S0;
			stack <= stack+1;
			result=0;
		 end
		 else begin
			status <= `S9;
			if(stack == 0)
			  result=1;
			else
			  result=0;
		 end
	  end

	  else if(status == `S6) begin
		 if(stack == 0)
			result=1;
		 else
			result=0;
		 
		 if(in == "n"||in == "N")
			status <= `S7;
		 else if(in == " ")
			status <= `S0;
		 else
			status <= `S9;
	  end

	  else if(status == `S7) begin
		 if(in == "d"||in == "D") begin
			if(stack == 1)
			  result=1;
			else
			  result=0;

			status <= `S8;
		 end
		 else if(in == " ") begin
			status <= `S0;
			if(stack == 0)
			  result=1;
			else
			  result=0;
		 end
		 else begin
			status <= `S9;
			if(stack == 0)
			  result=1;
			else
			  result=0;
		 end
	  end

	  else if(status == `S8) begin
		 if(in == " ") begin
			if(stack == 0) begin
			  result=0;
			  status <= `S10;
			end
			else if(stack == 1) begin
			  result=1;
			  stack <= 0;
			  status <= `S0;
			end
			else begin
			  result=0;
			  stack <= stack-1;
			  status <= `S0;
			end
		 end
		 else begin
			status <= `S9;
			if(stack == 0)
			  result=1;
			else
			  result=0;
		 end
	  end

	  else if(status == `S9) begin
		 if(stack == 0)
			result=1;
		 else
			result=0;
		 
		 if(in == " ")
			status <= `S0;
		 else
			status <= `S9;
	  end

	  else if(status == `S10) begin
		 result=0;
		 status <= `S10;
	  end

	  else
		 result=1;
	end
  
  end

endmodule
