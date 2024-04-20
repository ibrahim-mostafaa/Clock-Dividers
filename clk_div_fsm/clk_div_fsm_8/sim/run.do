Echo “ … Hello Message … ”
set MODULE clk_div_fsm_8
quit -sim 
vlib work
Vlog ../$MODULE.v
#Vlog ../$MODULE.v
Vlog ../${MODULE}_tb.v
vsim work.${MODULE}_tb
add wave *
run 200ns
Echo “Test Finished .. “
