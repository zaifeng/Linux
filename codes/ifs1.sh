#!/bin/bash

list=`head -n 1 /etc/passwd`

OLDIFS=$IFS
IFS=:
for var in $list
do
    echo $var
done

IFS=$OLDIFS
