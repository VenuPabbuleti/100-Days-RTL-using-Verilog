`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 4 TO 1 MUX
//Module  Name : MUX DESIGN MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module MUX_4x1(S,I,O);
input [1:0]S;
input [3:0]I;
output reg O;
always@(S,I) begin
    case({S})
    2'b00 : O=I[0];
    2'b01 : O=I[1];
    2'b10 : O=I[2];
    2'b11 : O=I[3];
    default : O=1'b0;
    endcase
end
endmodule

