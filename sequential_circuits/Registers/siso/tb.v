module siso_tb;
  reg clk,rst,d;
  wire q;
  
  siso dut(
    .clk(clk),
    .rst(rst),
    .d(d),
    .q(q)
  );
  initial clk=0;
  always #5 clk = ~clk;
  
initial rst =1;
  always #10 rst=~rst;
  
  initial begin
    $dumpfile("siso.vcd");
    $dumpvars(0,siso_tb);
  end
  
  initial begin
    $monitor("clk=%b,rst=%b,d=%b|q=%b",clk,rst,d,q);
    d = 1; #20;
    d = 0; #20;
    d = 1; #20;
    d = 1; #20;
    d = 0; #20;
  $finish;
  end
endmodule
