
module dff_q_b(
input wire clk, rst_n, 
input wire d, 
output reg q,
output q_b 
);

always @(posedge clk or negedge rst_n) begin 
if (!rst_n) q <= 0;
else q <= d;
end
assign q_b = !q; 
endmodule 


// instance: 
// dff_q_b inst_name(.clk(),.rst_n(),.d(),.q(),.q_b()); 