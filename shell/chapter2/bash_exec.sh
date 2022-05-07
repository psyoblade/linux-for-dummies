#!/bin/bash
# sleep.sh 30 시에는 실행시킨 bash 와 sleep 모두 존재한다 (bash 종료 시에도 sleep 은 살아 있다)
echo "sleep $1 seconds"
sleep $1
echo "end"