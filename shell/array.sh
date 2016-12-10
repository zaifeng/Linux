#!/bin/bash
ARRAY=('Debian' 'Redhat' 'Ubuntu')
ELEMENTS=${#ARRAY[@]}
for ((i=0;i<ELEMENTS;i++));do
    echo ${ARRAY[$i]}
done
#数组不能用for in 循环
