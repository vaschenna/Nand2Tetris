module Mux4Way16(a,b,c,d,sel,out);

    input [15:0] a,b,c,d;
    input [1:0] sel;
    output [15:0] out;

    assign out = sel[1] ? (sel[0] ? d : c) : (sel[0] ? b : a);
    //assign out = (sel[1] & ~((a & ~sel[0]) | (b & sel[0]))) | (sel[1] & (c & ~sel[0]) | (d & sel[0]));
    /*assign out =    (~sel[1] * ~sel[0] * a) + 
                    (~sel[1] * sel[0] * b) +
                    (sel[1] * ~sel[0] * c) +
                    (sel[1] * sel[0] * d);*/

endmodule