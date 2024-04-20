Echo “ … Hello Message … ”
set MODULE Synch_modN_counter_5
quit -sim 
vlib work
Vlog ../$MODULE.v
Vlog ../dff.v
Vlog ../mod5_counter.v
Vlog ../${MODULE}_tb.v
vsim work.${MODULE}_tb
add wave *
run 200ns
Echo “Test Finished .. “
