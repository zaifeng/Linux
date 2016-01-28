#!/bin/bash

#字符串比较，最好用双中括号[[]]
u=$1

if [[ $u == "zai" -o $u == "feng" ]] 
then
    echo Hello $u
else
    echo Sorry I didn\'t know you
fi
