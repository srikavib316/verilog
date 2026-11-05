module up_down_tb;
  reg clk,rst,up;
  wire [3:0]count;
  
  up_down dut(
    .clk(clk),
    .rst(rst),
    .up(up),
    .count(count)
  );
  
  initial begin
    $dumpfile("up_down.vcd");
    $dumpvars(0,up_down_tb);
  end
  
  initial clk=0;
  always #3 clk=~clk;
  
  initial begin
    $monitor("clk=%b,rst=%b,up=%b|count=%b",clk,rst,up,count);
    rst=1;up=0;#10;
    rst=0;up=1;#20;
    $finish;
  end
endmodule
