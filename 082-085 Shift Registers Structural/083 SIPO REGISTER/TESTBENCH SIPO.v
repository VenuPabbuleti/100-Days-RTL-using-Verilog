`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : SERIAL IN PARALLEL OUT[SIPO] SHIFT REGISTE
//Module       : TESTBENCH FOR SIPO REGISTER
//Module  Name : TB_SIPO
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////



module TB_SIPO();
reg clk,d;
wire [3:0]q;
SIPO register(d, clk, q);
initial begin
    $monitor("d=%b,clk=%b,q=%b",d,clk,q);
    clk=1'b0;
    forever #5 clk=~clk;
end
initial begin
        d=1;
    #15 d=0;
    #10 d=1;
    #10 d=1;
    #10 $finish;
end 
endmodule
