#!/bin/bash
<< comment
chayowogames@bkpserver:~$ mkdir syam-test
svr@bkpserver:~$ cd syam-test/
svr@bkpserver:~/syam-test$ touch file{1..5}.txt
svr@bkpserver:~/syam-test$ ll
total 8
drwxrwxr-x 2 svr svr 4096 May 29 04:29 ./
drwxr-xr-x 7 svr svr 4096 May 29 04:29 ../
-rw-rw-r-- 1 svr svr    0 May 29 04:29 file1.txt
-rw-rw-r-- 1 svr svr    0 May 29 04:29 file2.txt
-rw-rw-r-- 1 svr svr    0 May 29 04:29 file3.txt
-rw-rw-r-- 1 svr svr    0 May 29 04:29 file4.txt
-rw-rw-r-- 1 svr svr    0 May 29 04:29 file5.txt

svr@bkpserver:~/syam-test$ find . -name '*.txt'
./file1.txt
./file2.txt
./file4.txt
./file5.txt
./file3.txt

svr@bkpserver:~/syam-test$ find . -name '*.txt' -exec sh -c 'mv "$0" "${0%.txt}.html"' {} \;
comment

## Script to rename all .txt files to .html file
## Finding the all .txt file under my directory
find . -name '*.txt' ## => . meanse my Current directory

## Now, Rename to .html format
find . -name '*.txt' -exec sh -c 'mv "$0" "${0%.txt}.html"' {} \;

## The Output is 
ll 



