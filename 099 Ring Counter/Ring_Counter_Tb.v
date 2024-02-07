`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Pabbuleti Venu 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : Ring Counter
//Module  Name : Ring_Counter_TB
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Ring_Counter_TB();
reg clk,rst,load;
reg [3:0]data;
wire [3:0]q;

Ring_Counter rc(clk,rst,load,data,q);

initial begin
    $monitor("rst = %b | load = %b | data = %b | q = %b",rst,load,data,q);
end

initial clk = 1'b0;
always #5 clk = ~ clk;

initial begin
        rst = 1'b1;
    #10 rst = 1'b0; 
    #30 load = 1'b1; data = 4'b1110;
    #10 load = 1'b0;
    #60 $finish;
    end
endmodule
