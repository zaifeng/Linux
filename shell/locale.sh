#!/bin/bash
hello() {
    d="Hello world!"
    local e="local var e"
    echo $d 
    echo $e
}

d="global"
e="locale"
echo $d $e

hello $d $e
echo $d 
echo $e

sleep 5