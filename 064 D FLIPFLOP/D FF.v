`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : D FLIPFLOP
//Module  Name : D_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module D_FF(clk,rst,d,q);
input clk,rst,d;
output reg q;

always@(posedge clk) begin
    if(rst)
        q<=0;
    else
        q<=d;
end
endmodule