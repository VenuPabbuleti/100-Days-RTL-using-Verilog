`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : T FLIP FLOP USING SR FLIP FLOP --> SR TO T FF CONVERSION
//Module       : TESTBENCH FOR T FLIP FLOP USING SR FLIP FLOP
//Module  Name : TB_TFF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TB_TFF();
reg clk,t;
wire q;
T_FF ff(clk,t,q);
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
    $monitor("t=%b ---> q=%b",t,q);
        t=0;
    #10 t=1;
    #10 t=0;
    #10 t=1;
    #10 t=1;
    #10 t=0;
    #15 $finish;
end
endmodule
