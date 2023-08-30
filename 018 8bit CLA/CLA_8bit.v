`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : 8Bit CLA
//Module  : 8bit RCA  Main Design Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module CLA_8bit(a,b, cin, sum,cout,out);
input [7:0] a,b;
input cin;
output [7:0] sum;
output cout;
output [8:0]out;
wire c1,c2,c3;

carry_look_ahead_4bit cla1 (.a(a[3:0]), .b(b[3:0]), .cin(cin), .sum(sum[3:0]), .cout(c1));
carry_look_ahead_4bit cla2 (.a(a[7:4]), .b(b[7:4]), .cin(c1), .sum(sum[7:4]), .cout(cout));
assign out={cout,sum};
endmodule