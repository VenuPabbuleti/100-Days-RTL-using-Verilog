`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Title   : Full substractor using Gate Level Model
//Module  : Design module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module fs_gl(a,b,c,ba,d);
input a,b,c;
output ba,d;

wire [4:0]w;
not n1(w[1],a);

xor x1(w[0],a,b);
xor x2(d,w[0],c);

and a1(w[2],w[1],b);
and a2(w[3],w[1],c);
and a3(w[4],b,c);

or o1(ba,w[2],w[3],w[4]);
endmodule


 