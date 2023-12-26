`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : MOD N NBIT Down Counter
//Module  Name : Mod_N_NBit_DownCounter_Tb
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Mod_N_NBit_DownCounter_Tb();

localparam Bit = 4;
localparam mod = 9;

reg Clk,Rst;
wire [Bit-1:0]Counter;


Mod_N_Nbit_DownCounter #(Bit,mod)uut(Rst,Counter,Clk);

initial Clk=0;
always #5 Clk = ~Clk;

initial begin 
    $monitor("counter = %d  ",Counter);
end

initial begin
    #3 Rst = 1'b0;
    #6 Rst = 1'b1;
    #200 $finish;
end


endmodule




