module comp_1bit_tb;
  reg a,b;
  wire x,y,z;
  comp_1bit dut(
    .a(a),
    .b(b),
    .x(x),
    .y(y),
    .z(z)
  );
  initial begin
    $monitor("Time=%t|a=%b,b=%b|x=%b,y=%b,z=%b",$time,a,b,x,y,z);
    a=0;b=0;#5;
    a=0;b=1;#5;
    a=1;b=0;#5;
    a=1;b=1;#5;
  end
endmodule
    
