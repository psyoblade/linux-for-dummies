#!/bin/bash

# ./parameter_shift.sh 1 2 3 4 5
# 파라메터를 하나씩 시프트하여 없앤다
for parameter in $@; do
    echo $1
    shift
done
