# Labs

Document your completed labs here.

## Template

When documenting a lab, include:

```markdown
# Lab: [Lab Name]

## Objective

What was the goal?

## Commands Used

(the commands you ran)

## Output

(what happened)

## Challenges

Any issues you hit and how you solved them.

## What I Learned

Key takeaways from this lab.
```

## Completed Labs

- [ ] Add your first lab

Bash Battle Arena
1. 	mkdir -p Arena/warrior.txt Arena/mage.txt Arena/archer.txt                                                                                     	ls Arena
or
	for file in warrior.txt mage.txt archer.txt; 
	do
    	mkdir -p "Arena/$file"
	done
	ls Arena


2.	#!/bin/bash

	for i in {1..10}
	do
        	echo $i
	done

3.	#!/bin/bash

	for file in arena
	do
        if [ "$file" == hero.txt  ]
        then
                echo "Hero found!"
        fi

        echo "Hero missing!"
	done

4.	#!/bin/bash

	for file in Arena/*.txt
	do
    		cp -r "$file" Backup
	done

5.	
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

6.
#!/bin/bash

set -e

file="$1"

if [ "$#" -eq 0 ];
then
        echo "No file provided!"
else
        cat "$file" | wc -l
fi

7.
#!/bin/bash

mkdir L7

for file in *txt
do
cp "$file" L7
done

ls -lh L7 | grep -v "^total" | sort -n -k5

8.
#!/bin/bash

set -x

#mkdir ket 
#touch ket/as.log ket/ad.txt ket/je.log ket/re.txt
#echo "dog" > ket/as.log
#echo "dog" > ket/je.log

word="$1"
grep -wl "$word" ket/*.log

9.

10.
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

ls -lha Arena_Boss | sort -n -k5


mkdir Victory_Archive
for file in Arena_Boss/*; do
    if grep -q "victory" "$file"; then
        mv "$file" Victory_Archive/
    fi
done