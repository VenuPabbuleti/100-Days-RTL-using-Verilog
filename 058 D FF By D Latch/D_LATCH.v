`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : D FF Using D LATCH
//Module  Name : D_LATCH
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module D_LATCH(clk,D_IN,Q);
input clk,D_IN;
output reg Q;

always@(clk,D_IN) begin
    case({clk})
        1'b1    :   Q<=D_IN;
        1'b0    :   Q<=Q;
		default :   Q<=1'b0;
    endcase
end
endmodule
