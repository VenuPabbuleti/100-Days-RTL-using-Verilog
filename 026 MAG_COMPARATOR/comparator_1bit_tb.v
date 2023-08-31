`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : 1 bit magnitude comparator
//Module  : 1 bit magnitude comparator Testbench Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Comparator_1bit_TB();
reg A,B;
wire L,G,E;
reg [1:0]c=0;
Mag_comp_1bit mag(A,B,L,G,E);

initial 
$monitor("A=%b,B=%b,L=%b,G=%b,E=%b",A,B,L,G,E);
initial begin
for(c=0;c<4;c=c+1)begin
    {A,B}=c;
    #10;
    end
end
initial #40 $finish;
endmodule
