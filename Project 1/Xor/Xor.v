module Xor(a,b,out);

    input a,b;
    output out;

    assign out = (a & ~b) | (~a & b);

endmodule