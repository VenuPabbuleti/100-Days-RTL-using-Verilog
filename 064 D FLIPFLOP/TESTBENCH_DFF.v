`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : D FLIPFLOP
//Module       : TESTBENCH FOR D FLIP FLOP
//Module  Name : TB_DFF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TB_DFF();
reg clk,rst,d;
wire q;
D_FF dff(clk,rst,d,q);

initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
    $monitor("reset =%b , d=%b  ---> q=%b",rst,d,q);
        rst=1;d=1;
    #15 rst=0;
    #10 d=0;
    #10 d=1;
    #15 $finish;
end
endmodule

 
