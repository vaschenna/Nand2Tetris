`timescale 1ns/1ns
`include "Dmux.v"

module Dmux_tb();

    reg in, sel;
    wire a, b;

    Dmux uut(in,sel,a,b);

    initial begin

        $dumpfile("Dmux_tb.vcd");
        $dumpvars(0, Dmux_tb);

        {in,sel} = 2'b00; #20;
        {in,sel} = 2'b01; #20;
        {in,sel} = 2'b10; #20;
        {in,sel} = 2'b11; #20;
    end

endmodule