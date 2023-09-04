`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : SERIAL IN SERIAL OUT[SISO] SHIFT REGISTER
//Module  Name : DFF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module DFF(d,clk,out);
input clk,d;
output reg out=0;
always@(posedge clk) begin
    out<=d;
end
endmodule
