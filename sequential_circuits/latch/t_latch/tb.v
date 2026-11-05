module t_latch_tb;
  reg t,e,rst;
  wire q,q1;

  t_latch dut (
    .t(t), 
    .e(e), 
    .rst(rst), 
    .q(q), 
    .q1(q1)
  );

  initial begin
    $dumpfile("t_latch.vcd");
    $dumpvars(0, t_latch_tb);
  end

  initial begin
    $monitor("rst=%b e=%b t=%b | q=%b q1=%b", rst, e, t, q, q1);
    rst = 0; e = 0; t = 0;#5;    
    rst = 1; e = 0; t = 0;#5;              
    rst = 0; e = 0; t = 0;#10;   
    rst = 0; e = 1; t = 1;#10;   
    rst = 0; e = 1; t = 0;#10;   
    rst = 0; e = 1; t = 1;#10;   
    rst = 0; e = 1; t = 0;#10;   
    rst = 0; e = 0; t = 1;#10;   
    $finish;
  end
endmodule
