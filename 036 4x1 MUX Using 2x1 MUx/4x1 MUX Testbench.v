`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : 4x1 MUX Using 2x1 MUX
//Module  : Testbench_mux4x1
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Testbench_mux4x1();
reg [3:0]x;
reg [1:0]s;
wire f;

mux4x1 uut(x,s,f);
initial begin
    $monitor("S1=%b|S0=%b|x3=%b|x2=%b|x1=%b|x0=%b|f=%b",s[1],s[0],x[3],x[2],x[1],x[0],f);
       x=4'b1011;
    #5 s=2'b00;
    #5 s=2'b10;
    #5 x=4'b0100;
    #5 s=2'b11;
    #5 s=2'b01;
    #5 $finish;
end
endmodule
