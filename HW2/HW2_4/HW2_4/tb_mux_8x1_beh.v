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
        {a,b,c,d}=4'b0000;
        #50;
        {a,b,c,d}=4'b1001;
        //case1
        #200;
        {a,b,c,d}=4'b1010;
        //case2
        #200
        {a,b,c,d}=4'b1111;
    end
endmodule