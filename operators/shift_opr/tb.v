module shift_opr_tb;
  reg a;
  wire sryt,sleft,aryt,aleft;
  shift_opr dut(
    .a(a),
    .sryt(sryt),
    .sleft(sleft),
    .aryt(aryt),
    .aleft(aleft)
  );
  initial begin
    $monitor("a=%b|sryt=%b,sleft=%b,aryt=%b,aleft=%b",a,sryt,sleft,aryt,aleft);
    a=1001;#10;
    a=1010;#10;
    a=1000;#10;
    a=1011;#10;
    a=1110;#10;
  end
endmodule
