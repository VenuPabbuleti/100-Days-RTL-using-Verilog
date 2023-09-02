`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 4 TO 16 DECODER
//Module  Name : decoder_2x4
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module decoder_4x16 (En,IN,Y);
input En;
input [3:0] IN;
output [0:15] Y;

wire [0:3] w;

decoder_2x4 d1(En,IN[3:2],w);
decoder_2x4 d2(w[0],IN[1:0],Y[0:3]);
decoder_2x4 d3(w[1],IN[1:0],Y[4:7]);
decoder_2x4 d4(w[2],IN[1:0],Y[8:11]);
decoder_2x4 d5(w[3],IN[1:0],Y[12:15]);

endmodule