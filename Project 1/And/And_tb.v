`timescale 1ns/1ns
`include "And.v"

module And_tb();

reg A,B;
wire O;

And uut(A,B,O);

initial begin

$dumpfile("And_tb.vcd");
$dumpvars(0, And_tb);

/*A=0;B=0;#20;
A=0;B=1;#20;
A=1;B=0;#20;
A=1;B=1;#20;*/

{A,B}=2'b00; #20;
{A,B}=2'b01; #20;
{A,B}=2'b10; #20;
{A,B}=2'b11; #20;

$display ("Test Complete");

end

endmodule

