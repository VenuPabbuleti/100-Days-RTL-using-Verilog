`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 2 TO 1 MUX
//Module  Name : MUX TESTBENCH MODULE
//RGUKT NUZVID 
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


module Tb();
reg [1:0]I;
reg S;
wire O;
MUX_2x1 mux(S,I,O);
reg [3:0]temp;
initial begin
   $monitor("Select_line = %b | Input I1 = %b | Input I0 = %b | Output = %b",S,I[1],I[0],O);
   for(temp=0 ; temp<8 ;temp=temp+1 ) begin
        S = temp[2];
        I = temp[1:0];
        #5;
   end
$finish;
end
endmodule
