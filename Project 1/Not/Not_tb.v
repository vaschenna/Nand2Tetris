`timescale 1ns/1ns
`include "Not.v"

module Not_tb();

    reg A;
    wire O;

    Not uut(A,O);

    initial begin

        $dumpfile("Not_tb.vcd");
        $dumpvars(0, Not_tb);

        A=0; #20;
        A=1; #20;
        A=0; #20;
        $display("Test Complete");
    end

endmodule

