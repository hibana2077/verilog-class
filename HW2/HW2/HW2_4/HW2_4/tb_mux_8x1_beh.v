module tb_mux_8x1_beh;
    //input
    reg a,b,c,d;
    //output
    wire f;
    mux_8x1_beh uut(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .f(f)
    );
    initial begin
        {a,b,c,d}=4'b1111;
        #250;
        {a,b,c,d}=4'b0000;
        #250;
        {a,b,c,d}=4'b1010;
        #250;
        {a,b,c,d}=4'b0101;
    end
endmodule