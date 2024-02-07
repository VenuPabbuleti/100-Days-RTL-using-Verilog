`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Pabbuleti Venu 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : Jonson Counter
//Module  Name : Jonson_Counter
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Jonson_Counter(clk,rst,load,data,q);
input clk,rst,load;
input [3:0]data;
output reg [3:0]q;

always @(posedge clk , posedge rst) begin
    if(rst)
        q <= 4'b0000;
    else if(load)
        q <= data;
     else
        q = {~q[0],q[3:1]};
end
endmodule
