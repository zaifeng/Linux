#!/bin/bash

#cmd="hello world"
cmd="ls -l"
#`$cmd`
#($cmd)
$cmd
if [ $? -eq 0 ];
then
    echo "$cmd excute success!"
else
    echo "$cmd excute failed!"
fi
