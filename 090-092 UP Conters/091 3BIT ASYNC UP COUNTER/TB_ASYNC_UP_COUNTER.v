`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 3 Bit Asynchronous Up Counter
//Module       : Testbench for 3bit Asynchronous Up Counter
//Module  Name : TB_Async_Up_Counter
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TB_Async_Up_Counter();
reg clk;
wire Q2,Q1,Q0;

ASYNC_UP_COUNTER counter(clk,Q2,Q1,Q0);

initial clk=0;
always #5 clk=~clk;

initial begin
    $monitor("count =%d ",{Q2,Q1,Q0});
    #180 $finish;
end
endmodule
 
