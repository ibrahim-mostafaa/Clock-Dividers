
module Synch_modN_counter_4(
input clk,
input rst_n,
output clk_out
); 

wire n; 
mod4_counter inst_name (.clk(clk), .rst_n(rst_n), .clk_out(n)); 
//dff inst_1(.clk(clk),.rst_n(rst_n),.d(n),.q(m)); 
assign clk_out = n; 


endmodule 