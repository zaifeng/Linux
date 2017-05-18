#!/bin/bash
echo $# "params"

kk=$#
if [ $kk -lt 1 ];then
    echo "param need to be added"
    exit ;
fi
sum=0

while [ $kk -gt 0 ] ;do
    ((sum=sum+$1))
    shift;
    let kk--
done;
echo $sum 
