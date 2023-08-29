`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  :Half Adder using Behavioral Model
//Module  :Main Design Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module half_Adder_bl(ip1,ip2,carry,sum);
input ip1,ip2;
output reg carry,sum;

always@(ip1,ip2) begin
    sum=ip1^ip2;
    carry =ip1&ip2;
end
endmodule
