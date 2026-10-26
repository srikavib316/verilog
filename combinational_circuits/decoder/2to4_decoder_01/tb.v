module decoder_2to4_tb;
  reg a,b;
  wire y1,y2,y3,y4;
  decoder_2to4 dut(
    .a(a),
    .b(b),
    .y1(y1),
    .y2(y2),
    .y3(y3),
    .y4(y4)
  );
  initial begin
    $monitor("a=%b,b=%b|y1=%b,y2=%b,y3=%b,y4=%b",a,b,y1,y2,y3,y4);
    a=0;b=0;#3;
    a=0;b=1;#3;
    a=1;b=0;#3;
    a=1;b=1;#3;
  end
endmodule
             
