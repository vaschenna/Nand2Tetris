`timescale 1ns/1ns
`include "Or8Way.v"

module Or8Way_tb;

    reg a,b,c,d,e,f,g,h;
    wire out;

    Or8Way uut(a,b,c,d,e,f,g,h,out);

    initial begin

        $dumpfile("Or8Way_tb.vcd");
        $dumpvars(0, Or8Way_tb);
        
        {a,b,c,d,e,f,g,h} = 8'b00000000; #20;
        {a,b,c,d,e,f,g,h} = 8'b11111111; #20;
        {a,b,c,d,e,f,g,h} = 8'b00010000; #20;
        {a,b,c,d,e,f,g,h} = 8'b00000001; #20;
        {a,b,c,d,e,f,g,h} = 8'b00100110; #20;
        $display("Test Complete");

    end

endmodule