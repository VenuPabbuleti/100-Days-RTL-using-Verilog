`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Gate Level Modeling style
//Module  : Gate_Level_Modeling_mux2x1
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Gate_Level_Modeling_mux2x1(x1,x2,s,f);
input x1,x2,s;
output f;

wire s0,w0,w1;
not n1(s0,s);
and a0(w0,s0,x1);
and a1(w1,s,x2);
or o1(f,w0,w1);
endmodule
