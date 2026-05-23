#!/bin/bash

set -x

#word="$1"
#directory="$2"
#grep -wl "$word" "$directory"/*.log

DIRECTORY="$2"
SEARCH_TERM="$1"

if [ ! -d "$DIRECTORY" ]; then
    echo "Directory does not exist."
    exit 1
else
	grep -l "$SEARCH_TERM" "$DIRECTORY"/*.log
fi

