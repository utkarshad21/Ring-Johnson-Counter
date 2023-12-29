`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Creator: Utkarsha Dongarjal
// Github channel name: utkarshad21
// Module Name: rj_counter
// Project Name: Verilog code of Ring and Johnson Counter
//////////////////////////////////////////////////////////////////////////////////

module rj_counter(output reg [3:0] q, input clk, input rst, input rj);
always@ (posedge clk or posedge rst) 
begin
if (rst) begin
q<=4'd0;
end
else if (rj)
begin
q<=4'd0;
case (q)
4'd0: q<=4'd1;
4'd1: q<=4'd2;
4'd2: q<=4'd4;
4'd4: q<=4'd8;
4'd8: q<=4'd1;
endcase
end
else 
begin
case (q)
4'd0: q<=4'd8;
4'd8: q<=4'd12;
4'd12: q<=4'd14;
4'd14: q<=4'd15;
4'd15: q<=4'd7;
4'd7: q<=4'd3;
4'd3: q<=4'd1;
4'd1: q<=4'd0;
default:q<=4'd0;
endcase
end
end
endmodule
