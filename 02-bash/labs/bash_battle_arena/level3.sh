#!/bin/bash

for file in arena
do
	if [ "$file" == hero.txt  ]
	then
		echo "Hero found!"
	fi
	
	echo "Hero missing!"
done
