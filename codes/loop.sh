#!/bin/bash
cd /root/mycodes/Linux/shell; 
find . -type f -name "*.sh"|sort|while read line;
do
    echo $line
done
