#!/bin/bash

dir=$1

if [ ! -d "$dir" ];
then
	echo "$dir does not exist"
	exit 1	
fi

for subdir in $dir
do
	if [ -d "$subdir" ];
	then
		name=$(basename "$subdir")
		count=$(find "subdir" -maxdepth 1 | wc -l)
		echo "$count" > "$dir/$name.txt"
	fi
done
