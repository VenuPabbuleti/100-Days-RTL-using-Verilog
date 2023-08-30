`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Title   : Full substractor using Data Flow method
//Module  : Main Design Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module fs_df(a,b,c,ba,d);
input a,b,c;
output ba,d;

assign ba=((~a)&b)|(b&c)|((~a)&c);
assign d=a^b^c;

endmodule
