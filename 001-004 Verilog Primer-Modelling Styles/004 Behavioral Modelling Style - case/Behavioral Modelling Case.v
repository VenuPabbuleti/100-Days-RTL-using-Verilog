`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Behavioral Modeling style
//Module  : Behavior_Modelling_Case
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Behavior_Modelling_Case(x1,x2,s,f);
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

 
