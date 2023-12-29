//////////////////////////////////////////////////////////////////////////////////
// Creator: Utkarsha Dongarjal
// Github channel name: utkarshad21
// Module Name: rj_counter_tb
// Project Name: Testbench of Ring and Johnson Counter
//////////////////////////////////////////////////////////////////////////////////

module rj_counter_tb;
wire [3:0] q;
reg clk;
reg rst; 
reg rj;
rj_varad r1(q, clk, rst, rj);
initial begin
clk = 0;
forever #20 clk = ~clk;
end
initial begin
{rst, rj} = 2'b00;
#500;
{rst, rj} = 2'b01;
#500;
$finish;
end
endmodule

