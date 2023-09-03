`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : SR FLIP FLOP USING JK FLIP FLOP --> JK TO SR FF CONVERSION
//Module       : TESTBENCH FOR SR FLIP FLOP USING JK FLIP FLOP
//Module  Name : TB_JK_TO_SR
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TB_JK_TO_SR();
reg clk,s,r;
wire q;

SR_FF ff(clk,s,r,q);

initial clk=0;
always #5 clk=~clk;

initial begin
    $monitor("s=%b , r=%b --> q=%b",s,r,q);
        s=0;r=0;
    #15 s=0;r=1;
    #10 s=1;r=0;
    #10 s=1;r=1;
    #10 s=0;r=0;
    #10 s=0;r=1;
    #10 s=1;r=0;
    #10 s=0;r=1;
    #10 s=1;r=1;
    #15 $finish;
end
endmodule