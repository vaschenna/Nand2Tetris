module Nand(A,B,O);

    input A,B;
    output O;
    assign O = ~(A & B);

endmodule