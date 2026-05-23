#!/bin/bash

set -e

file="$1"

if [ "$#" -eq 0 ];
then
        echo "No file provided!"
else
	cat "$file" | wc -l
fi

