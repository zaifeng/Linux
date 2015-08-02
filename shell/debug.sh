#!/bin/bash

for i in {1..6};
do
    echo $i
done

function DEBUG()
{
    [ "$_DEBUG" == "on" ] && $@ || :
}

for j in {1..9}
{
    DEBUG echo $j
}
