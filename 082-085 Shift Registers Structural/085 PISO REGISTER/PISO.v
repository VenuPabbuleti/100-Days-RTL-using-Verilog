`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : PARALLEL IN SERIAL OUT[PISO] SHIFT REGISTER
//Module       : PISO REGISTER
//Module  Name : PISO
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module PISO(clk,d,sl,q);
input clk,sl;
input [3:0]d;
output q;
wire [5:0] out;
D_FF ff1(d[3],clk,out[0]);

LD_SFT ls1(sl,d[2],out[0],out[1]);
D_FF ff2(out[1],clk,out[2]);

LD_SFT ls2(sl,d[1],out[2],out[3]);
D_FF ff3(out[3],clk,out[4]);

LD_SFT ls3(sl,d[0],out[4],out[5]);
D_FF ff4(out[5],clk,q);
endmodule
