#!/bin/bash
count=1
for txt in `find . -type f -iname '*.txt'`
do 
    new=text-$count.${txt##*.}
    mv "$txt" "$new"
    let count++
done 
