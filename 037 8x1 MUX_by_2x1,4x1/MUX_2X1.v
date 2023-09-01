`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 8 TO 1 MUX USING 4X1 MUX AND 2X1 MUX
//Module  Name : 2X1 MUX MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module MUX_2X1(S,I,O);
input S;
input [1:0]I;
output reg O;

always @(S,I) begin
    case(S)
    1'b0:O=I[0];
    1'b1:O=I[1];
    default : O=1'bx;
    endcase
end
endmodule
