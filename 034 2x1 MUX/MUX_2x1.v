`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 2 TO 1 MUX
//Module  Name : MUX DESIGN MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module MUX_2x1(S,I,O);
input S;
input [1:0]I;
output O;

assign O = S ? (I[1]) : (I[0]) ;

endmodule
