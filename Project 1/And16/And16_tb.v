`timescale 1ns/1ns
`include "And16.v"

module And16_tb();

    reg [15:0] a,b;
    wire [15:0] out;

    And16 uut(a,b,out);

    initial begin

        $dumpfile("And16_tb.vcd");
        $dumpvars(0, And16_tb);

        a=0000000000000000; b=0000000000000000; #20;
        a=0000000000000000; b=1111111111111111; #20;
        a=1111111111111111; b=1111111111111111; #20;
        a=1010101010101010; b=0101010101010101; #20;
        a=0011110011000011; b=0000111111110000; #20;
        a=0001001000110100; b=1001100001110110; #20;
        $display("Test Complete");

    end


endmodule