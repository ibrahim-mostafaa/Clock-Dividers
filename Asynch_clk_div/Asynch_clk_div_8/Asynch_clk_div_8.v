
module Asynch_clk_div_8(
input clk,
input rst_n,
output out_clk
); 
 
wire clk1, clk2; 

Asynch_clk_div_2 inst_1 (.clk(clk), .rst_n(rst_n), .out_clk(clk1)); 
Asynch_clk_div_2 inst_2 (.clk(clk1), .rst_n(rst_n), .out_clk(clk2)); 
Asynch_clk_div_2 inst_3 (.clk(clk2), .rst_n(rst_n), .out_clk(out_clk)); 

endmodule 

// instance: 
// Asynch_clk_div_2 inst_name (.clk(clk), .rst_n(rst_n), .out_clk(out_clk)); 