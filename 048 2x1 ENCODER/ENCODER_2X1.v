`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 2 TO 1 ENCODER
//Module  Name : ENCODER_2X1
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module ENCODER_2X1(IN,OUT);
input [1:0]IN;
output reg OUT;
always@(IN) begin
    if(IN==2'b10)
        OUT=1'b1;
    else if(IN==2'b01)
        OUT=1'b0;
    else
        OUT=1'bx;
end
endmodule
