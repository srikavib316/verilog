module t_latch(
  input t,e,rst,
  output reg q,
  output reg q1
);
  assign q1 = ~q;

  always @(*) begin
    if (rst)
      q = 1'b0;          
    else if (e && t)
      q = ~q;            
  end
endmodule
