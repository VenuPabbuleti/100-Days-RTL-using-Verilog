`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 1 TO 2 DEMUX
//Module  Name : DEMUX DESIGN MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module DEMUX_1X2(I,S,O1,O2);
input I;
input S;
output O1,O2;
wire s;
not n1(s,S);
and a1(O1,s,I);
and a2(O2,S,I);
endmodule
