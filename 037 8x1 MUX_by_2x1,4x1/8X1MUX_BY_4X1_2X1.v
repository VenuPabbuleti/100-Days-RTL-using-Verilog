`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 8 TO 1 MUX USING 4X1 MUX AND 2X1 MUX
//Module  Name : MUX MAIN DESIGN MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module MUX_8X1(S,I,O);
input [2:0]S;
input [7:0]I;
output O;

wire [1:0]W;
MUX_4X1 mux1(S[1:0],I[3:0],W[0]);
MUX_4X1 mux2(S[1:0],I[7:4],W[1]);
MUX_2X1 mux3(S[2],W,O);

endmodule
