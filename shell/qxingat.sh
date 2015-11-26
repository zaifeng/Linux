#!/bin/bash

# $* 与 $@区别就是当被双引号括起来的时候，$*是单一字符串，$@是多个成员字符串
for a in "$*"
do
    echo $a
    echo "\$* 输出"
done

for b in "$@"
do
    echo $b
    echo "\$@输出"
done
