`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:57:32 02/23/2019 
// Design Name: 
// Module Name:    srlatch 
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
module srlatch(en,s,r,q,qb);

input en,s,r;
output q,qb;

fredkin f1(s,1'b0,1'b1,p1,q1,r1);
fredkin f2(r,1'b0,1'b1,p2,q2,r2);

fredkin f3(p1,r4,1'b1,p3,q3,r3);
fredkin f4(r2,p8,1'b0,p4,q4,r4);

fredkin f5(q3,q6,1'b0,p5,q5,r5);
fredkin f6(p4,r1,1'b1,p6,q6,r6);

fredkin f7(e,r5,q9,p7,q7,r7);

fredkin f8(p9,1'b0,1'b1,p8,q,r8);
fredkin f9(r7,1'b0,1'b1,p9,q9,qb);

endmodule
