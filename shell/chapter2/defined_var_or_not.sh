#!/bin/bash

# export PURGEIMAGE="" ; ./defined_var_or_not.sh
# unsert PURGEIMAGE ;  ./defined_var_or_not.sh

# 아래와 같이 존재하지 않는 변수를 집어넣고, 선언이 되었는지 여부를 확인할 수 있다 
# https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html 매개변수 확장 규칙에 의하여
# - -z 는 null 혹은 선언되지 않은 경우 모두를 포함하므로 -z 만으로는 undefined 를 구분하기 어려움
# - 먼저 ${PURGEIMAGE 변수가 null 혹은 선언되지 않으면 확장되어 미선언된 변수를 인식하여 undefined 로 출력
if [ -z ${PURGEIMAGE+not_exists_variable_anything} ];
then
    echo "PURGEIMAGE 변수는 선언 되지 않았습니다"
else
    echo "PURGEIMAGE 변수는 이미 선언 되어있거나 값이 존재합니다"
fi
