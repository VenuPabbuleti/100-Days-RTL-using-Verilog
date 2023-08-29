`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Full Adder using Gate Level Model
//Module  : Main Design Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module FA_GL(ip1,ip2,ip3,carry,sum);
input ip1,ip2,ip3;
output carry,sum;

wire s1,c1,c2,c3;
xor x1(s1,ip1,ip2);
xor x2(sum,s1,ip3);

and a1(c1,ip1,ip2);
and a2(c2,ip2,ip3);
and a3(c3,ip3,ip1);

or o1(carry,c1,c2,c3);
endmodule
