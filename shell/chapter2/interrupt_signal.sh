#!/bin/bash

tmp_file="/tmp/my_tmp_file_$$"

# 인터럽트 되었을 때에 생성 중인 임시파일 제거 후 정상적으로 다음 프로그램 실행
trap "rm -rf $tmp_file" INT

file_check() {
    echo "generating $tmp_file ..."
    date > $tmp_file

    echo "press interrupt (Ctrl+C) to interrupt ..."
    while [[ -f $tmp_file ]]; do
        echo "file exists"
        sleep 1    
    done
}

file_check
echo "temporary files are removed now"
ls $tmp_file


# 인터럽트 되었을 때에 프로그램 종료
trap INT
file_check

echo "never reach here"
exit 0
