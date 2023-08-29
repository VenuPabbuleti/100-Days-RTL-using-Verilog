`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  :Full Adder using Behavioral Level Model
//Module  :Main Design Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////
module fa_bl(ip1,ip2,ip3,carry,sum);
input ip1,ip2,ip3;
output reg carry,sum;

always @(ip1,ip2,ip3)begin
    carry=(ip1&ip2)|(ip2&ip3)|(ip3&ip1);
    sum=ip1^ip2^ip3;
end
endmodule  
