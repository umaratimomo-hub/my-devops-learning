#!/bin/bash

mkdir L7

for file in *txt
do
cp "$file" L7
done

ls -lh L7 | grep -v "^total" | sort -n -k5
