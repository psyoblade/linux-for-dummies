#!/bin/bash

# find [경로] [옵션] [테스트] [동작]
#  경로   -> . 현재 경로
#  옵션   -> 바로 하나의 깊이까지만 찾기
#  테스트 -> bash_ 로 시작하거나 export.sh 보다 최신 수정된 파일 
#  동작   -> 해당 파일명의 정보를 출력할 지를 물어봄 (-exec 는 물어보지 않고 바로실행)

find . -depth 1 \( -name "bash_*" -or -newer export.sh \) -type f -ok ls -l {} \;
