#!/bin/bash
echo "$$" > .pid
echo "" > exp2/report.log
arr=()
arr1=(0 1 2 3 4 5 6 7 8 9)
i=0
while [ 1 ]; do
	arr+=("${arr1[@]}")
	if [[ $((i % 100000)) -eq 0 ]]; then
		printf "%s\n" "${#arr[*]}" > exp2/report.log
	fi
	let i++
done
rm .pid
