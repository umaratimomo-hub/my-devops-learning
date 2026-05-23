#!/bin/bash

set -eux
set -o pipefail

: 'No_files_in_dir=$(ls | wc -l)

if [ "$No_files_in_dir" -eq 0 ]
then

	echo "There are currently $No_files_in_dir files in this directory."
else

	echo "There are $No_files_in_dir files in this directory."
	ls -lh
	
fi'

if [ ! -d "$(pwd)" ]
then
echo "Directory doesn't exsist."
fi

Log="change_log.txt"
fswatch -r "linux" | while read event; do
	if [ -e "$event" ]; then
		echo $(date) "File modified/created: $event" >> "$Log"
	else
		echo $(date) "File deleted: $event" >> "$Log"
	fi
done
