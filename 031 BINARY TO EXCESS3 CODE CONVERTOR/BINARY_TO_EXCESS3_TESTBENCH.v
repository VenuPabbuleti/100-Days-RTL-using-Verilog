`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project Name : RTL design using Verilog
//Design  Nmae : 4 BIT BINARY TO EXCESS3 CODE CONVERTOR
//Module  Nmae : BINARY TO EXCESS3 CODE CONVERTER TESTBENCH MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////



module Testbench();
reg [3:0]B_IN;
wire [3:0] EX_OUT;
reg [4:0]temp_count;

Binary_to_Excess3 b2ex(B_IN,EX_OUT);

initial $monitor("Binary input = %b | %d  --->  Excess3 ouput = %b | %d",B_IN,B_IN,EX_OUT,EX_OUT);

initial begin
for(temp_count=0 ; temp_count<=15 ; temp_count=temp_count+1)begin
    B_IN=temp_count[3:0];
    #5 ;
end
$finish;
end 
endmodule
