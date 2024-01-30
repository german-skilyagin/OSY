#!/usr/bin/bash

path_copy=$PATH
IFS=:

path_answ=

for file in $path_copy; do
        if [[ ! -d $file ]]; then
		continue;
	fi
	
	resp=0
	for f in $(find $file); do
	    if [[ -x $f ]]; then
	    	resp=1
	    	break
	    fi
	done
	    
	if [[ $resp -eq 1 ]]; then
		if [[ -z $path_answ ]]; then
			path_answ=$file
		else
			path_answ=$path_answ':'$file
		fi
	fi
	
	IFS=
done
echo $path_answ
	
	IFS=
done
echo $path_answ
