`timescale 1ns/1ns
`include "Mux4Way16.v"

module Mux4Way16_tb;

reg [15:0] a,b,c,d;
reg [1:0] sel;
output [15:0] out;

Mux4Way16 uut(a,b,c,d,sel,out);

initial begin

    $dumpfile("Mux4Way16_tb.vcd");
    $dumpvars(0, Mux4Way16_tb);


    {a,b,c,d} = 4'b0000; sel = 00; #20; sel = 01; #20; sel = 10; #20; sel = 11; #20;
    {a,b,c,d} = 64'b0001001000110100100110000111011010101010101010100101010101010101;
    sel = 00; #20; sel = 01; #20; sel = 10; #20; sel = 11; #20;

    $display("test Complete");

end


endmodule;