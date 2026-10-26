module bitwise_opr(input [3:0]a,b,
                   output [3:0]yand,yor,ynor,yxor,yxnor,ynot,ynand);
  assign yand=a&b;
  assign yor=a|b;
  assign ynor=~(a|b);
  assign yxor=a^b;
  assign yxnor=~(a^b);
  assign ynot=~a;
  assign ynand=~(a&b);
endmodule
