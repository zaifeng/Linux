#!/bin/bash
for state in apple orange pear banana pineapple
do
    echo "$state is my favourite fruit"
done | sort

sum=0
for ((i=1 ; i <11;i++))
#{
do
    #((sum=$sum+$i)) 
    #let sum=sum+i
    #sum=`expr $sum + $i`
    sum=$[ sum+i ]
done ;
#}

echo $sum;

for char in a b c d e f
{
    echo $char
}
