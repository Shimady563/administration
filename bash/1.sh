#!/bin/bash

file_name=$1
time=$2
cur_date=$(date "+[%d.%m](https://%d.%m/).%y %H:%M = ")

while [[ $SECONDS -lt $time ]];
do
	output=$(cat /proc/loadavg)
	echo "$cur_date <$output>" >> "$file_name"
	sleep 1
done
