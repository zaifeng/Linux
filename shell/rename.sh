#!/bin/bash
if [ $# -lt 1 ]
then
    echo Please input file extension
    exit
fi
count=1
for txt in `find . -type f -iname "*.$1"`
do 
    new=text-$count.${txt##*.}
    echo Renaming $txt to $new
    mv "$txt" "$new"
    let count++
done 
