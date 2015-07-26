#!/bin/bash
IFS=$'\n:;'

list="benxin
tuzi:benxintuzi
tuzi;123"
for var in $list
do
    echo "The next user is $var"
done
