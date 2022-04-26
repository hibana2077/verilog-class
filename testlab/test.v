module test(a,b,cin,s,cout);
    output cout;
    output [3:0]s;
    input [3:0] a,b;
    input cin;
    assign {cout,s}=a+b+cin;
endmodule