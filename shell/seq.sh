#!/bin/bash

if [ $# -eq 0 ] ;then
    echo "Please input a number"
    exit
elif [ -z $1 ] ||[ $1 -le 0 ] ;then
    echo "Wrong input:" $1
    exit
else
    num=$1
fi

echo `seq $num`|tr ' ' '+'
exit;
echo $(expr "`seq $num`|tr ' ' '+'" )
#echo -n `seq "$num"`|tr ' ' '+'
#echo `seq "$num"`|xargs -n 1|awk 'BEGIN{sum=0;}{sum += $i;}END{print "=" sum }'
