module sr_ff_tb;
  reg clk,s,r;
  wire q;
  
  sr_ff dut(
    .clk(clk),
    .s(s),
    .r(r),
    .q(q)
  );
  initial begin
    $dumpfile("sr_ff.vcd");
    $dumpvars(0,sr_ff_tb);
  end
  
  initial clk = 0;
  always #3 clk = ~clk;
  
  initial begin
    $monitor("clk=%b,s=%b,r=%b|q=%b",clk,s,r,q);
    clk=1;s=0;r=0;#3;
    clk=1;s=0;r=1;#3;
    clk=1;s=1;r=0;#3;
    clk=1;s=1;r=1;#3;
    $finish;
  end
endmodule
