`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : D LATCH
//Module  Name : D_LATCH
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module D_LATCH(clk,rst,D_IN,Q);
input clk,D_IN,rst;
output reg Q;

always@(clk,rst,D_IN) begin
    if(rst)
        Q<=0;
    else
        case({clk})
        1'b1    :   Q<=D_IN;
        1'b0    :   Q<=Q;
        endcase
end
endmodule
