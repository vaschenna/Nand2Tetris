`timescale 1ns/1ns
`include "FA.v"

module FullAdder_tb;

    reg a,b,c;
    wire sum, carry;

    FullAdder uut(a,b,c,sum,carry);

    initial begin

        $dumpfile("FA_tb.vcd");
        $dumpvars(0, FullAdder_tb);

        {a,b,c} = 3'b000; #20;
        {a,b,c} = 3'b001; #20;
        {a,b,c} = 3'b010; #20;
        {a,b,c} = 3'b011; #20;
        {a,b,c} = 3'b100; #20;
        {a,b,c} = 3'b101; #20;
        {a,b,c} = 3'b110; #20;
        {a,b,c} = 3'b111; #20;

        $display("Test Complete");

    end

endmodule