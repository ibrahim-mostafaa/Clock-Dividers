`timescale 1ns / 100ps

module clk_div_2_counter_tb(); 
// inputs & outputs 
reg clk, rst_n;  

// wire outputs
wire clk_out; 

// instantiate dut
clk_div_2_counter dut(.clk(clk), .rst_n(rst_n),.clk_out(clk_out)); 
//
initial begin 
rst_n = 1'b0; 
@(negedge clk) rst_n = 1'b1; 
end 
// generate clk
always begin 
clk = 1'b1; #5 clk = 1'b0; #5; 
end 


endmodule 