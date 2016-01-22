#!/bin/bash

if [ $# -lt 1 ]
then 
    echo "Please input a parameter"
    exit
fi
while read line
do
    echo $line && sleep 2 &
done < $1 ;
wait
