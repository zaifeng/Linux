#!/bin/bash

# $* 与 $@区别就是当被双引号括起来的时候，$*是单一字符串，$@是多个成员字符串
echo "\$* 输出"
for a in "$*"
do
    echo $a
done

echo "\$@输出"
for b in "$@"
do
    echo $b
done
