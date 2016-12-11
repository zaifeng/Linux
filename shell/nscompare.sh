#!/bin/bash

s1="Bash"
s2="Script"
if [ -n $s1 ];then
   echo "$s1 is not empty"
else 
   echo "\$s1 is empty"
fi

if [ -z $s1 ];then
    echo \$s1 is empty
else
    echo $s1 is not empty
fi

if [ $s1 = $s2 ];then
    echo "Both string is equal"
else
    echo "Strings are not equal"
fi
