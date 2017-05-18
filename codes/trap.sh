#!/bin/bash

trap bootstrap INT
function bootstrap()
{
    echo "CTRL+C detected excuting bash trap"
}

for i in `seq 1 10`;do
    echo "$i/10 to exit"
    sleep 2
done

echo "Exit bash example"
