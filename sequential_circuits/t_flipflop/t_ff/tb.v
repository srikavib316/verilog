module t_ff_tb;
  reg clk,t;
  wire q;
  
  t_ff dut(
    .clk(clk),
    .t(t),
    .q(q)
  );
  
  initial begin
    $dumpfile("t_ff.vcd");
    $dumpvars(0,t_ff_tb);
  end
  
  initial clk= 0;
    always #6 clk=~clk;
  
  
  
  initial begin
    $monitor("clk=%b,t=%b|q=%b",clk,t,q);
    clk=1;t=0;#10;
    clk=1;t=1;#10;
    $finish;
  end
endmodule
