#!/bin/bash

u=$1

if [[ $u == "zai" -o $u == "feng" ]] 
then
    echo Hello $u
else
    echo Sorry I didn\'t know you
fi
