#!/bin/bash

num=$1

echo `seq "$num"`|xargs -n 1|awk 'BEGINE{sum=0;}{printf $1 "+";sum += $i;}END{print "=" sum }'
