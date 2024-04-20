
module Synch_modN_counter_3(
input clk,
input rst_n,
output clk_out
); 

wire n,m; 
mod3_counter inst_name (.clk(clk), .rst_n(rst_n), .clk_out(n)); 
dff inst_1(.clk(!clk),.rst_n(rst_n),.d(n),.q(m)); 
assign clk_out = n|m; 


endmodule 