#!/bin/bash

list=`head -n 1 /etc/passwd`

IFS=:
for var in $list
do
    echo $var
done
