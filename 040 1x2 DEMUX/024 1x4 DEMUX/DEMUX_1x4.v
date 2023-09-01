`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 1 TO 4 DEMUX
//Module  Name : DEMUX DESIGN MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module DEMUX_1x4(I,S,Y);
input I;
input [1:0]S;
output reg [3:0]Y;

always@(I,S) begin
case({S})
2'b00   :   Y={3'b000,I};
2'b01   :   Y={2'b00,I,1'b0};
2'b10   :   Y={1'b0,I,2'b00};
2'b11   :   Y={I,3'b000};
default :   Y=4'bxxxx;
endcase
end
endmodule
