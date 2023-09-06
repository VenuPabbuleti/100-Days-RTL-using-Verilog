`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : PARALLEL IN SERIAL OUT[PISO] SHIFT REGISTER
//Module       : TESTBENCH FOR PISO SHIFT REGISTER
//Module  Name : TB_PISO
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////



module TB_PISO();
reg clk,reset,sl;
reg [3:0]d;
wire q;
piso piso_reg(reset,clk,sl,d,q);
initial begin
    $monitor("reset=%b ,load=%b ,d=%b,q=%b",reset,sl,d,q);
    clk=1'b0;
    forever #5 clk=~clk;
end
initial begin
	reset=1'b1; d=4'b1011;
    #13   reset=1'b0;   sl=1'b1;
    #10   sl=1'b0;//d=4'b1110;
    //#10 sl=1'b1;
    /*#10 d=4'b1011;
    #10 d=4'b1111;*/
    #40 $finish;
end 
endmodule
