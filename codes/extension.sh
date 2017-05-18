#!/bin/bash
filename=www.filejpg.pkg
file_ext=${filename%.*}
file_ext1=${filename%%.*}
file_pre=${filename#*.}
file_pre1=${filename##*.}
echo Filename:$file_ext FilePrefix :$file_pre
echo Filename:$file_ext1 FilePrefix :$file_pre1



