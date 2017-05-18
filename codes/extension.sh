#!/bin/bash
filename=www-1.file-jpg.pkg
file_ext=${filename%-*}
file_ext1=${filename%%-*}
file_pre=${filename#*-}
file_pre1=${filename##*-}

echo 'filename=' $filename
echo nongreedy trim right
echo '${filename%-*}=' $file_ext
echo
echo greedy trim right
echo '${filename%%-*}=' $file_ext1
echo 
echo nongreedy trim left
echo '${filename#*-}=' $file_pre
echo
echo greedy trim left
echo '${filename##*-}=' $file_pre1

jpg=hello.world.jpg

echo file_ext '=' ${jpg##*.}
echo file_name '=' ${jpg%.*}


