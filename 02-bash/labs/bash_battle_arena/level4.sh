#!/bin/bash


for file in Arena/*.txt
do
    cp -r "$file" Backup
done
