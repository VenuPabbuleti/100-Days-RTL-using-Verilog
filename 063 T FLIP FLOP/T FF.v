`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : T FLIPFLOP
//Module  Name : T_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module T_FF(clk,rst,t,q);
input clk,rst,t;
output reg q;

always@(posedge clk) begin
    if(rst)
        q<=0;
    else
        q<=t^q;
end
endmodule
