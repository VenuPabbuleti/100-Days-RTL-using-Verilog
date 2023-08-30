`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Half Subtractor using Data Flow Model
//Module  : Main Design Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module HS_DF(ip1,ip2,borrow,difference);
input ip1,ip2;
output borrow,difference;

assign borrow = ip1 ^ ip2;
assign difference = (~ip1) & ip2;
endmodule
