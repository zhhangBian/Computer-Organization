`timescale 1ns / 1ps

module HLU(
  input clk,
  input reset,

  input [31:0] inA,
  input [31:0] inB,

  input dst,
  input write,
  input [3:0] hluType,
  input unSigned,

  output reg busy,
  output [31:0] result
    );

reg [31:0] HI, LO;
reg [31:0] tmpHI, tmpLO;
reg [9:0] count;
reg [3:0] type;

assign result = dst ? HI : LO;

always @(posedge clk) begin
  //$display("%d %b@%h %h %h  %h", $time,type, inA, inB, LO, HI);
  if(reset==1) begin
    HI<=0;
    LO<=0;
    busy<=0;
    count<=0;
    type<=0;
    tmpHI<=0;
    tmpLO<=0;
  end

  else if(write==1) begin
    if(dst==1)  HI<=inA;
    else LO<=inA;
  end

  //{temp_hi, temp_lo} <= {hi, lo} + $signed($signed(64'd0) + $signed(rs) * $signed(rt));

  else begin
    if(busy==0) begin
      if(hluType==4'b0001) begin
        type<=hluType;
        busy<=1;
        count<=0;

        if(unSigned) {tmpHI, tmpLO} <= inA * inB;
        else  {tmpHI, tmpLO} <= $signed(inA) * $signed(inB);
      end

      else if(hluType==4'b0010) begin
        type<=hluType;
        busy<=1;
        count<=0;

        if(inB!=0) begin
          if(unSigned) begin
              tmpLO <= inA / inB;
              tmpHI <= inA % inB;
          end

          else begin
              tmpLO <= $signed(inA) / $signed(inB);
              tmpHI <= $signed(inA) % $signed(inB);
          end
        end

        else begin
          tmpLO<=tmpLO;
          tmpHI<=tmpHI;
        end
      end

      else begin
        type<=0;
        busy<=0;
        count<=0;
      end
    end

    else begin
      if(type==4'b0001) begin
        if(count==5) begin
          LO<=tmpLO;
          HI<=tmpHI;

          busy<=0;
          count<=0;
          type<=0;
        end

        else begin
          busy<=1;
          count<=count+1;
        end
      end

      else if(type==4'b0010) begin
        if(count==10) begin
          LO<=tmpLO;
          HI<=tmpHI;

          busy<=0;
          count<=0;
          type<=0;
        end

        else begin
          busy<=1;
          count<=count+1;
        end
      end

      else begin
        type<=0;
        busy<=0;
        count<=0;
      end
    end
  end
end

endmodule
