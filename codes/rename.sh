#!/bin/bash
if [ $# -ne 3 ];then
    echo "Wrong Pararms"
    exit 
fi

echo target:$1
echo extension rename:$2
echo extension final:$3

for file in `ls *.$2|xargs -n 1`;do
    echo $file rename to ${file%.*}.$3
    mv $file ${file%.*}.$3
done;
