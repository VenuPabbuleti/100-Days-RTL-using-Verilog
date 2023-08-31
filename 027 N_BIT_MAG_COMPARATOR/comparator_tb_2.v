`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : N bit magnitude comparator
//Module  : N bit magnitude comparator Testbench Module method2
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module Nbit_comparator_tb();
reg [9:0]A,B;
wire L_T,G_T,E;

n_bit_magnitude_comparator #(10) he(A,B,L_T,G_T,E);

initial begin 
$monitor("A=%d,  B=%d,  L_T=%b,  G_T=%b,  E=%b",A,B,L_T,G_T,E);
end

initial begin
A=6'b111100;B=6'b111101;
#10 A=6'b110011;B=6'b101111;
#10 A=6'b101010;B=6'b101010;
#10 $finish;
end
endmodule 
