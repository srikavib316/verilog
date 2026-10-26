module comparator_1bit_tb;
  reg [3:0]a,b;
  wire x,y,z;
  comparator_1bit dut(
    .a(a),.b(b),.x(x),.y(y),.z(z));
  initial begin
    $monitor("a=%b,b=%b|x=%b,y=%b,z=%b",a,b,x,y,z);
    a=0001;b=1000;#4;
  end
endmodule
