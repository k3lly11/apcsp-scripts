#!/bin/bash

DROPLETS=(dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10)

for i in "${DROPLETS[@]}" ; do

	if [ ping $i | echo $? = 0 ] ; then
        	echo "$i : alive"
	else
		echo "$i : dead"
	fi

done

exit 0
