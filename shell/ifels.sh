#!/bin/bash

u=$1

if [[ $u == net031* ]]
then
    echo Hello $u
else
    echo Sorry I didn\'t know you
fi
