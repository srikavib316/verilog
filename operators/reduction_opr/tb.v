module reduction_opr_tb;
  reg[3:0]a;
  wire Rand,Ror,Rnor,Rxor,Rnand,Rxnor,Rnot;
  reduction_opr dut(
    .a(a),
    .Rand(Rand),
    .Ror(Ror),
    .Rnor(Rnor),
    .Rxor(Rxor),
    .Rnand(Rnand),
    .Rxnor(Rxnor),
    .Rnot(Rnot)
  );
    initial begin
      $monitor("a=%b|Rand=%b,Ror=%b,Rnor=%b,Rxor=%b,Rnand=%b,Rxnor=%b,Rnot=%b",a,Rand,Ror,Rnor,Rxor,Rnand,Rxnor,Rnot);
      a=4'b0101;#4;
    end
endmodule
