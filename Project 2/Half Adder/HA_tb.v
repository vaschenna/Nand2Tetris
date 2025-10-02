`timescale 1ns/1ns
`include "HA.v"

module HalfAdder_tb;

    reg a,b;
    wire sum,carry;

    HalfAdder uut(a,b,sum,carry);

    initial begin

        $dumpfile("HA_tb.vcd");
        $dumpvars(0, HalfAdder_tb);

        {a,b} = 2'b00; #20;
        {a,b} = 2'b01; #20;
        {a,b} = 2'b10; #20;
        {a,b} = 2'b11; #20;
        $display("Test Complete");

    end

endmodule