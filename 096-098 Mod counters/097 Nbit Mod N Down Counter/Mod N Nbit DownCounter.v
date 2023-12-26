`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : MOD N N BIT DOWN Counter
//Module  Name : Mod_N_Nbit_DownCounter
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Mod_N_Nbit_DownCounter #(parameter bits = 5,parameter mod = 17)(Rst,Counter,Clk);

output  [bits-1:0]Counter;
input Clk,Rst;

reg [bits-1:0]q_reg,q_next;

always@(posedge Clk) begin
    if(~Rst)
        q_reg <= 'b11111;
    else
        q_reg <=q_next;
end

always@(*) begin
    if(q_reg==mod)
        q_next <= 'b0;
    else
        q_next <= q_reg -1 ; 
end

assign Counter = q_reg;

endmodule
