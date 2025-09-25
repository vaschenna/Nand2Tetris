`timescale 1ns/1ns
`include "Mux.v"

module Mux_tb();

    reg a,b,sel;
    wire out;

    Mux uut(a,b,sel,out);

    initial begin

        $dumpfile("Mux_tb.vcd");
        $dumpvars(0, Mux_tb);

        {a,b,sel} = 3'b000; #20;
        {a,b,sel} = 3'b010; #20;
        {a,b,sel} = 3'b100; #20;
        {a,b,sel} = 3'b110; #20;
        {a,b,sel} = 3'b001; #20;
        {a,b,sel} = 3'b011; #20;
        {a,b,sel} = 3'b101; #20;
        {a,b,sel} = 3'b111; #20;
        $display("Test Complete");

    end

endmodule