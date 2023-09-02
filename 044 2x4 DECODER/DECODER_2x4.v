`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 2 TO 4 DECODER
//Module  Name : 2 TO 4 DECODER DESIGN MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////



module DECODER_2x4(A,B,O1,O2,O3,O4);
input A,B;
output O1,O2,O3,O4;

wire a,b;

not n1(a,A);
not n2(b,B);

and a1(O1,a,b);
and a2(O2,a,B);
and a3(O3,A,b);
and a4(O4,A,B);

endmodule
