#!/bin/bash

if [ $# -ne 1 ] ; then 
    echo "Please input a directory" 
    exit
fi

if [ ! -d $1 ] ; then
    echo "Directory is not exist,please retry"
    exit
fi

for line in `find $1 -maxdepth 1 -type f -print` 
do
    echo $line ":" `wc -l $line`
done ;
