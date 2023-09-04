`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : Blocking and Non Blocking Design
//Module  Name : Block_NonBlock
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Block_NonBlock(clk,D,Q0_block,Q1_block,Q0_N_block,Q1_N_Block);
input clk,D;
output Q0_block,Q1_block,Q0_N_block,Q1_N_Block;

blocking blo(clk,D,Q0_block,Q1_block);
Non_blocking n_blo(clk,D,Q0_N_block,Q1_N_Block);

endmodule