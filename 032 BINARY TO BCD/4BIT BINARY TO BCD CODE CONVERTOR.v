`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project Name : RTL design using Verilog
//Design  Nmae : 4 BIT BINARY TO BCD CODE CONVERTOR
//Module  Nmae : BINARY TO BCD CODE CONVERTER MAIN DESIGN MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module BINARY_TO_BCD(BINARY,BCD);
input [3:0]BINARY;
output reg [7:0]BCD;

always @(BINARY) begin
    if(BINARY>=10) begin
        BCD = BINARY+6;
        end
     else begin
        BCD = BINARY;
        end
end
endmodule
