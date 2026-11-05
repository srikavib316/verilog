module counter_4bit_tb;
  reg clk,rst;
  wire [3:0] count;
  
  counter_4bit dut(
    .clk(clk),
    .rst(rst),
    .count(count)
  );
  
  initial begin
    $dumpfile("counter_4bit.vcd");
    $dumpvars(0,counter_4bit_tb);
  end
  
  initial clk=0;
    always #4 clk=~clk;
  
  initial begin
    $monitor("clk=%b,rst=%b|count=%b",clk,rst,count);
    rst=1;#10;
    rst=0;#10;
    $finish;
  end
endmodule
