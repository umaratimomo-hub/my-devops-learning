This table shows what happens to the standard streams when using redirection operators 


Redirection		Redirects			What happens				Screen Output		Example
>			stdout (1)			stdout → file (overwrite)		nothing			echo hi > out.txt
>>			stdout (1)			stdout → file (append)			nothing			echo hi >> out.txt
2>			stderr (2)			stderr → file				stdout only		ls ok nofile 2> err.txt
2>>			stderr (2)			stderr → file (append)			stdout only		ls ok nofile 2>> err.txt
&>			stdout + stderr			both → file				nothing			ls ok nofile &> all.txt
&>>			stdout + stderr			both → file (append)			nothing			ls ok nofile &>> all.txt
> file 2>&1		stdout → file, 
			stderr → stdout			both → file (POSIX)			nothing			ls ok nofile > all.txt 2>&1
> /dev/null		stdout				discard stdout				nothing			echo hi > /dev/null
2> /dev/null		stderr				discard stderr				stdout only		ls ok nofile 2> /dev/null
&> /dev/null		stdout + stderr			discard everything			nothing			ls ok nofile &> /dev/null
