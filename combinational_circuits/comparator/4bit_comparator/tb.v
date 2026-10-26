module comparartor_4bit_tb;
  reg [3:0]a,b;
  wire G,L,Eq;
  comparator_4bit dut(
    .a(a),
    .b(b),
    .G(G),
    .L(L),
    .Eq(Eq)
  );
  initial begin
    $monitor("a=%d,b=%d|G=%b,L=%b,Eq=%b",a,b,G,L,Eq);
    a=4'd6;b=4'd2;#4;
    a=4'd4;b=4'd7;#4;
    a=4'd5;b=4'd9;#4;
    a=4'd7;b=4'd6;#4;
    a=4'd2;b=4'd1;#4;
  end
endmodule
