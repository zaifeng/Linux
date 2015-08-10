#!/bin/bash

if [ $# -ne 1];
then
    echo "e.g:$0 file"
    exit
fi

file=$1

echo $1 "contain" `wc -l "$file"` "lines"
