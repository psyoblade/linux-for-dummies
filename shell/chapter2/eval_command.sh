#!/bin/bash

add1() {
    local op1=1
    local op2=2
    echo "$op1+$op2"
}

add2() {
    local op1=1
    local op2=2
    local op3="not_expression"
    answer=$(($op1+$op2+$op3))
    echo $answer
}

# 런타임시에 생성된 프로그램을 실행할 수 있다 
eval1() {
    local a=1
    local b=2
    local c=3
    local d=4
    local e=5
    local ace=9
    local answer=""
    for x in $(echo "a c e"); do
        if [[ -z $answer ]]; then
            answer='$'$x
        else
            answer=$answer$x
        fi
    done
    eval value=$answer
    echo "$answer is $value"
}

eval1
