#!/bin/bash

#cmd="hello world"
cmd="ls -l"
$cmd

if [ $? == 0 ];
then
    echo "$cmd excute success!"
else
    echo "$cmd excute failed!"
fi
