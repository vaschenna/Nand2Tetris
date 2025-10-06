module FullAdder(a,b,cin,sum,cout);

    input a,b,cin;
    output sum, cout;

    assign sum = (((a & ~b) | (~a & b)) & ~ cin) | (~((a & ~b) | (~a & b)) & cin);
    assign cout = (((a & b) | (a & cin)) | (b & cin));

endmodule