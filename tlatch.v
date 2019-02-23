`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:32:51 02/23/2019 
// Design Name: 
// Module Name:    tlatch 
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
module tlatch(en,t,q,qb);
input en,t;
output q,qb;

fredkin f1(t,1'b0,1'b1,p1,q1,r1);
fredkin f2(p1,1'b0,1'b1,p2,q2,r2);

fredkin f3(p7,r2,1'b0,p3,q3,r3);
fredkin f4(r8,q1,1'b0,p4,q4,r4);

fredkin f5(r3,r4,1'b1,p5,q5,r5);

fredkin f6(en,q5,q8,p6,q6,r6);
fredkin f7(p8,1'b0,1'b1,p7,q,qb);
fredkin f8(r6,1'b0,1'b1,p8,q8,r8);


endmodule
