`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Adder cum Subtractor
//Module  : Main Design Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module add_and_Sub(Ain,B,Cin,S,Ca);
input [3:0]Ain,B;
input Cin;
output reg[3:0]S;
output Ca;
wire [3:0]t;
wire [3:0] Bin;
wire [4:1] Carry;
assign Bin[0] = B[0] ^ Cin;
assign Bin[1] = B[1] ^ Cin;
assign Bin[2] = B[2] ^ Cin;
assign Bin[3] = B[3] ^ Cin;

FA F1(Ain[0],Bin[0],0,t[0],Carry[1]);
FA F2(Ain[1],Bin[1],Carry[1],t[1],Carry[2]);
FA F3(Ain[2],Bin[2],Carry[2],t[2],Carry[3]);
FA F4(Ain[3],Bin[3],Carry[3],t[3],Carry[4]);

assign Ca=Cin^Carry[4] ;
 
always @(Ca) begin 
if(Cin) begin
    if(Ca) begin
        S[0]=!t[0];
        S[1]=!t[1];
        S[2]=!t[2];
        S[3]=!t[3];
        end
    if(!Ca) begin
        S=t+1;
        end
    end
else begin
    S=t;
end
end
 
endmodule
