`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Full substractor using Half subtractor
//Module  : Half subtractor Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module hs(in1,in2,Diff,Borr);
input in1,in2;
output Diff,Borr;
assign Diff=in1^in2;
assign Borr=((~in1)&in2);
endmodule
