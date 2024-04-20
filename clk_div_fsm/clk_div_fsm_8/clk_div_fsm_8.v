module clk_div_fsm_8(
input clk,rst_n,
output reg clk_out); 

parameter s0=3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;

parameter s4=3'b100;
parameter s5=3'b101;
parameter s6=3'b110;
parameter s7=3'b111;

reg [2:0] state, nextstate; 

// next state logic
always @(*)  begin 
case (state)
s0: nextstate = s1; 
s1: nextstate = s2; 
s2: nextstate = s3; 
s3: nextstate = s4; 

s4: nextstate = s5; 
s5: nextstate = s6; 
s6: nextstate = s7; 
s7: nextstate = s0;
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
s2: clk_out= 1'b1;
s3: clk_out= 1'b1;
s4: clk_out= 1'b0;
s5: clk_out= 1'b0;
s6: clk_out= 1'b0;
s7: clk_out= 1'b0;
default: clk_out = 1'bx; 
endcase
end 
endmodule

// Instance: 
// clk_div_fsm_8 inst_name (.clk(clk), .rst_n(rst_n), .clk_out(clk_out)); 