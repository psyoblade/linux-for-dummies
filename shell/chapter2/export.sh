#!/bin/bash
source ./export_common.sh

local_var="local variable"
export exported_var="exporeted variable"

# 익스포트 혹은 환경변수로 전달된 값들은 자식 프로세스에서도 접근이 가능하다 
print_var

./export_print.sh foreground
./export_print.sh background &
