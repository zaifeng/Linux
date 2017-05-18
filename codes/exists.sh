#!/bin/bash

file=/etc/passwd

if [ -f $file ];then
    echo `cat $file`
fi
