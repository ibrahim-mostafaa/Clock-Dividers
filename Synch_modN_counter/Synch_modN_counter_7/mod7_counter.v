
module mod7_counter(
input clk,
input rst_n,
output clk_out
); 

wire q0,q1,q2; 
wire d0,d1,d2; 

assign d0 = ((!q1)&(!q0)) | ((!q2)&(!q0)) ;
assign d1 = ((!q1)&(q0)) | ((!q2)&(q1)&(!q0)) ;
assign d2 = ((q2)&(!q1)) | ((q1)&(q0)) ;
dff inst_1(.clk(clk),.rst_n(rst_n),.d(d0),.q(q0)); 
dff inst_2(.clk(clk),.rst_n(rst_n),.d(d1),.q(q1)); 
dff inst_3(.clk(clk),.rst_n(rst_n),.d(d2),.q(q2));

assign clk_out = q2; 

endmodule 

//instance 
// mod7_counter inst_name (.clk(), .rst_n(), .clk_out()); 