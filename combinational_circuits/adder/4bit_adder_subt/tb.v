module adder_sub_4bit_tb;
  reg [3:0]a;
  reg [3:0]b;
  wire [3:0]carry;
  wire sum;
  adder_sub_4bit dut(
    .a(a),.b(b),.sum(sum),.carry(carry));
  initial begin
    $monitor("a=%b,b=%b|sum=%b,carry=%b",a,b,sum,carry);
    a=4'b0000;b=4'b0000;#3;
    a=4'b1010;b=4'b0101;#3;
    a=4'b0011;b=4'b1100;#3;
    a=4'b1111;b=4'b1011;#3;
  end
endmodule
