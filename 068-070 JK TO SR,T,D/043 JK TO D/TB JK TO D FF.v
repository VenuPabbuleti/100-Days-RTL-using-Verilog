`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : D FLIP FLOP USING JK FLIP FLOP --> JK TO D FF CONVERSION
//Module       : TESTBENCH FOR D FLIP FLOP USING JK FLIP FLOP
//Module  Name : TB_JK_D
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module TB_JK_D();
reg clk,d;
wire q;
D_FF ff(clk,d,q);
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
    $monitor("d=%b ---> q=%b",d,q);
        d=0;
    #15 d=1;
    #10 d=0;
    #10 d=1;
    #10 d=0;
    #15 $finish;
end
endmodule