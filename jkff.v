`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:29:59 02/23/2019 
// Design Name: 
// Module Name:    jkff 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module jkff(clk,j,k,q,qb);

input clk,j,k;
output q,qb;

fredkin2 f1(j,qb,p1,q1);
fredkin2 f2(k,q,p2,q2);

srff s1(clk,p1,p2,q,qb);

endmodule
