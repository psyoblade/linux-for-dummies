#!/bin/bash

for x in $(seq -w 01 10); do
    echo $x
done

for x in $(seq 1 10); do
    if [ $(($x%2)) -eq 0 ]; then
        echo $x
    fi
done
