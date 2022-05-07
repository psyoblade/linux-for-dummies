#!/bin/bash
# Until 구문은 10보다 클때까지 더하기 때문에 10일 때에도 더하여 11로 반환
x=0
until [ $x -gt $1 ]; do
    x=$(($x+1))
done
echo $x
