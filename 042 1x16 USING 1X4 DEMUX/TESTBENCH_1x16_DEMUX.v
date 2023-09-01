`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 1 TO 16 DEMUX
//Module  Name : 1 TO 16 DEMUX TESTBENCH MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TESTBENCH_1x16_DEMUX();
reg [3:0]S;
reg IN;
wire [15:0]Y;
DEMUX_1x16 demux(S,IN,Y);
initial begin
    $monitor("S=%b|IN=%b--->Y=%b",S,IN,Y);
        S=4'b0000;IN=1'b1;
    #5  S=4'b1100;
    #5  S=4'b0011;
    #5  S=4'b0100;
    #5 $finish;
end
endmodule
