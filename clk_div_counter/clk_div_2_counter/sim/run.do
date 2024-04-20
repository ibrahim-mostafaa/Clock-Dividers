Echo “ … Hello Message … ”
set MODULE clk_div_4_counter
quit -sim 
vlib work
Vlog ../$MODULE.v
Vlog ../${MODULE}_tb.v
vsim work.${MODULE}_tb
add wave *
run 200ns
Echo “Test Finished .. “
