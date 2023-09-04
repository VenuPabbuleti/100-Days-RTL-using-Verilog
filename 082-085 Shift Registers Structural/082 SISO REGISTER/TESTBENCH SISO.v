`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : SERIAL IN SERIAL OUT[SISO] SHIFT REGISTE
//Module       : TESTBENCH FOR SISO REGISTER
//Module  Name : TB_SISO
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////



module TB_SISO();
reg d,clk;
wire q;
SISO register(d, clk, q);
initial begin
    $monitor("d=%b,clk=%b,q=%b",d,clk,q);
    clk=1'b0;
    forever #5 clk=~clk;
end
initial begin
        d=1;
    #10 d=0;
    #10 d=1;
    #10 d=1;
    #43 $finish;
end 
endmodule
