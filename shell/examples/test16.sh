#!/bin/bash

echo "환경변수 출력: $ENV_VAR"

GLOBAL_VAR="global_var"

local_func() {
    local LOCAL_VAR="local_var"
    echo "글로벌 변수: $GLOBAL_VAR"
    echo "로컬 변수: $LOCAL_VAR"
}

local_func
echo "글로벌 변수: $GLOBAL_VAR"
echo "로컬 변수: $LOCAL_VAR"

export ENV_VAR="modified_env_var"
echo "환경변수 출력: $ENV_VAR"
