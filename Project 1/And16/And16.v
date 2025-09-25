//`include "Nand.v"
/*module Nand(a,b,out);

    input a,b;
    output out;

    assign out = ~(a & b);

endmodule*/

module And16(a,b,out);

    input [15:0] a,b;
    output [15:0] out;

    //assign out = Nand(Nand(a,b),Nand(a,b));
    assign out = a & b;

endmodule