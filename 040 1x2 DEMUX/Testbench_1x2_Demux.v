`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 1 TO 2 DEMUX
//Module  Name : DEMUX TESTBENCH MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Testbench_1x2_Demux();
reg I;
reg S;
wire O1,O2;
DEMUX_1X2 demux(I,S,O1,O2);
initial begin
    $monitor("S=%b | I=%b | O1=%b | O2=%b |",S,I,O1,O2);
    S=0;I=1;
    #5 S=1;
    #5 S=0; I=0;
    #5 S=1;
    #5 $finish;
end
endmodule
