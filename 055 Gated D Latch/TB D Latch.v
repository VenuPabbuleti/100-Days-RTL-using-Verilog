`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : Gated D Latch
//Module  Name : TB_D_Latch
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////



module TB_D_Latch();
reg clk,D;
wire Q,QB;

D_Latch Latch(clk,D,Q,QB);

initial clk=0;
always #5 clk=~clk;

initial begin
    $monitor("clk=%b | D=%b --> Q=%b | QB=%b ",clk,D,Q,QB);
    end
initial begin
     
       D=1;
	#5 D=1;
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
