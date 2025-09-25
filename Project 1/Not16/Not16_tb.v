`timescale 1ns/1ns
`include "Not16.v"


module Not16_tb();

    reg [15:0] in;
    wire [15:0] out;

    Not16 uut(in,out);

    initial begin

        $dumpfile("Not16_tb.vcd");
        $dumpvars(0, Not16_tb);

        {in} = 16'b0000000000000000; #20;
        {in} = 16'b1111111111111111; #20;
        {in} = 16'b1010101010101010; #20;
        {in} = 16'b0011110011000011; #20;
        {in} = 16'b0001001000110100; #20;
        $display("Test Complete");

    end

endmodule