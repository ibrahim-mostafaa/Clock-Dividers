module clk_div_fsm_4(
input clk,rst_n,
output reg clk_out); 

parameter s0=2'b00;
parameter s1=2'b01;
parameter s2=2'b10;
parameter s3=2'b11;


reg [1:0] state, nextstate; 

// next state logic
always @(*)  begin 
case (state)
s0: nextstate = s1;
s1: nextstate = s2;
s2: nextstate = s3;
s3: nextstate = s0;
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
s1: clk_out= 1'b1;

s2: clk_out= 1'b0; 
s3: clk_out= 1'b0;
default: clk_out = 1'bx; 
endcase
end 
endmodule

// instantce: 
// clk_div_fsm_4 inst_name (.clk(), .rst_n(), .clk_out()); 