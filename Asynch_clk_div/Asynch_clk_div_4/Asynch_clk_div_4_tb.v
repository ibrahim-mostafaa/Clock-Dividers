`timescale 1ns / 100ps

module Asynch_clk_div_4_tb(); 
// inputs & outputs 
reg clk, rst_n; 

// wire outputs
wire out_clk; 


// instantiate dut
Asynch_clk_div_4 dut(.clk(clk), .rst_n(rst_n), .out_clk(out_clk)); 

// generate clk
always begin 
clk = 1'b1; #5 clk = 1'b0; #5; 
end 


// store inputs in testvectors and put reset values.  
initial begin
rst_n = 1'b0; 
@(negedge clk); rst_n = 1'b1;  
end



endmodule 