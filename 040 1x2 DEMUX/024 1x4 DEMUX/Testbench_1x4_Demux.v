`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 1 TO 4 DEMUX
//Module  Name : DEMUX TESTBENCH MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////



module Testbench_1x4_Demux();
reg I;
reg [1:0]S;
wire[3:0]Y;
DEMUX_1x4 demux(I,S,Y);
reg [3:0]count;
initial begin
    $monitor("S=%b ,I=%b ---> Y=%b",S,I,Y);
    for(count=0;count<8;count=count+1)begin
        {S,I}=count[2:0];
        #5 ;
        end
$finish; 
end
endmodule
