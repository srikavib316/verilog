module comparator_2bit_tb;
  reg [1:0]a,b;
  wire x,y,z;
  comparator_2bit dut(
    .a(a),.b(b),.x(x),.y(y),.z(z));
  initial begin
    $monitor("a=%b,b=%b|x=%b,y=%b,z=%b",a,b,x,y,z);
    a=00;b=10;#4;
    a=11;b=01;#4;
    a=10;b=01;#4;
    a=01;b=11;#4;
    a=11;b=00;#4;
  end
endmodule
