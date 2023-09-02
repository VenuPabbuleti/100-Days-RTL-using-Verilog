`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 8 TO 3 ENCODER
//Module  Name : ENCODER_8x3
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module ENCODER_8x3(D,A,B,C);
input [7:0]D;
output reg A,B,C;
always@(D) begin
    case({D})
        8'b00000001 : begin A=1'b0; B=1'b0; C=1'b0; end
        8'b00000010 : begin A=1'b0; B=1'b0; C=1'b1; end
        8'b00000100 : begin A=1'b0; B=1'b1; C=1'b0; end
        8'b00001000 : begin A=1'b0; B=1'b1; C=1'b1; end
        8'b00010000 : begin A=1'b1; B=1'b0; C=1'b0; end
        8'b00100000 : begin A=1'b1; B=1'b0; C=1'b1; end
        8'b01000000 : begin A=1'b1; B=1'b1; C=1'b0; end
        8'b10000000 : begin A=1'b1; B=1'b1; C=1'b1; end
        default     : begin A=1'bx; B=1'bx; C=1'bx; end
    endcase
end
endmodule
