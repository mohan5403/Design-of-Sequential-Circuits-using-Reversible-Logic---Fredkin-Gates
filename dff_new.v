`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:40:49 02/23/2019 
// Design Name: 
// Module Name:    dff_new 
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
module dff(clk,d,q,qb);

input clk,d;
output q,qb;
reg q3=0;
reg q5=0;

//fredkin f1(clk,1'b0,1'b1,p1,q1,r1);
//fredkin f2(p1,d,q3,p2,q2,r2);
//fredkin f3(r2,1'b0,1'b1,p3,q3,r3);
//fredkin f4(r1,p3,q5,p4,q4,r4);
//fredkin f5(r4,1'b0,1'b1,q,q5,qb);

dlatch  d1 (clk,d,q11,qb1);
fredkin f1 (clk,1'b0,1'b1,p1,q1,r1);
dlatch  d2 (r1,q11,q,qb);

endmodule
