Open a terminal with a shell then

``` bash
sed -n '10,15p' file1.txt > file2.txt
```

Simple & easy.

If you want to append to the end instead of wiping file2.txt, use >> for redirection.

``` bash
sed -n '10,15p' file1.txt >> file2.txt
```

AWK is also a powerful command line text manipulator:

``` bash
awk 'NR>=10 && NR<=15' file1.txt > file2.txt
```