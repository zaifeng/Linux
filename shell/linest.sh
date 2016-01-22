#!/bin/bash

if [ $# -ne 1 ] ;
then
    echo "e.g:$0 file"
    exit
fi

echo $1 "contain" `wc -l $1` "lines"
