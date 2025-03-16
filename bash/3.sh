#!/bin/bash

for file in "$@";
do
    	if [ -l "$file" ]; 
	then
		count=$(wc -l $path)
       		echo "$file => => $count"
	else
        	echo "$file => not found"
	fi
done
