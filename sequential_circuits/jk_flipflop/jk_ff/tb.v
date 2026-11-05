module jk_ff_tb;
  reg clk,j,k;
  wire q;
  
  jk_ff dut(
    .clk(clk),
    .j(j),
    .k(k),
    .q(q)
  );
  
  initial begin
    $dumpfile("jk_ff.vcd");
    $dumpvars(0,jk_ff_tb);
  end
  
  initial clk=0;
  always #5 clk=~clk;
  
  initial begin
    $monitor("clk=%b,j=%b,k=%b|q=%b",clk,j,k,q);
    clk=1;j=0;k=0;#6;
    clk=1;j=0;k=1;#6;
    clk=1;j=1;k=0;#6;
    clk=1;j=1;k=1;#6;
    $finish;
  end
endmodule
