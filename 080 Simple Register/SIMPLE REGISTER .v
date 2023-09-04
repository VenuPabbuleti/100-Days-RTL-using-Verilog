`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : Simple Register
//Module  Name : simple_register
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module simple_register #(parameter N=5)(clk,D,Q);
input clk;
input [N-1:0]D;
output [N-1:0] Q;

reg [N-1:0]q_next,q_reg;

always@(posedge clk)
begin
	q_reg  = q_next;
end

always@(D)
begin
	q_next = D;
end
 
assign Q = q_reg;
endmodule