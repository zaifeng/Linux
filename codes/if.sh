#!/bin/bash


# then 仅在if或elif后面，else后面不可添加
count="$1"

if [ $count -gt 15 ] ;
then
   echo "Bigger"

elif [ $count -lt 5 ];
then
    echo "Smaller"

else
    echo "Right"
fi
