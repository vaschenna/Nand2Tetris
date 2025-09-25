`timescale 1ns/1ns
`include "Xor.v"

module Xor_tb();

    reg a,b;
    wire out;

    Xor uut(a,b,out);

    initial begin

        $dumpfile("Xor_tb.vcd");
        $dumpvars(0, Xor_tb);

        {a,b} = 2'b00; #20;
        {a,b} = 2'b01; #20;
        {a,b} = 2'b10; #20;
        {a,b} = 2'b11; #20;
        $display("Time Completed");

    end

endmodule