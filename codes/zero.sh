#!/bin/bash

# -z 如果字符内容长度等于0 ，则真
zero=""
if [[ -z $zero ]];then
    echo Zero Input
else
    echo Not Zero
fi

nil=" "
if [[ -n $nil ]];then
    echo Not Null Input
else
    echo Null Input
fi


str1="Not Empty"
str2=""
