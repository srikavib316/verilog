module sr_latch(
  input s, r,
  output reg q,
  output reg q1
);
  assign q1=~q;
  
  always @(*)
    begin
      if(s && !r)
        q=1'b1;
      else if(!s && r)
        q=1'b0;
      else if(s && r)
        q=1'b0;
    end
endmodule
