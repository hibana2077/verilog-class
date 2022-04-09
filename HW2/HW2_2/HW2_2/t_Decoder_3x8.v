module t_Decoder_3x8;
    //input
    reg a;
    reg b;
    reg c;
    //output
    wire [7:0] d;
    Decoder_3x8 uut(
        .a(a),
        .b(b),
        .c(c),
        .d(d)
    );
    initial begin
        a=0;
        b=0;
        c=0;
        //case1
        #100;
        a=0;
        b=1;
        c=1;
        //case2
        #100;
        a=1;
        b=0;
        c=0;
        //case3
        #100;
        a=0;
        b=0;
        c=1;
        //end
        #100;
        a=0;
        b=0;
        c=0;
    end
endmodule