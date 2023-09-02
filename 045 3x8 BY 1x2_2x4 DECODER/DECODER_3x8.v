`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 3 TO 8 DECODER USING 1 TO 2 DECODER AND 2 TO 4 DECODER
//Module  Name : 3 TO 8 DECODER DESIGN MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module DECODER_3x8(S,O);
input [2:0]S;
output [7:0]O;
wire O1,O2;
DECODER_1x2 decoder1(S[2],O1,O2);
DECODER_2x4 decoder2(O1,S[1],S[0],O[0],O[1],O[2],O[3]);
DECODER_2x4 decoder3(O2,S[1],S[0],O[4],O[5],O[6],O[7]);
endmodule
