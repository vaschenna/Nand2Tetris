`timescale 1ns/1ns
`include "Mux16.v"

module Mux16_tb;

    reg [15:0] a,b;
    reg sel;
    wire [15:0] out;

    Mux16 uut(a,b,sel,out);

    initial begin

        $dumpfile("Mux16_tb.vcd");
        $dumpvars(0, Mux16_tb);

        a=16'b0000000000000000; b=16'b0000000000000000; sel=1'b0; #20;
        sel=1'b1; #20;
        a=16'b0000000000000000; b=16'b1111111111111111; sel=1'b0; #20;
        sel=1'b1; #20; 
        a=16'b1111111111111111; b=16'b1111111111111111; sel=1'b0; #20;
        sel=1'b1; #20;
        a=16'b1010101010101010; b=16'b0101010101010101; sel=1'b0; #20;
        sel=1'b1; #20;
        a=16'b0011110011000011; b=16'b0000111111110000; sel=1'b0; #20;
        sel=1'b1; #20;
        a=16'b0001001000110100; b=16'b1001100001110110; sel=1'b0; #20;
        sel=1'b1; #20;
        $display("Test Complete");

    end


endmodule