module adder(
    input [3:0] in1,in2;
    output [3:0] sum;
    output cout;
);
    assign{cout,sum}=in1+in2;
endmodule

module mul_4x3(
    input [2:0] a;
    input [3:0] b;
    output [6:0] c;
);
    wire [3:0] temp;
    wire [3:0] add1,add2,add3;
    
    assign{add1[3:0]}={a[0]&&b[3],a[0]&&b[2],a[0]&&b[1],a[0]&&b[0]};
    assign{add2[3:0]}={a[1]&&b[3],a[1]&&b[2],a[1]&&b[1],a[1]&&b[0]};//順序阿
    assign{add3[3:0]}={a[2]&&b[3],a[2]&&b[2],a[2]&&b[1],a[2]&&b[0]};
    assign{c[0]}=add1[0];

    adder m1(
        .in1({1'b0,add1[3:1]}),
        .in2(add2),
        .sum({temp[2:0],c[1]}),
        .cout(temp[3])
    );
    adder m2(
        .in1(temp[3:0]),
        .in2(add3),
        .sum(c[5:2]),
        .cout(c[6])
    );
endmodule
    