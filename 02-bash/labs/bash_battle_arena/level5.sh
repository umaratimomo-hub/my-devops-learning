#!/bin/bash

set -e

for file in knight.txt warrior.txt sorcerer.txt 
do
    	mkdir -p "Battlefield/$file"
done


if [ -f "Battlefield/knight.txt" ];
then
	echo "Knight found!"
fi

mkdir Archive
mv Battlefield/knight.txt Archive

ls Battlefield
ls Archive
