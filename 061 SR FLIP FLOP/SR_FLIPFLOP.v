`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : SR FLIPFLOP
//Module  Name : SR_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module SR_FF(clk,rst,S,R,Q);
input clk,rst,S,R;
output reg Q;
always@(posedge clk)
    if (rst)
        Q<=0;
    else
        case({S,R})
        2'b00   :   Q<=Q;
        2'b01   :   Q<=1'b0;
        2'b10   :   Q<=1'b1;
        2'b11   :   Q<=1'bx;
    endcase
endmodule
