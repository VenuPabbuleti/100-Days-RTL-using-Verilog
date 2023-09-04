`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : PARALLEL IN PARALLEL OUT[PIPO] SHIFT REGISTER
//Module  Name : D_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module D_FF(d,clk,out);
input clk,d;
output reg out=0;
always@(posedge clk) begin
    out<=d;
end
endmodule
