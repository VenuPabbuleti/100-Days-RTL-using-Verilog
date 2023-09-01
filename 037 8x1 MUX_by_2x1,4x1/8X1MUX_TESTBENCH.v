`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 8 TO 1 MUX USING 4X1 MUX AND 2X1 MUX
//Module  Name : 8X1 MUX TESTBENCH MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TESTBENCH_8X1MUX();
reg [2:0]S;
reg [7:0]I;
wire O;
MUX_8X1 MUX(S,I,O);
initial begin
    $monitor("S=%b | I=%b | O=%b",S,I,O);
       I=8'b10101011;
    #5 S=3'B101;
    #5 S=3'B111;
    #5 S=3'B100;
    #5 S=3'B011;
    #5 I=8'b10100000;
    #5 S=3'B000;
    #5 S=3'B010;
    #5 $finish;
end
endmodule
