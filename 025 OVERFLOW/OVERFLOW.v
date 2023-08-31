`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : overflow in signed numbers
//Module  : adder_subtractor_Overflow
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module adder_subtractor_Overflow(x,y,add_sub,sum,c_out,overflow);
input [3:0]x,y;
input add_sub;
output [3:0]sum;
output c_out;
output overflow;
wire  [3:0]xored_y;


assign xored_y[0] = y[0] ^ add_sub;
assign xored_y[1] = y[1] ^ add_sub;
assign xored_y[2] = y[2] ^ add_sub;
assign xored_y[3] = y[3] ^ add_sub;

rca_nbit addsub1 (x,y,add_sub,sum,c_out);

assign overflow = (x[3] & xored_y[3] & ~sum[3]) | (~x[3] & ~xored_y[3] & sum[3]);

endmodule