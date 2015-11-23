#!/bin/bash

if [ $# -eq 0 ] ;then
    echo "param missing"
    exit
elif [ -z $1 ] ||[ $1 -le 0 ] ;then
    echo "wrong param"
    exit
else
    num=$1
fi

echo `seq "$num"`|xargs -n 1|awk 'BEGIN{sum=0;sumstr="0"}{sumstr = sumstr "+" $i ;sum += $i;}END{print sumstr "=" sum }'
