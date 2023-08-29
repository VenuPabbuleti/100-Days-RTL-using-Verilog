`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  :Half Adder using Gate Level Model
//Module  :Main Design Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module ha_gl(ip1,ip2,sum,carry);
input ip1,ip2;
output sum,carry;

and a1(carry,ip1,ip2);
xor x1(sum,ip1,ip2);
endmodule
