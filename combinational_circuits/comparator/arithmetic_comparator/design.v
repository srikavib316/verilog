module arithmetic_comp(
  input [2:0]a,
  input [2:0]b,
  output [3:0]y
);
  assign y=(a>b)?(a+b):(a-b);
endmodule
