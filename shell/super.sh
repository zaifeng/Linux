#!/bin/bash

if [ $UID -eq 0 ]
then
    echo "You are root User"
else
    echo "You are not root user"
fi
