`timescale 1ns / 1ps

module gray(
    input Clk,
    input Reset,
    input En,
    output reg [2:0] Output,
    output reg Overflow
    );

reg [2:0] status;

always @(posedge Clk) begin
  
  if(Reset == 1) begin
    Output = 0;
    status = 0;
    Overflow = 0;
  end

  else begin
    if(En == 1) begin
		if(status == 3'b111) begin
        status = 3'b000;
        Overflow = 1;
      end
      else begin
        status = status +1;
      end
    end
    
    Output= (status == 3'b000) ? 3'b000:
            (status == 3'b001) ? 3'b001:
            (status == 3'b010) ? 3'b011:
            (status == 3'b011) ? 3'b010:
            (status == 3'b100) ? 3'b110:
            (status == 3'b101) ? 3'b111:
            (status == 3'b110) ? 3'b101: 3'b100;
  end
end

endmodule
