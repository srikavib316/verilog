module relational_opr_tb;
  reg [3:0]a,b;
  wire G,L,Eq,LE,GE,Neq;
  relational_opr dut(
    .a(a),
    .b(b),
    .G(G),
    .L(L),
    .Eq(Eq),
    .LE(LE),
    .GE(GE),
    .Neq(Neq)
  );
  initial begin
    $monitor("a=%2d,b=%2d|G=%b,L=%b,Eq=%b,LE=%b,GE=%b,Neq=%b",a,b,G,L,Eq,LE,GE,Neq);
    a=4'd5;b=4'd9;#6;
    a=4'd7;b=4'd3;#6;
    a=4'd10;b=4'd8;#6;
    a=4'd15;b=4'd4;#6;
    a=4'd1;b=4'd6;#6;
  end
endmodule
