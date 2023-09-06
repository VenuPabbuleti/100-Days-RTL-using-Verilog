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
reg clk,reset,d;
wire q;
siso register(reset,clk, d,q);
initial begin
    $monitor("reset=%b,d=%b,q=%b",reset,d,q);
    clk=1'b0;
    forever #5 clk=~clk;
end
initial begin
	reset =1'b1;
    #10 reset = 1'b0; d=1;
    #10 d=0;
    #10 d=1;
    #10 d=1;
    #43 $finish;
end 
endmodule
