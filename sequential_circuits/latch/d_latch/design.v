module d_latch(
  input d, e,
  output reg q,
  output q1
);

  assign q1 = ~q;

  always @(*) begin
    if (e == 1'b1)
      q = d;       
    end
endmodule
