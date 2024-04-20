module clk_div_fsm_2(
input clk,rst_n,
output reg clk_out); 

parameter s0=1'b0;
parameter s1=1'b1;


reg state, nextstate; 

// next state logic
always @(*)  begin 
case (state)
s0: nextstate = s1;  
default: nextstate = s0; 
endcase  
end 
// state register
always @(posedge clk or negedge rst_n) begin 
if(!rst_n) state <= s0; 
else state <= nextstate; 
end
// output logic

always@(*) begin 
case (state) 
s0: clk_out= 1'b1; 
s1: clk_out= 1'b0;
default: clk_out = 1'bx; 
endcase
end 
endmodule

// instantce: 
// clk_div_fsm_2 inst_name (.clk(), .rst_n(), .clk_out()); 