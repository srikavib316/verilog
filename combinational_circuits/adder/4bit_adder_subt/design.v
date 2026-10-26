module adder_sub_4bit(
  input [3:0]a,
  input [3:0]b,
  output [3:0]carry,
  output sum
);
  assign {sum,carry}=a-b;
endmodule
