module fsm_10110(
  input clk,rst,din,
  output reg out
);

parameter S0=3'd0;
parameter S1=3'd1;
parameter S2=3'd2;
parameter S3=3'd3;
parameter S4=3'd4;
parameter S5=3'd5;

reg [2:0]state,next_state;

always @(posedge clk or posedge rst) begin
    if(rst)
        state<=S0;
    else
        state<=next_state;
end

always @(*) begin
  case(state)

    S0: if(din) 
      next_state=S1;
    else
      next_state=S0;

    S1: if(din) 
      next_state=S1;
    else 
      next_state=S2;

    S2: if(din)
      next_state=S3;
    else 
      next_state=S0;

    S3: if(din) 
      next_state=S4;
    else 
      next_state=S2;

    S4: if(din) 
      next_state=S1;
    else
      next_state=S5;

    S5: if(din) 
      next_state=S3;
    else 
      next_state=S0;
    
    default:next_state=S0;
  endcase
end

always @(*) begin
    if(state==S5)
        out=1;
    else
        out= 0;
end

endmodule
