module gated_sr_latch_tb;
  reg s,r,e;
  wire q;
  wire q1;
  
  gated_sr_latch dut (
    .s(s),
    .r(r),
    .e(e),
    .q(q),
    .q1(q1)
  );
  
  initial begin
    $dumpfile("gated_sr_latch.vcd");
    $dumpvars(0,gated_sr_latch_tb);
  end
  
  initial begin
    $monitor("s=%b,r=%b,e=%b|q=%b,q1=%b",s,r,e,q,q1);
    
    e = 0; s = 0; r = 0;#10;   
    e = 1; s = 1; r = 0;#10;   
    e = 1; s = 0; r = 0;#10;   
    e = 1; s = 0; r = 1;#10;   
    e = 1; s = 0; r = 0;#10;   
    e = 0; s = 1; r = 0;#10;   
    e = 1; s = 1; r = 0;#10;   
    e = 1; s = 1; r = 1;#10;   
    $finish;
  end
endmodule

