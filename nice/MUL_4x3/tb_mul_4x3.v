module tb_mul_4x3;
    //in
    reg [2:0] a;
    reg [3:0] b;
    //out
    wire [6:0] c;
    //uut
    mul_4x3 uut(
        .a(a),
        .b(b),
        .c(c)
    );
    //init
    initial begin
        a=3'b000;
        b=4'b0000;
        #200;
        a=3'b010;
        b=4'b0010;
        #200;
    end
endmodule

