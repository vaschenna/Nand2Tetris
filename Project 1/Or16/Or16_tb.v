`timescale 1ns/1ns
`include "Or16.v"

module Or16_tb;

    reg [15:0] a,b;
    wire [15:0] out;

    Or16 uut(a,b,out);

    initial begin

        $dumpfile("Or16_tb.vcd");
        $dumpvars(0, Or16_tb);

        a=16'b0000000000000000; b=16'b0000000000000000; #20;
        a=16'b0000000000000000; b=16'b1111111111111111; #20;
        a=16'b1111111111111111; b=16'b1111111111111111; #20;
        a=16'b1010101010101010; b=16'b0101010101010101; #20;
        a=16'b0011110011000011; b=16'b0000111111110000; #20;
        a=16'b0001001000110100; b=16'b1001100001110110; #20;
        $display("Test Complete");

    end


endmodule