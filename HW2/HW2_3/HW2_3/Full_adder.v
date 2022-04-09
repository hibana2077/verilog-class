module Full_adder(
    input a,b,c,
    output S,C
    );
    wire [7:0] d;

    Decoder_3x8 uut(
        .a(a),
        .b(b),
        .c(c),
        .d(d)
    );
    assign {S} = (d[1]|d[2]|d[4]|d[7]);
    assign {C} = (d[3]|d[5]|d[6]|d[7]);
endmodule