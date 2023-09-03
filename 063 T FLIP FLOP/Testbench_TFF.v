`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : T FLIPFLOP
//Module       : TESTBENCH FOR T FLIP FLOP
//Module  Name : TB_TFF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TB_TFF();
reg clk,rst,t;
wire q;
T_FF tff(clk,rst,t,q);

initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
    $monitor("reset =%b , t=%b  ---> q=%b",rst,t,q);
         rst=1;t=1;
    #15 rst=0;
    #10 t=0;
    #10 t=1;
    #15 $finish;
end
endmodule
