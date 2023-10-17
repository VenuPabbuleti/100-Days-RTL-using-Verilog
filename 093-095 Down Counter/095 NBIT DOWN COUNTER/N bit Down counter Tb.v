`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : N BIT Down Counter
//Module  Name : N_bit_Down_counter_Tb
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module N_bit_Down_counter_Tb();

//required parameter values
localparam BIT = 3;
localparam BITS = 4;
localparam T=10;

//declaring the signals
reg clk;
reg reset_n;
wire [BIT-1:0]count_n_bit1;
wire [BITS-1:0]count_n_bit2;

//
N_bit_Down_Counter #(BIT)  uut_down_counter(clk,reset_n,count_n_bit1);
N_bit_Down_Counter #(BITS) uut_down_counter1(clk,reset_n,count_n_bit2);
//genrating the clock signal
initial clk=0;
always #(T/2) clk = ~clk;

//monitoring the signals
initial begin 
    $monitor("counter1 = %d || counter2 = %d",count_n_bit1,count_n_bit2);
end

//stimulus values
initial begin
    #3 reset_n = 1'b0;
    #6 reset_n = 1'b1;
    #200 $finish;
end
endmodule
