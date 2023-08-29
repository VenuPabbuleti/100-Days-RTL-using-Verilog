`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  :Half Adder using Data Flow Model
//Module  :Main Desig  Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module half_adder(ip1,ip2,sum,carry);
input ip1,ip2;
output sum,carry;
assign sum=ip1^ip2;
assign carry=ip1&ip2;
endmodule



