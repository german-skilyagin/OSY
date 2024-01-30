#!/bin/bash

Help=$1
if [ "$1" == "-h" -o "$1" == "--help" ] 
then
echo "this program shows all subdirectories of the first level in which files are not open"
echo "not specified the current directory is used"
exit 
fi

function ubuntik {
	while read d; do
	if [ -f "/${d#* /}" ]; then
	return 
	fi
	done < <(lsof +d "$1")
	echo "$1"
}

declare -xf ubuntik
ubuntu=$(realpath -e $Help)
find "$ubuntu" -maxdepth 1 -mindepth 1 -type d -exec bash -c 'OpenFiles "{}"' \; | grep '.'
