module HalfAdder(a,b,carry,sum);

    input a,b;
    output carry, sum;

    assign sum = (a & ~b) | (~a & b);
    assign carry = a & b;

endmodule