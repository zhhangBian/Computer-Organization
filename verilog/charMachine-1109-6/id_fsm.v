`timescale 1ns / 1ps

`define S0 2'b00
`define S1 2'b01
`define S2 2'b10

module id_fsm(
    input [7:0] char,
    input clk,
    output reg out
    );

reg [1:0] status;

initial begin
    status = `S0;
    out=1'b0;
end

always @(posedge clk) begin

  //assign out=0;
  out=0;

  if(status == `S0) begin
    // 0-9
    if(char>=8'd48 && char<=8'd57) begin
      status <=`S0;
    end

    //a-z + A-Z
    else if((char>=8'd65 && char<=8'd90) || (char>=8'd97 && char<=8'd122)) begin
      status <=`S1;
    end

    //else
    else
      status <=`S0;
  end

  else if(status == `S1) begin
    // 0-9
    if(char>=8'd48 && char<=8'd57) begin
      status <=`S2;
      //assign out = 1;
      out=1;
    end

    //a-z + A-Z
    else if((char>=8'd65 && char<=8'd90) || (char>=8'd97 && char<=8'd122)) begin
      status <=`S1;
    end

    //else
    else
      status<=`S0;

  end

  else if(status == `S2) begin
    // 0-9
    if(char>=8'd48 && char<=8'd57) begin
      status <=`S2;
      //assign out = 1;
      out=1;
    end

    //a-z + A-Z
    else if((char>=8'd65 && char<=8'd90) || (char>=8'd97 && char<=8'd122)) begin
      status<=`S1;
    end

    //else
    else
      status<=`S0;
  end

end

endmodule
