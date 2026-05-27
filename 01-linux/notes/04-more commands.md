cat file1.txt (shows the contents of file1)
cat file1.txt file2.txt > file3.txt - (copies the contents of file1 and file2 and writes it into file3)
cat file1.txt >> file2.txt (makes a copy of the contents of file1 and adds it to file2)
to remove a file starting with -, e.g. to remove -v use rm  - -  -v   or  rm  ./  -v
head and tail commands allow you to inspect specific parts of a file.
head file.txt (displays the first 10 lines of the file)
tail file.txt (displays the last 10 lines of the file)
head -n 5 file.txt (displays the first 5 lines)
head -n 5 file.txt | tail -n 2 file.txt (first gets the first 5 lines then passes it onto the tail command using the pipe symbol which then displays the last 2 lines of that 5 resulting in a display of lines 4 an 5 only)
