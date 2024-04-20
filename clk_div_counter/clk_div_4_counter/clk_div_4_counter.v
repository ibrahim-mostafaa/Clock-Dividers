module clk_div_4_counter (
input clk,
input rst_n, 
output reg clk_out); 

reg [1:0] counter_4 = 2'b00; // 2 bit counter, counts 4 counts
//2 counts high, 2 counts low 
// 4 cycles of ref_clk make 1 cycle of clk_out 

always@(posedge clk or negedge rst_n) begin 
if (!rst_n) counter_4 <=0; 
else counter_4 <= counter_4 +1; 
end 

// output clk with 50% duty cycle 
always@(posedge clk or negedge rst_n) begin 
if (!rst_n) clk_out <=1'b0; 
else if (counter_4 < 2)   // clk_out is low at counter = 0,1  
clk_out <= 1'b0; 
else clk_out <= 1'b1;    // clk_out is high at counter = 2,3 
end 

endmodule 