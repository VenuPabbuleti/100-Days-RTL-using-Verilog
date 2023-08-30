`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Half Subtractor using Data Flow Model
//Module  : Testbench Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////



module testbench();
reg ip1,ip2;
wire borrow,difference;

HS_DF hs(ip1,ip2,borrow,difference);

initial begin
$monitor("ip1=%b   ip2=%b   borrow=%b    difference=%b",ip1,ip2,borrow,difference);
   ip1=0;   ip2=0;
#2 ip1=0;   ip2=1;
#2 ip1=1;   ip2=0;
#2 ip1=1;   ip2=1;

#2 $finish;
end
endmodule
