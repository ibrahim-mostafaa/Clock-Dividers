Echo “ … Hello Message … ”
set MODULE Asynch_clk_div_4
quit -sim 
vlib work
Vlog ../$MODULE.v
Vlog ../dff_q_b.v
Vlog ../Asynch_clk_div_2.v
Vlog ../${MODULE}_tb.v
vsim work.${MODULE}_tb
add wave *
run 200ns
Echo “Test Finished .. “
