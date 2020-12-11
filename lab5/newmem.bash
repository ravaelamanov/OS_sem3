#!/bin/bash
#echo "$$" > .pid
#echo "" > exp2/report.log
arr=()
arr1=(0 1 2 3 4 5 6 7 8 9)
while [ 1 ]; do
	arr+=("${arr1[@]}")
	if [[ "${#arr[*]}" -ge "$1" ]]; then
		break
	fi
done
#rm .pid
