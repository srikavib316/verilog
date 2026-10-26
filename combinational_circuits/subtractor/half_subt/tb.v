module half_subt_tb;
  reg a,b;
  wire diff,borr;
  half_subt dut(
    .a(a),
    .b(b),
    .diff(diff),
    .borr(borr)
  );
  initial begin
    $monitor("Time=%t|a=%b,b=%b|diff=%b,borr=%b",$time,a,b,diff,borr);
    a=0;b=0;#6;
    a=0;b=1;#6;
    a=1;b=0;#6;
    a=1;b=1;#6;
  end 
endmodule
