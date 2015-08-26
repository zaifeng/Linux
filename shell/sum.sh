#!/bin/bash
sum=0
for i in {1..100}
do
    let sum+=$i
done;

echo $sum

sum=0

for((i=1;i<=100;i++))
do
    let sum+=$i
done

echo $sum


