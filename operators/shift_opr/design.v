module shift_opr(input a,
                 output sryt,sleft,aryt,aleft
                );
  assign sryt=a<<0;
  assign sleft=a>>0;
  assign aryt=a<<<1;
  assign aleft=a>>>1;
endmodule
