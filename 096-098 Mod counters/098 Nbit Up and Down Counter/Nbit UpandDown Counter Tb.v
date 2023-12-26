 `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : N BIT UP AND DOWN Counter
//Module  Name :  Nbit_Up_and_Down_Counter_Tb
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Nbit_Up_and_Down_Counter_Tb();
localparam Bit = 4;

reg clk,rst,uad;
wire [Bit-1:0]Count;

Nbit_UpandDown_Counter #(Bit) dut(clk,rst,uad,Count);

initial clk=0;
always #5 clk=~clk;

initial begin
    $monitor("Up/Down = %b   , Counter = %b",uad,Count);
end

initial begin

    rst=1'b1;
 #6 rst=1'b0;
 #3 uad = 1'b1;
 #60 uad = 1'b0;
 #50 uad =1'b1;
 #10 uad = 1'b0;
 #10 $finish;
 
end
endmodule
