#!/bin/bash

num1=5
num2=4
#let without $ sign
let result=num1+num2

# $[] usage
result1=$[ num1 + num2 ]
result2=$[ $num1 + 3 ]

#$(()) usage
result3=$(( num1 + 50 ))
result4=$(( $num2 + 50 ))

# wrong example expression expect in $()
#echo $( $num2 + 5 )

# right example 
echo $(expr $num2 + 6 )

# `` usage
result5=`expr num1+num2`
echo $result $result1 $result2 $result3 $result4
