module adder_4bit(
  input [3:0]a,b,c,
  output [3:0]sum,
  output carry
);
  assign {sum,carry}=a+b+c;
endmodule
