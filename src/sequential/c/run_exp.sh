#!/bin/bash
for i in `cat ./final_mtx_files.txt`; 
do
	echo -n "${i},"
	for value in 0.2 0.1 0.05 0.01 0.005 0.001
	do
		./run_features build/$i $value
	done
	echo ""
done
