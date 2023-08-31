`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project Name : RTL design using Verilog
//Design  Nmae : 4 BIT BCD TO BINARY CODE CONVERTER
//Module  Nmae : BCD TO BINARY CODE CONVERTER MAIN DESIGN MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module BCD_TO_BINARY(bcd,binary);
input[7:0]bcd;
output reg [3:0]binary;

always@(bcd) begin
    if(bcd>=10) begin
        binary = bcd-6;
        end
    else begin
        binary = bcd;
        end
end
endmodule
