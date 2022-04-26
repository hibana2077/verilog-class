module tb_test;
    reg [3:0] a;
    reg [3:0] b;
    reg cin;

    wire [3:0] sum;
    wire cout;

    test uut(
        .a(a),
        .b(b),
        .cin(cin),
        .s(sum),
        .cout(cout)
    );

    initial begin
        a=0;
        b=0;
        cin=0;
        #100;
        a=2;
        b=3;
        cin=1;
        #100;
    end
endmodule
