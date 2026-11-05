module d_ff(
  input clk,d,
  output reg q
);
  always @(posedge clk)
    q<=d;
  always @(negedge clk)
    q<=d;
endmodule
