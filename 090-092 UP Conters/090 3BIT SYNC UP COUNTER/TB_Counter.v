`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 3 Bit Synchronous Up Counter
//Module       : Testbench for 3bit Synchronous Up Counter
//Module  Name : TB_Counter
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TB_Counter();
reg clk;
wire [2:0]Q;

UpCounter_3Bit counter(clk,Q);

initial clk=0;
always #5 clk=~clk;

initial begin
    $monitor("count =%d ",Q);
    #160 $finish;
end
endmodule
