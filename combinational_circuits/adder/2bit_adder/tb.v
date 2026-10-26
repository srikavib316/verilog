module adder_2bit_tb;
  reg [1:0]a;
  reg [1:0]b;
  wire [1:0]sum;
  wire carry;
  adder_2bit dut(
    .a(a),.b(b),.sum(sum),.carry(carry)
  );
  initial begin
    $monitor("a=%b,b=%b|sum=%b,carry=%b",a,b,sum,carry);
    a=00;b=00;#3;
    a=01;b=01;#3;
    a=10;b=10;#3;
    a=11;b=11;#3;
  end
endmodule
  
