#!/bin/bash

read_and_printf() {
    read
    printf "\n$1\n"
}

echo "Press <Enter>"

read_and_printf "le 혹은 me 로 끝나는 문자열을 출력"
grep \[lm\]e$ *

read_and_printf "le 혹은 me 로 끝나는 문자열의 라인 수를 출력"
grep -c \[lm\]e$ *

read_and_printf "le 혹은 me 로 끝나는 문자열을 가지지 않은 라인 수를 출력"
grep -c -v \[lm\]e$ *

read_and_printf "10글자 영문단어가 포함된 라인만 출력"
grep -E [a-z]\{10\} *
