`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Half Subtractor using Gate Level Model
//Module  : Main Design Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module HS_GL(ip1,ip2,borrow,difference);
input ip1,ip2;
output borrow,difference;

wire ip;
not n1(ip,ip1);
and a1(borrow,ip,ip2);
xor x1(difference,ip1,ip2);
endmodule
