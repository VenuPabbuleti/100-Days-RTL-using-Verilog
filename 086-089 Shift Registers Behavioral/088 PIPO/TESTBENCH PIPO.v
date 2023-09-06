`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : PARALLEL IN PARALLEL OUT[SISO] SHIFT REGISTE
//Module       : TESTBENCH FOR PIPO REGISTER
//Module  Name : TB_PIPO
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module TB_PIPO();
reg clk,reset;
reg [3:0]d;
wire [3:0]q;
pipo register(reset,clk, d, q);
initial begin
    $monitor("reset=%b,d=%b,q=%b",reset,d,q);
    clk=1'b0;
    forever #5 clk=~clk;
end
initial begin
		reset = 1'b1;
    #10 reset = 1'b0; d=4'b1001;
    #10 d=4'b1011;
    #10 d=4'b1111;
    #15 $finish;
end 
endmodule
