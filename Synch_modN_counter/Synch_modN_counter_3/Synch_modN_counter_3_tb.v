`timescale 1ns / 100ps

module Synch_modN_counter_3_tb(); 
// inputs & outputs 
reg clk, rst_n; 

// wire outputs
wire clk_out; 


// instantiate dut
Synch_modN_counter_3 dut(.clk(clk), .rst_n(rst_n), .clk_out(clk_out)); 

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