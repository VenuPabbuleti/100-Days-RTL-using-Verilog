`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : JK FLIPFLOP
//Module  Name : JK_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module JK_FF(clk,rst,j,k,q);
input clk,rst,j,k;
output reg q;

always@(posedge clk) begin
    if(rst)
        q=0;
    else
        q<=(j&(~q))|((~k)&q);
end
endmodule
