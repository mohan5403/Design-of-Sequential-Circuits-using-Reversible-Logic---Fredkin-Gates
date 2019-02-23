`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:47:04 02/23/2019 
// Design Name: 
// Module Name:    shift_reg 
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
module shift_reg(clk,si,so);

input clk,si;
output so;

fredkin f1(clk,1'b0,1'b1,p1,q1,r1);
dff     d1(p1,si,q1,qb1);

fredkin f2(q1,1'b0,1'b1,p2,q2,r2);
dff     d2(p2,q1,q2,qb2);

fredkin f3(q2,1'b0,1'b1,p3,q3,r3);
dff     d3(p3,q2,q3,qb3);

fredkin f4(q3,1'b0,1'b1,p4,q4,r4);
dff     d4(p4,q3,so,qb4);

endmodule
