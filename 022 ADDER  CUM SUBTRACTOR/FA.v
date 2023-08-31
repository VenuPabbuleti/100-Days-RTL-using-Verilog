`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Adder cum Subtractor
//Module  : Full Adder Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module FA(A,B,Cin,Sum,Carry);
input A,B,Cin;
output Sum,Carry;
assign Sum    =  (A^B^Cin);
assign Carry  =  ((A&B)|(B&Cin)|(A&Cin)); 
endmodule
