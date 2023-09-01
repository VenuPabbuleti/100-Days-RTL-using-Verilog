`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 1 TO 16 DEMUX
//Module  Name : 1 TO 16 DEMUX DESIGN MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module DEMUX_1x16(S,IN,Y);
input [3:0]S;
input IN;
output [15:0]Y;

wire [3:0]out;
DEMUX_1x4 de1(1'b1,S[3:2],1'b1,out);
DEMUX_1x4 de2(out[0],S[1:0],IN,Y[3:0]);
DEMUX_1x4 de3(out[1],S[1:0],IN,Y[7:4]);
DEMUX_1x4 de4(out[2],S[1:0],IN,Y[11:8]);
DEMUX_1x4 de5(out[3],S[1:0],IN,Y[15:12]);
endmodule
