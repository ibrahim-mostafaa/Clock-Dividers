
module Asynch_clk_div_2(
input clk,
input rst_n,
output out_clk
); 
 
wire qb0; 
dff_q_b f1(.clk(clk),.rst_n(rst_n),.d(qb0),.q(out_clk),.q_b(qb0)); 

endmodule 

// instance: 
// Asynch_clk_div_2 inst_name (.clk(clk), .rst_n(rst_n), .out_clk(out_clk)); 