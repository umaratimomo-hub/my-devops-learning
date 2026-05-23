#!/bin/bash
set -xu

mkdir Arena_Boss

for i in {1..5}; do
touch "Arena_Boss/file$i"
done

words=(victory defeat arena champion blade honor shadow fury)

for file in Arena_Boss/*; do
    lines=$(shuf -i 10-20 -n 1)
    for ((i=1; i<=lines; i++)); do
        word=${words[RANDOM % ${#words[@]}]}
        echo "Line $i: $word" >> "$file"
    done
done

ls -lh Arena_Boss | sort -n -k5


mkdir Victory_Archive
for file in Arena_Boss/*; do
    if grep -q "victory" "$file"; then
        mv "$file" Victory_Archive/
    fi
done

