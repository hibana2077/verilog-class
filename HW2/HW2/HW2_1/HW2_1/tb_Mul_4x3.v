module test;
  reg [3:0] a;
  reg [2:0] b;
  wire [6:0] res;
  Mul_4x3 m1(a,b,res);
  initial
  begin
    a=4'b0000;
    b=3'b000;
    #5 {a,b}=7'b0011001;
    //#5 {a,b}=7'b1010101;
    //#5 {a,b}=7'b1000111;
  end
endmodule