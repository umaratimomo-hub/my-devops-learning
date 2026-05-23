Some useful commamnds in Linux

Grep - grep "error" path/to/file            # This highlights all the instances of the word 'error' in a given file.

echo “Hello World” > file.txt               # This writes the words Hello World into file.txt. '>' overwrites the file with the new text. '>>' adds to the file.

awk - awk '{print $1}' example.txt          # Prints the first column info from example.txt.

- -  -v   or  rm  ./  -v                    # Removes files starting with a '-'

touch {file1..file5}                        # Creates 5 files from 1 to 5 i.e. file1 file2 file3 file4 file5

sed 's/old/new/' file			    # This substitutes the old pattern with the new pattern one instance per line only. For all instances use sed 's/old/new/g'
