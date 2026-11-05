module jk_ff(
  input clk,j,k,
  output reg q
);
  always @(posedge clk)begin
    if(j==0 && k==0)
      q <=q;
    else if(j==0 && k==1)
      q <=0;
    else if(j==1 && k==0)
      q <=1;
    else
      q <= ~q;
  end
endmodule
    
