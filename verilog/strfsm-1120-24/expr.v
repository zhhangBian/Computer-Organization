`timescale 1ns / 1ps

`define S0 2'b00
`define S1 2'b01
`define S2 2'b10
`define S3 2'b11

module expr(
    input clk,
    input clr,
    input [7:0] in,
    output reg out
    );

reg [1:0] status;

always @(posedge clk or posedge clr) begin
  if(clr==1) begin
    status <= `S0;
    out =0 ;
  end
  else begin
    if(status == `S0) begin
      status <= (in>="0"&&in<="9")?`S1:`S3;
      out=(in>="0"&&in<="9")?1:0;
    end
    else if(status == `S1) begin
      status <= (in=="+"||in=="*")?`S2:`S3;
      out=0;
    end
    else if(status == `S2) begin
      status <= (in>="0"&&in<="9")?`S1:`S3;
      out=(in>="0"&&in<="9")?1:0;
    end
    else
      out=0;
  end
end

endmodule
