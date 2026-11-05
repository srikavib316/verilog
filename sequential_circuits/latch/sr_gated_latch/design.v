module gated_sr_latch(
  input s,r,e,
  output  reg q,
  output reg q1
);
  
  always @(*) begin
    if(e==1'b1)
      begin
        if(s==0&&r==0)
          begin
          q=q;
            q1=q1;
          end
        else if(s==0&&r==1)
          begin
            q=1'b0;
            q1=1'b1;
          end
        else if(s==1&&r==0)
          begin
            q=1'b1;
            q1=1'b0;
          end
        else begin
          q=1'bx;
          q1=1'bx;
        end
      end
  end
endmodule
