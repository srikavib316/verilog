module logical_opr(input [3:0]a,b,
                  output yand,yor,ynot
                 );
  assign yand=a&&b;
  assign yor=a||b;
  assign ynot=!b;
endmodule
