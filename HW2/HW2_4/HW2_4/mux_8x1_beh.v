module mux_8x1_beh(a,b,c,d,f);
    input a,b,c,d;
    output wire f;
    mux_8x1 m1(
        .d0(d),
        .d1(d),
        .d2(~d),
        .d3(1'b0),
        .d4(1'b0),
        .d5(d),
        .d6(1'b1),
        .d7(1'b1),
        .c(c),
        .b(b),
        .a(a),
        .out(f)
    );
endmodule