`timescale 1ns / 1ps

`define S0 2'b00
`define S1 2'b01
`define S2 2'b10
`define S3 2'b11

module counting(
    input [1:0] num,
    input clk,
    output reg ans
    );

reg [1:0] status;

initial begin
    status <= `S0;
    assign ans=1'b0;
end

always@(posedge clk) begin
    assign ans=0;

    case(status)
        `S0: begin
                if (num == 2'b01) begin
                    status <= `S1;
                end
                else begin
                    status <= `S0;
                end
            end
			`S1: begin
					      if (num == 2'b01) begin
                    status <= `S1;
                end
                else if (num == 2'b10) begin
                    status <= `S2;
                end
                else begin
                    status <= `S0;
                end
            end
			`S2: begin
					      if (num == 2'b01) begin
                    status <= `S1;
                end
                else if (num == 2'b10) begin
                    status <= `S2;
                end
                else if (num == 2'b11) begin
                    status <= `S3;
						        assign ans=1'b1;
                end
                else begin
                    status <= `S0;
                end
            end
			`S3: begin
					      if (num == 2'b01) begin
                    status <= `S1;
                end
                else if(num==2'b11) begin
                  status <=`S3;
                  assign ans=1'b1;
                end
                else begin
                    status <= `S0;
                end
            end
			
		endcase

end


endmodule
