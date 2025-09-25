`timescale 1ns/1ns
`include "Nand.v"

module Nand_tb();

    reg A,B;
    wire O;

    Nand uut(A,B,O);

    initial begin

        $dumpfile("Nand_tb.vcd");
        $dumpvars(0, Nand_tb);

        {A,B} = 2'b00; #20;
        {A,B} = 2'b01; #20;
        {A,B} = 2'b10; #20;
        {A,B} = 2'b11; #20;

        $display("Test Complete");

    end

endmodule