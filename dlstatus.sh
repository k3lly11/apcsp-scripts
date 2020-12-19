#!/bin/bash

DROPLETS=(dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11)

for i in "${DROPLETS[@]}" ; do
	ping $i -w1  1>/dev/null 2>/dev/null
	SUCCESS=$?
	if [ "$SUCCESS" -eq 0 ]; then
        	echo "$i : alive"
	else
		echo "$i : dead"
	fi

done

exit 0
