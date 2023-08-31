`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : N bit magnitude comparator
//Module  : N bit magnitude comparator Testbench Module method 1
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Nbit_comparator_tb();
parameter N=10;
reg[N-1:0]A,B;
wire L_T,G_T,E;
n_bit_magnitude_comparator he(A,B,L_T,G_T,E);          //both the methods will work 

initial begin 
$monitor("A=%d,  B=%d,  L_T=%b,  G_T=%b,  E=%b",A,B,L_T,G_T,E);
end
initial begin
A=6'b111100;B=6'b111101;
#10 A=6'b101010;B=6'b101010;
#10 A=6'b111111;B=6'b100111;
#10 $finish;
end


endmodule
 