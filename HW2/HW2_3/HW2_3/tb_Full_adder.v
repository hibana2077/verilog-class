module tb_Full_adder;
    //input
    reg a,b,c;
    //output
    wire S,C;
    Full_adder uut(
        .a(a),
        .b(b),
        .c(c),
        .S(S),
        .C(C)
    );
    initial begin 
        a=0;
        b=0;
        c=0;
        //case1
        #200;
        a=1;
        b=1;
        c=0;
        //case2
        #200;
        a=1;
        b=0;
        c=0;
        //case3
        #200;
        a=1;
        b=1;
        c=1;
    end
endmodule