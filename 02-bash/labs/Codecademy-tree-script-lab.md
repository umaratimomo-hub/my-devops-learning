#!/bin/bash

# Begin code below:
if [ "$1" != "" ]
then cd "$1"
fi
pwd
if [ `ls -F -1 | grep "/" | wc -l` = 0
 ]
 then echo " -> no sub-directories"
 fi
 ls -R

If the input directory is not an empty string then go to that directory 
If the below = 0 say there is no sub directories and list the directories and their contents

note: `ls -F -1 | grep "/" | wc -l` = 0The provided conditional statement uses `ls` lists files and directories with indicators one line at a time. `grep` is then used to find the `/` indicator which implies a directory. If the line count calculated by `wc -l` is `0`, then no subdirectories exist.

#!/bin/bash
echo
ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'
echo
​
The `-e` option allows us to use multiple expressions in the same `sed` command.
The first expression, 's/:$//', removes all colons at the end of each line.
The second expresion, 's/[^-][^\/]*\//--/g', essentially replaces all / with --.
The third expresion, 's/^/ /', indents each line by adding three spaces to the beginning.
The fourth expresion, 's/-/|/', replaces the first dash - of each line with |.
