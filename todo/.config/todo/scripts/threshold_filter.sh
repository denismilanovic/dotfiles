#!/bin/bash

TODAY=$(date '+%Y-%m-%d')
while IFS= read -r line; do
	if [[ $line =~ t:([0-9]{4}-[0-9]{2}-[0-9]{2}) ]]; then
		threshold_date="${BASH_REMATCH[1]}"
		[[ "$threshold_date" < "$TODAY" ]] && echo "${line/t:${threshold_date}/}"
	else
		echo "$line" 
	fi
done 

