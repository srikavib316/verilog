module jk_ff_tb;
  reg clk,rst,j,k;
  wire q;
  
  jk_ff dut(
    .clk(clk),
    .rst(rst),
    .j(j),
    .k(k)
  );
  initial begin 
    $dumpfile("jk_ff.vcd");
    $dumpvars(0,jk_ff_tb);
  end
  
  initial clk=0;
  always #5 clk=~clk;
  
  initial begin
    $monitor("clk=%b,rst=%b,j=%b,k=%b|q=%b",rst,clk,j,k,q);
    j=0;k=0;#10;
    j=0;k=1;#20;
    j=1;k=0;#20;
    j=1;k=1;#30;
    $finish;
  end
endmodule
