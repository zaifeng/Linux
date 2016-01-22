#!/bin/bash

while read line
do
    echo $line && sleep 2 &
    wait 
done < $1 ;
#wait
