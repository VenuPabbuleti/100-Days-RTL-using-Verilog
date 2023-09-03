`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : D Latch By 2x1 Mux
//Module  : Mux_2x1
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Mux_2x1(x1,x2,s,f);
input x1,x2,s;
output reg f;

always@(x1,x2,s) 
begin
    if(s)
        f=x2;
    else if(!s)
        f=x1;
    else
        f=1'bx;
end
endmodule

 
