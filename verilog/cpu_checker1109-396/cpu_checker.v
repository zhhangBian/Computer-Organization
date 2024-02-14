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

module cpu_checker(
    input clk,
    input reset,
    input [7:0] char,
    output reg [1:0] format_type,
    output reg [4:0] out
    );

reg [4:0] status;
reg [1:0] num_now;  //01 for * ,10 for $
reg [4:0] count_10;
reg [4:0] count_8;
reg [1:0] type;
reg [1:0] count;

always @(posedge clk) begin

  format_type = 0;
  out = status;

  if(reset == 1) begin
    format_type = 0;
    status <= `S0;
    num_now <= 0;
    count_10 <= 0;
    count_8 <= 0;
    type <= 2'b00;
    count <= 0;
  end

  else begin
    
    if(status == `S0) begin
      if(char == "^") begin
        status <= `S1;
      end
      else
        status <= `S0;

    type <= 2'b00;
    num_now <= 0;
    count_10 <= 0;
    count_8 <= 0;
    count <= 0;

    end

    else if(status == `S1) begin
      if(char>="0"&&char<="9") begin
        status <= `S2;
        count_10 <= 1;
      end
      else if(char == "^")
        status <= `S1;
      else
        status <= `S0;

      type <= 2'b00;
      num_now <= 0;
      count_8 <= 0;
      count <= 0;
    end

    else if(status == `S2) begin
      if(char >= "0" && char <= "9") begin
        if(count_10 < 5'b00100) begin
          count_10 <= count_10 + 1;
          status<=`S2;
        end
        else begin
          count_10 <= 0;
          status <= `S0;
        end
      end

      else begin
        if(char == "@" && count_10 <= 4) begin
        //if(char == "@") begin
          status <= `S3;
          count_10 <= 0;
        end
        else if(char =="^") begin
          status <= `S1;
          count_10 <= 0;
        end
        else begin
          status <= `S0;
          count_10 <= 0;
        end
      end
    end

    else if(status == `S3) begin
      if((char >= "0" && char <= "9" )||(char >="a" &&char <= "f")) begin
        status<=`S4;
        count_8 <= 1;
      end
      
      else if(char == "^") begin
        status<=`S1;
        type <= 2'b00;
        num_now <= 0;
        count_10 <= 0;
        count_8 <= 0;
        count <= 0;
      end

      else begin
        status<=`S0;
        count_8 <=0;
      end
    end

    else if(status == `S4) begin
      if((char >= "0" && char <= "9")||(char >="a" &&char <= "f")) begin
        if(count_8 < 8) begin
          count_8 <= count_8+1;
          status <= `S4;
        end
        else begin
          count_8 <= 0;
          status <= `S0;
        end
      end

      else begin
        if(char == ":" && count_8 == 8) begin
          status <= `S5;
          count_8 <= 0;
        end
        else if(char == "^") begin
          status <= `S1;
          type <= 2'b00;
          num_now <= 0;
          count_10 <= 0;
          count_8 <= 0;
          count <= 0;
        end
        else begin
          status <= `S0;
          count_8 <= 0;
        end
      end
    end

    else if(status == `S5) begin
      if(char == " ") begin
        status <= `S5;
      end

      else if(char == "*") begin
        status <= `S6;
        num_now <= 2'b01;
        type <= 2'b10;
      end

      else if(char == "$") begin
        status <= `S6;
        num_now <= 2'b10;
        type <= 2'b01;
      end

      else if(char == "^") begin
        status <= `S1;
        type <= 2'b00;
        num_now <= 0;
        count_10 <= 0;
        count_8 <= 0;
        count <= 0;
      end

      else
        status <= `S0;
    end

    else if(status == `S6) begin
      // 8 bits
      if(num_now == 2'b01) begin
        if((char >= "0" && char <= "9")||(char >= "a" &&char <= "f")) begin
            status <= `S7;
            count_8 <= 1;
        end
        else if(char == "^") begin
          status <= `S1;
          type <= 2'b00;
          num_now <= 0;
          count_10 <= 0;
          count_8 <= 0;
          count <= 0;
        end
        else begin
          status <= `S0;
          num_now <= 0;
        end
      end

      //10 bits
      else if(num_now == 2'b10) begin
        if(char >="0" && char <="9") begin
          status <= `S7;
          count_10 <= 1;
        end
        else if(char == "^") begin
          status <= `S1;
          type <= 2'b00;
          num_now <= 0;
          count_10 <= 0;
          count_8 <= 0;
          count <= 0;
        end
        else begin
          status <= `S0;
          num_now <= 0;
        end
      end
      
    end

    else if(status == `S7) begin

      if(num_now==2'b01) begin
        
        if((char >="0" && char <="9")||(char >="a" &&char <= "f")) begin
          if(count_8 < 8) begin
            count_8 <= count_8 +1;
          end

          else begin
            count_8 <= 0;
            status <= `S0;
            num_now <= 0;
          end
        end

        else if(char == "<" && count_8 == 8) begin
          status <= `S8;
          count_8 <= 0;
          count <= 2'b01;
        end

        else if(char == " " && count_8 == 8) begin
          status <= `S7;
        end

        else if(char == "^") begin
          status <= `S1;
          type <= 2'b00;
          num_now <= 0;
          count_10 <= 0;
          count_8 <= 0;
          count <= 0;
        end

        else begin
          status <= `S0;
          count_8 <= 0;
          num_now <= 0;
        end

      end

      else if(num_now==2'b10) begin
        if(char >="0" && char <="9") begin
          if(count_10 < 4) begin
            count_10 <= count_10+1;
          end

          else begin
            status <= `S0;
            num_now <= 0;
            count_10 <= 0;
          end
        end

        else if(char == "<" &&(count_10 >= 1 && count_10 <= 4)) begin
        //else if(char == "<") begin
          status <= `S8;
          count_10 <= 0;
          count <= 2'b01;
        end

        else if(char == " " &&(count_10 >= 1 && count_10 <= 4)) begin
        //else if(char == " ") begin
          status <= `S7;
        end

        else if(char == "^") begin
          status <= `S1;
          type <= 2'b00;
          num_now <= 0;
          count_10 <= 0;
          count_8 <= 0;
          count <= 0;
        end

        else begin
          status <= `S0;
          count_10 <= 0;
          num_now <= 0;
        end
      end
    end

    else if(status == `S8) begin
      if(count==2'b01) begin
        
        if(char == "=") begin
          count <= 2'b10;
        end

        else if(char == "^") begin
          status <= `S1;
          type <= 2'b00;
          num_now <= 0;
          count_10 <= 0;
          count_8 <= 0;
          count <= 0;
        end

        else begin
          num_now <= 0;
          status <= 0;
        end
      end

      else if(count == 2'b10) begin

        if(char == " ") begin
          status <= `S8;
        end

        else if((char >="0" && char <= "9")||(char >="a" &&char <= "f")) begin
          status <= `S9;
          count <= 0;
          count_8 <= 1;
        end

        else if(char == "^") begin
          status <= `S1;
          type <= 2'b00;
          num_now <= 0;
          count_10 <= 0;
          count_8 <= 0;
          count <= 0;
        end

        else begin
          num_now <= 0;
          status <= `S0;
        end
      end
    end

    else if(status == `S9) begin
      if((char >="0" && char <="9")||(char >="a" && char <= "f")) begin
        if(count_8 < 8) begin
          count_8 <= count_8+1;
        end
        else begin
          count_8 <= 0;
          status <= `S0;
        end
      end

      else begin
        if(char == "#" && count_8 == 8) begin
          format_type = type;
          status <= `S0;
          type <= 2'b00;
          num_now <= 0;
          count_10 <= 0;
          count_8 <= 0;
          count <= 0;
        end

        else if(char == "^") begin
          status <= `S1;
          type <= 2'b00;
          num_now <= 0;
          count_10 <= 0;
          count_8 <= 0;
          count <= 0;
        end

        else begin
          status <= `S0;
        end
      end
    end
  end
end

endmodule