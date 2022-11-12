#!/bin/bash
for i in {1..5}; do base64 /dev/urandom | head -c 100000 > /home/danila/file$i.txt; done 
for i in {1..5}; do rsync -avz /home/danila/file$i.txt root@84.201.152.71:/tmp; done
ssh root@84.201.152.71 "find /tmp -mtime +7 -name 'file*.txt' -delete"


