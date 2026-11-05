module d_ff_tb;
  reg clk,d;
  wire  q;
  d_ff dut(
    .clk(clk),
    .d(d),
    .q(q)
  );
 initial begin
    $monitor("clk=%b,d=%b|q=%b",clk,d,q);
    clk=1;d=0;#3;
    clk=0;d=1;#3;
  end
  initial begin
    $dumpfile("d_ff.vcd");
    $dumpvars(0, d_ff_tb);
  end
endmodule
