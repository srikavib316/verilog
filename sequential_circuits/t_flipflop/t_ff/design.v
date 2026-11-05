module t_ff(
  input clk,t,
  output reg q
);
  always @(posedge clk)
    begin
        q<=~t;
    end
endmodule
