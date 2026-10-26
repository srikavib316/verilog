module reduction_opr(input[3:0]a,
                     output Rand,Ror,Rnor,Rxor,Rnand,Rxnor,Rnot
                    );
  assign Rand=&a;
  assign Ror=|a;
  assign Rnor=~|a;
  assign Rxor=^a;
  assign Rnand=~&a;
  assign Rxnor=~^a;
  assign Rnot=!a;
endmodule
