module Decoder_3x8(
    input a,
    input b,
    input c,
    output [7:0] d
);
    assign d[0]=(~a&~b&~c),
        d[1]=(~a&~b&c),
        d[2]=(~a&b&~c),
        d[3]=(~a&b&c),
        d[4]=(a&~b&~c),
        d[5]=(a&~b&c),
        d[6]=(a&b&~c),
        d[7]=(a&b&c);
endmodule