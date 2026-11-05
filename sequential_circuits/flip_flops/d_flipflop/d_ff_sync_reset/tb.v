module d_flipflop_sync_reset_tb;
  reg clk,rst,d;
  wire y;
  d_flipflop_sync_reset dut(
    .clk(clk),
    .rst(rst),
    .d(d),
    .y(y)
  );
  initial begin
    $dumpfile("d_flipflop_sync_reset.vcd");
    $dumpvars(0,d_flipflop_sync_reset_tb);
  end
  initial begin
    $monitor("clk=%b,rst=%b,d=%b|y=%b",clk,rst,d,y);
    clk=1;rst=0;d=0;#3;
    clk=1;rst=1;d=1;#3;
  end
endmodule
