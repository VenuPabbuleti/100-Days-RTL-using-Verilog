`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 8 TO 3 PRIORITY ENCODER
//Module  Name : PRIORITY_ENCODER
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////



module PRIORITY_ENCODER(D,A,B,C);
input [7:0]D;
output reg A,B,C;
always@(D) begin
    casex({D})
        8'b00000001 : begin A=1'b0; B=1'b0; C=1'b0; end
        8'b0000001x : begin A=1'b0; B=1'b0; C=1'b1; end
        8'b000001xx : begin A=1'b0; B=1'b1; C=1'b0; end
        8'b00001xxx : begin A=1'b0; B=1'b1; C=1'b1; end
        8'b0001xxxx : begin A=1'b1; B=1'b0; C=1'b0; end
        8'b001xxxxx : begin A=1'b1; B=1'b0; C=1'b1; end
        8'b01xxxxxx : begin A=1'b1; B=1'b1; C=1'b0; end
        8'b1xxxxxxx : begin A=1'b1; B=1'b1; C=1'b1; end
        default     : begin A=1'bx; B=1'bx; C=1'bx; end
    endcase
end
endmodule
