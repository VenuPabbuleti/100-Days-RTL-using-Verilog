`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : D FF Using D LATCH
//Module  Name : DFF_DL_TB
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module DFF_DL_TB();
reg clk,d;
wire q;
DFF_DL dff(d,clk,q);

initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
    $monitor(" d=%b  ---> q=%b",d,q);
        d=1;
	#13 d=0;
    #10 d=1;
    #10 d=0;
    #15 $finish;
end
endmodule

 
