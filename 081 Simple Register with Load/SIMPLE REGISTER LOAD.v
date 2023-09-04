`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : Simple Register
//Module  Name : simple_register_load
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module simple_register_load #(parameter N=5)(clk,load,D,Q);
input clk;
input load;
input [N-1:0]D;
output [N-1:0] Q;

reg [N-1:0]q_next,q_reg;

always@(posedge clk)
begin
	q_reg  = q_next;
end

always@(load,D)
begin
	if(load)
		q_next = D;
	else
		q_next = q_reg;
end
 
assign Q = q_reg;
endmodule