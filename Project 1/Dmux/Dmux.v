module Dmux(in, sel, a, b);

    input in,sel;
    output a,b;

    assign a = in & ~sel;
    assign b = in & sel;

endmodule