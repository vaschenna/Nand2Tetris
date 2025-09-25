`timescale 1ns/1ns
`include "Or.v"

module Or_tb();

    reg A,B;
    wire O;

    Or uut(A,B,O);

    initial begin

        $dumpfile("Or_tb.vcd");
        $dumpvars(0, Or_tb);

        {A,B} = 2'b00; #20;
        {A,B} = 2'b01; #20;
        {A,B} = 2'b10; #20;
        {A,B} = 2'b11; #20;
        $display("Test Complete");

    end

endmodule