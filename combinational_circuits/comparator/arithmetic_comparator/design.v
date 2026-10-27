module arithmetic_comp(
  input [3:0]a,
  input [3:0]b,
  output [4:0]y
);
  assign y=(a>b)?(a+b):(a-b);
endmodule
