#!/bin/bash

if [[ $# -ne 1 ]];then
    echo "e.g:$0" , " path"
    exit
fi

path=$1

declare -A statarray
while read line ;
do
    ftype=`file -b "$line" | cut -d, -f1`
    statarray["$ftype"]++ ;
done < <(find $path -type f -print)

echo ================Dividual==================

for ftype in "${!statarray[@]}";
do
    echo $ftype : ${statarray["$ftype"]}
done
