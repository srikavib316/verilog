module full_subt_tb;
  reg a,b,c;
  wire diff,borr;
  full_subt dut(
    .a(a),
    .b(b),
    .c(c),
    .diff(diff),
    .borr(borr)
  );
  initial begin
    $monitor("Time=%t|a=%b,b=%b,c=%b|diff=%b,borr=%b",$time,a,b,c,diff,borr);
    a=0;b=0;c=0;#4;
    a=0;b=0;c=1;#4;
    a=0;b=1;c=0;#4;
    a=0;b=1;c=1;#4;
    a=1;b=0;c=0;#4;
    a=1;b=0;c=1;#4;
    a=1;b=1;c=0;#4;
    a=1;b=1;c=1;#4;
  end 
endmodule
