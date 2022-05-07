#!/bin/bash
x=0
# while 문은 입력값 보다 작은 동안만 더하기 때문에 10보다 작으면 9이므로 1을 더하고 끝
while [ $x -lt $1 ]; do
    x=$(($x+1))
done
echo $x
