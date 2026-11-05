module d_latch_tb;
  reg d,e;
  wire q,q1;

  d_latch dut (
    .d(d),
    .e(e),
    .q(q),
    .q1(q1)
  );

  initial begin
    $dumpfile("d_latch.vcd");
    $dumpvars(0, d_latch_tb);
  end

  initial begin
    $monitor("e=%b,d=%b|q=%b,q1=%b",e,d,q,q1);

    e = 0; d = 0;#10;   
    e = 1; d = 1;#10;   
    e = 1; d = 0;#10;   
    e = 1; d = 1;#10;   
    e = 0; d = 0;#10;   
    e = 0; d = 1;#10;   
    e = 1; d = 0;#10;   
    $finish;
  end
endmodule
