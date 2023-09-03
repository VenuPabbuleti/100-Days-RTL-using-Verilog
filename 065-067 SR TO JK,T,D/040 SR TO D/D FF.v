`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : D FLIP FLOP USING SR FLIP FLOP --> SR TO D FF CONVERSION
//Module  Name : D_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module D_FF(clk,d,q);
input clk,d;
output q;
SR_FF ff(clk,d,~d,q);
endmodule
