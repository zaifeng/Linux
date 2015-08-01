#!/bin/bash

u=$1
#judge if length is zero

if [ -z $u ]
then
    echo "Please Input a user name";
    exit 0 ;
fi


if grep $u /etc/passwd
then
    awk -F: '{if($1=="$u") print $6;}' /etc/passwd
fi
