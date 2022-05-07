#!/bin/bash

echo "$0 is '$$'"
./fork_child.sh background &
./fork_child.sh foreground

# 아래의 명령 또한 별도의 프로세스가 포크 되는 것이므로 현재 쉘에 제어권은 없으며, kill -INT 하더라도 종료되기 어렵다
#* 자식 프로세스인 sleep 을 kill -INT 하거나, 부모 프로세스를 강종 kill -KILL 해야 한다
for x in $(seq 1 1000); do
    sleep 0.5
done
