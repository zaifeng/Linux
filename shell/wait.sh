#!/bin/bash

PIDARR=()
for file in "wait.sh" "add.sh" "apples.sh"
do
    md5sum $file &
    PIDARR+=("$!")
done
wait ${PIDARR[@]}
