`timescale 1ns / 1ps

module code(
    input Clk,
    input Reset,
    input Slt,
    input En,
    output reg [63:0] Output0,
    output reg [63:0] Output1
    );

reg [1:0] temp;

always @(posedge Clk) begin

  if(Reset==1'b1) begin
    Output0<=0;
    Output1<=0;
    temp<=0;
  end

  else begin
    if(En == 1'b1) begin
      if(Slt ==1'b0) begin
        Output0<=Output0+1;
      end
      else begin
        temp<=temp+1;
        if(temp==2'b11) begin 
          Output1<=Output1+1;
        end
        else begin
          Output1<=Output1;
        end
      end
    end

    else begin
      Output0<=Output0;
      Output1<=Output1;
    end
  end
end

initial begin
  Output0=0;
  Output1=0;
end

endmodule
