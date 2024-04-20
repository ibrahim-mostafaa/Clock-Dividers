
module Asynch_clk_div_4(
input clk,
input rst_n,
output out_clk
); 
 
wire clk1; 
Asynch_clk_div_2 inst_1 (.clk(clk), .rst_n(rst_n), .out_clk(clk1));
Asynch_clk_div_2 inst_2 (.clk(clk1), .rst_n(rst_n), .out_clk(out_clk));
endmodule 

// instance: 
// Asynch_clk_div_4 inst_name (.clk(clk), .rst_n(rst_n), .out_clk(out_clk)); 