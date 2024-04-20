
module mod4_counter(
input clk,
input rst_n,
output clk_out
); 

wire q0,q1;
wire d0, d1; 
assign d0 = ~q0;
assign d1= q1^q0; 

dff inst_1(.clk(clk),.rst_n(rst_n),.d(d0),.q(q0)); 
dff inst_2(.clk(clk),.rst_n(rst_n),.d(d1),.q(q1)); 

assign clk_out = q1; 

endmodule 

//instance 
// mod4_counter inst_name (.clk(), .rst_n(), .clk_out()); 