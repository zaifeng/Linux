#!/bin/bash

u=$1

if [ -z $u ]
then
    echo "Please Enter a name";
    exit 0 ;
fi

case $u in 
zf|tuzi)
    echo hello $u ;;
bendan)
    echo hello bendan;;
*)
    echo do not know you;;

esac
