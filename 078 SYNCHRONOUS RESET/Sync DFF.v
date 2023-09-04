`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : Synchronous D FLIP FLOP
//Module  Name : Sync_DFF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Sync_DFF(clk,D,reset_n,clear_n,Q);
input clk,D;
input reset_n; //Synchronous reset
input clear_n; //Synchrnous clear
output Q;

reg q_reg,q_next;

always@(posedge clk)
begin
	if(!reset_n)
		q_reg <=1'b0;
	else
		q_reg <= q_next;
end

always@(D,clear_n)
begin
	q_next = q_reg;
	if(!clear_n)
		q_next = 1'b1;
	else
		q_next = D;
end
assign Q = q_reg;
endmodule