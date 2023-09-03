`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : D LATCH
//Module       : TESTBENCH FOR D LATCH
//Module  Name : TESTBENCH_DLATCH
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////



module TESTBENCH_DLATCH();
reg rst,clk,D_IN;
wire Q;

D_LATCH latch(clk,rst,D_IN,Q);

initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
 
    $monitor("clk=%b ,reset=%b ,D In=%b--> Q=%b",clk,rst,D_IN,Q);
        rst=1;D_IN=1;
    #5 rst=0;
    #3 D_IN=0;
    #2 D_IN=1;
    #3 D_IN=0;
    #2 D_IN=1;
    #5 $finish;
end
endmodule
