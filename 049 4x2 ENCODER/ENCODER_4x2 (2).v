`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 4 TO 2 ENCODER
//Module  Name : ENCODER_4X2
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module ENCODER_4x2(D3,D2,D1,D0,O2,O1);
input D3,D2,D1,D0;
output O2,O1;
assign O1=D1+D3;
assign O2=D2+D3;

endmodule
