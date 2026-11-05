module sr_latch_tb;
  reg s,r;
  wire q,q1;

  sr_latch dut (
    .s(s),
    .r(r),
    .q(q),
    .q1(q1)
  );
  initial begin
    $dumpfile("sr_latch.vcd");
    $dumpvars(0, sr_latch_tb);
  end

  initial begin
    $monitor("s=%b,r=%b | q=%b,q1=%b", s, r, q, q1);
    s = 0; r = 1;#10;   
    s = 0; r = 0;#10;   
    s = 1; r = 0;#10;   
    s = 0; r = 0;#10;   
    s = 0; r = 1;#10;   
    s = 1; r = 1;#10;  
    s = 0; r = 1;#10;   
    s = 1; r = 0;#10;   
    $finish;
  end
endmodule
