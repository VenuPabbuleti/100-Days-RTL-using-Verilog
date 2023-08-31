`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project Name : RTL design using Verilog
//Design  Nmae : 4 BIT BINARY TO EXCESS3 CODE CONVERTOR
//Module  Nmae : BINARY TO EXCESS3 CODE CONVERTER MAIN DESIGN MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module Binary_to_Excess3(B_IN,EX_OUT);
input [3:0]B_IN;
output [3:0]EX_OUT;
reg [3:0]EX_OUT;

always @(B_IN) begin
    if(B_IN>12) begin
        EX_OUT = 4'bxxxx;
        end
     else begin
        EX_OUT = B_IN+3;
        end
end
endmodule
