`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : D Latch By 2x1 Mux
//Module  : D_LATCH_TB
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module D_LATCH_TB();
reg clk,D;
wire Q;

D_LATCH latch(D,clk,Q);

initial clk=0;
always #5 clk=~clk;

initial begin
    $monitor("clk=%b | D=%b --> Q=%b ",clk,D,Q);
    end
initial begin
     
       D=1;
	#5 D=1;
    #3 D=0;
    #2 D=1;
    #3 D=0;
    #2 D=1;
    #3 D=0;
    #2 D=1;
    #3 D=0;
    #3 D=0;
    #3 D=1;
    #2 D=0;
    #5 $finish;
end
endmodule
