`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : PARALLEL IN SERIAL OUT[PISO] SHIFT REGISTER
//Module       : LOAD AND SHIFT CIRCUIT TO PISO SHIFT REGISTER
//Module  Name : LD_SFT
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////



module LD_SFT(S,IN1,IN2,OUT);
input S,IN1,IN2;
output OUT;
assign OUT = (S&IN2)|(~S&IN1);
endmodule
