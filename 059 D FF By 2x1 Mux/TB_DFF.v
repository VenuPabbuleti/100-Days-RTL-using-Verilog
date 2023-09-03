`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : D FF By 2x1 Mux
//Module  : TB_D_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TB_DFF();
reg clk,d;
wire q;
D_FF dff(d,clk,q);

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

 
