`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:09:31 02/23/2019 
// Design Name: 
// Module Name:    srff 
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
module srff(clk,s,r,q,qb);

input clk,s,r;
output q,qb;


fredkin f1(s,1'b0,1'b1,p1,q1,r1);
fredkin f2(r,1'b0,1'b1,p2,q2,r2);

fredkin f3(p1,r4,1'b1,p3,q3,r3);
fredkin f4(r2,p8,1'b0,p4,q4,r4);

fredkin f5(q3,q6,1'b0,p5,q5,r5);
fredkin f6(p4,r1,1'b1,p6,q6,r6);

fredkin f7(clk,r5,q9,p7,q7,r7);

fredkin f8(p9,1'b0,1'b1,p8,q8,r8);
fredkin f9(r7,1'b0,1'b1,p9,q9,r9);

fredkin f77(p7,1'b0,1'b1,p77,q77,r77);

fredkin f11(q8,1'b0,1'b1,p11,q11,r11);
fredkin f21(r8,1'b0,1'b1,p21,q21,r21);

fredkin f31(p11,r41,1'b1,p31,q31,r31);
fredkin f41(r21,p81,1'b0,p41,q41,r41);

fredkin f51(q31,q61,1'b0,p51,q51,r51);
fredkin f61(p41,r11,1'b1,p61,q61,r61);

fredkin f71(r77,r51,q91,p71,q71,r71);

fredkin f81(p91,1'b0,1'b1,p81,q,r81);
fredkin f91(r71,1'b0,1'b1,p91,q91,qb);
endmodule
