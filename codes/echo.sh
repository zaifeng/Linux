#!/bin/bash

# -n 选项用于去掉默认末尾输出的换行符号，-e用于将一些转意符号输出例如\t等
fruit=apple
count=5

echo "we have $count ${fruit}s"
