`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:21:43 02/23/2019 
// Design Name: 
// Module Name:    jklatch 
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
module jklatch(en,j,k,q,qb);

input en,j,k;
output q,qb;

fredkin f1(k,1'b0,1'b1,p1,q1,r1);
fredkin f2(p6,r1,1'b0,p2,q2,r2);

fredkin f3(r7,j,1'b0,p3,q3,r3);

fredkin f4(r2,r3,1'b1,p4,q4,r4);

fredkin f5(en,q4,q7,p5,q5,r5);

fredkin f6(p7,1'b0,1'b1,p6,q,qb);
fredkin f7(r5,1'b0,1'b1,p7,q7,r7);



endmodule
