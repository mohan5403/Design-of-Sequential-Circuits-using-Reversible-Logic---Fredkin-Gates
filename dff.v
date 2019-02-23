`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:30:55 02/23/2016 
// Design Name: 
// Module Name:    dff 
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
module dlatch(e,d,q,qb);
input e,d;
output q,qb;
wire r1;
reg q2=0;
fredkin f1(e,d,q2,p1,q1,r1);
fredkin f2(r1,1'b0,1'b1,q,q2,qb);
//always @(*)
//begin
//if(e==0)
//q2=0;
//end
endmodule


//////////////////////////////////////////////////////////////////////////////////

module fredkin(a,b,c,p,q,r);

	input a,b,c;
	output reg p,q,r;
	
	always @ (*)
	begin
		p=a;
		q=(~a*b)^(a*c);
		r=(~a*c)^(a*b);
	end
endmodule
/////////////////////////////
/////////////////////
module fredkin2(a,b,p,q);

	input a,b;
	output reg p,q;
	
	always @ (*)
	begin
		p=a&b;
		q=a^b;
	end
endmodule