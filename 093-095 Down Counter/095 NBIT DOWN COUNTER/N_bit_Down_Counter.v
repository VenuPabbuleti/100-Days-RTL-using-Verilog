`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : N BIT Down Counter
//Module  Name : N_bit_Down_Counter
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module N_bit_Down_Counter #(parameter BIT=4)(clk,reset_n,count);
input clk;
input reset_n;
output [BIT-1:0]count;

reg [BIT-1:0]q_reg,q_next;

//
always @(posedge clk)
begin
    if(~reset_n)
        q_reg <= 'b0;
    else
        q_reg <=q_next;
end

//Next state logic
always @(*)
begin
    q_next <= q_reg-1;
end

//output logic
assign count = q_reg;    
endmodule
