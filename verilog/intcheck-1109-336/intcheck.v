`timescale 1ns / 1ps

`define S0 4'b0000
`define S1 4'b0001
`define S2 4'b0010
`define S3 4'b0011
`define S4 4'b0100
`define S5 4'b0101
`define S6 4'b0110
`define S7 4'b0111
`define S8 4'b1000

module intcheck(
    input clk,
    input reset,
    input [7:0] in,
    output reg out
    );

reg [3:0] status;
reg [7:0] s2;
reg [7:0] s1;
reg [7:0] s0;
reg [3:0] count;

always @(posedge clk) begin
	if(reset==1) begin
		status <= 0;
		out = 0;
	end
	
	else begin
    
    out = 0;
		
    if(status==`S0) begin
      if(in=="i") 
        status <= `S1;
      else if(in==";"||in==" "||in=="\t")
        status <= `S0;
      else
        status <= `S8;

      count <=0;
      s2<=0;
      s1<=0;
      s0<=0;
    end
		
    //i
    else if(status==`S1) begin
      if(in=="n") 
        status <= `S2;
      else if(in==";")
        status <= `S0;
      else
        status <= `S8;
    end
		
    //n
    else if(status==`S2) begin
      if(in=="t")
        status <= `S3;
      else if(in==";")
        status <= `S0;
      else
        status <= `S8;
    end

    //t
    else if(status==`S3) begin
      if(in==" " || in == "\t") 
        status <= `S4;
      else if(in==";")
        status <= `S0;
      else
        status <= `S8;
    end

    //" "
    else if(status==`S4) begin
      if(in==" " || in == "\t") 
        status <= `S4;
      else if ((in>="a" && in<="z")||(in>="A" && in<="Z")||in=="_") begin
        status <= `S5;
        s0 <= in;
        count <= 1;
      end
      else if(in==";")
        status <= `S0;
      else
        status <= `S8;
    end

    else if(status==`S5) begin
      if ((in>="a" && in<="z")||(in>="A" && in<="Z")||in>="0" && in<="9"||in=="_") begin
        status <= `S5;
        s0 <= in;
        s1 <= s0;
        s2 <= s1;
        count <= count + 1;
      end

      else if(in == ";") begin
        if(count == 4'b0011 && s2=="i" && s1=="n" && s0=="t")
          status <= `S8;
        else begin
          status <= `S0;
          out =1;
        end

        count <=0;
        s2<=0;
        s1<=0;
        s0<=0;
      end

      else if(in == " " || in =="\t") begin
        if(count == 4'b0011 && s2=="i" && s1=="n" && s0=="t")
          status <= `S8;
        else
          status <= `S6;

        count <=0;
        s2<=0;
        s1<=0;
        s0<=0;
      end

      else if(in == ",") begin
        if(count == 4'b0011 && s2=="i" && s1=="n" && s0=="t")
          status <= `S8;
        else 
          status <= `S7;

        count <=0;
        s2<=0;
        s1<=0;
        s0<=0;
      end

      else
        status <= `S8;
    end

    else if(status==`S6) begin
      if(in==",") begin
        status <= `S7;

        count <=0;
        s2<=0;
        s1<=0;
        s0<=0;
      end

      else if(in == " " || in =="\t")
        status <= `S6;
      
      else if(in == ";") begin
          status <= `S0;
          out =1 ;
      end
      
      else
        status <= `S8;
    end
		
    else if(status==`S7) begin
      if(in == " " || in =="\t")
        status <= `S4;
      else if ((in>="a" && in<="z")||(in>="A" && in<="Z")||in=="_") begin
        status <= `S5;
        s0 <= in;
        count <= 1;
      end
      else if(in==";")
        status <= `S0;
      else
        status <= `S8;
    end

    else if(status==`S8) begin
      if(in==";")
        status <= `S0;
      else
        status <= `S8;
    end
	end
end
endmodule
