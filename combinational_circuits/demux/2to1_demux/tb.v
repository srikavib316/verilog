module demux_tb;
  reg a,sel;
  wire x,y;
  
  demux dut(
    .a(a),
    .sel(sel),
    .x(x),
    .y(y)
  );
  
  initial begin
    $dumpfile("demux.vcd");
    $dumpvars(0,demux_tb);
  end
  
  initial begin
    $monitor("a=%b,sel=%b|x=%b,y=%b",a,sel,x,y);
    a=1;sel=0;#10;
    a=0;sel=1;#10;
    $finish;
  end
endmodule
