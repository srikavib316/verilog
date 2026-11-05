module d_flipflop_e_tb;
  reg clk,rst,e,d;
  wire q;
  
  d_flipflop_e dut(
    .clk(clk),
    .rst(rst),
    .e(e),
    .d(d),
    .q(q)
  );
   initial begin
     $dumpfile("d_flipflop_e.vcd");
     $dumpvars(0,d_flipflop_e_tb);
   end
  
  initial clk=0;
  always #5 clk=~clk;
  
  initial begin
    $monitor("e=%b,d=%b,q=%b",e,d,q);
    e=1;d=0;#10;
    e=1;d-1;#20;
    $finish;
  end
endmodule
