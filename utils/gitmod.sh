#!/bin/bash
# Script to list uncommited changes for gitrepos in current folder
echo "These folders have uncommited changes!"
dirs=$(ls -d */)
for f in $dirs
do
	#echo "Current: $f"
	cd "$f"
	status=$(git status --porcelain | wc -l)
	#echo $status
	if (( $status > 0)); then
		echo "$f"
	fi
	cd ..
done


