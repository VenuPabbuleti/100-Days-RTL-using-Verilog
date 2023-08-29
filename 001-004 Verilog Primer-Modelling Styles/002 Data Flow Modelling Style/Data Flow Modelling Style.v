`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Data Flow Modeling style
//Module  : Data_Flow_Modelling_Style_mux2x1
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Data_Flow_Modelling_Style_mux2x1(x1,x2,s,f);
input x1,x2,s;
output f;

assign f = (~s & x1)| (s & x2);
endmodule

