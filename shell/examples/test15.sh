#!/bin/bash

say_hello() {
    echo "안녕하세요"
}

for x in $(seq 1 5); do 
    say_hello
done

say_hello2() {
    name=$1
    echo "안녕하세요 $name 님"
}

echo -n "이름을 입력하세요: "
read name
say_hello2 $name


say_hello3() {
    if [ $# -lt 1 ]; then
        return 1
    else
        echo "매개변수는 $1 입니다"
    fi
}

say_hello3 "안녕"
say_hello3
if [ $? -eq 0 ]; then
    echo "좋은 하루입니다"
else
    echo "매개변수를 하나 이상 입력하세요"
fi

if say_hello3 "안녕"; then
    echo "좋은 하루입니다"
else
    echo "매개변수를 하나 이상 입력하세요"
fi

if say_hello3 ; then
    echo "좋은 하루입니다"
else
    echo "매개변수를 하나 이상 입력하세요"
fi

