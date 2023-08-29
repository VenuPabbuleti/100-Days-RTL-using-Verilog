`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Full Adder using Data Flow Model
//Module  : Main Design Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module FA_DF(ip1,ip2,ip3,carry,sum);
input ip1,ip2,ip3;
output carry,sum;

assign carry=((ip1&ip2)| (ip2&ip3) |(ip3&ip1));
assign sum =ip1^ip2^ip3;
endmodule
