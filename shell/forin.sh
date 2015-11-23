#!/bin/bash
for state in apple orange pear banana pineapple
do
    echo "$state is my favourite fruit"
done | sort

sum=0
for ((i=1 ; i <11;i++))
{
    #((sum=$sum+$i)) 
    #let sum=sum+i
    sum=`expr $sum + $i`
}

echo $sum;
