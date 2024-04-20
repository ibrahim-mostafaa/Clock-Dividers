module clk_div_2_counter (
input clk,
input rst_n, 
output reg clk_out); 

reg counter = 1'b0; // 1 bit counter, counts 2 counts
//1 count high, 1 count low 
// 2 cycles of ref_clk make 1 cycle of clk_out
always@(posedge clk or negedge rst_n) begin 
if (!rst_n) counter <=0; 
else counter <= counter +1; 
end 

// output clk with 50% duty cycle 
always@(posedge clk or negedge rst_n) begin 
if (!rst_n) clk_out <=0; 
else if (counter ==0) 
clk_out <= 1'b1; 
else clk_out <= 1'b0;  
end 

endmodule 