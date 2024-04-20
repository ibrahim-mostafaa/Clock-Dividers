
module mod3_counter(
input clk,
input rst_n,
output clk_out
); 

wire q0,q1,d0; 
assign d0 = ~(clk_out|q0);
dff inst_1(.clk(clk),.rst_n(rst_n),.d(d0),.q(q0)); 
dff inst_2(.clk(clk),.rst_n(rst_n),.d(q0),.q(q1)); 

assign clk_out = q1; 

endmodule 

//instance 
// mod3_counter inst_name (.clk(), .rst_n(), .clk_out()); 