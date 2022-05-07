#!/bin/bash

echo_1() {
    x=x
    echo $x

    if [ "$x" = "x" ]; then
        echo "ok.2"
    fi

    if [[ $x = "x" ]]; then
        echo "ok.3"
    fi
}

type1() {
    echo "what is your name?"
    read name
    echo "hello $name"
}

type2() {
    echo -n "what is your name? "
    read name
    echo "hello $name"
}

type3() {
    printf "what is your name? "
    read name
    echo "hello $name"
}

for1() {
    for x in a b c; do
        echo $x
    done
}

for2() {
    for x in "a b c"; do
        echo $x
    done
}

for3() {
    for x in `echo "a b c"`; do
        echo $x
    done
}

for4() {
    for x in $(echo "a b c"); do
        echo $x
    done
}

return1() {
    echo "return_value"
}

return2() {
    local res=3
}

check_return() {
    res=$(return1)
    echo $res
}

value=100
variable1() {
    local value=10
    echo "local value is $value"
}

variable2() {
    variable1
    echo "global value is $value"
}

yes_or_no() {
    echo "Is Your Name is $* ?"
    while true
    do
        echo -n "Enter yes or no: "
        read answer
        case "$answer" in
            [yY] | [Yy][Ee][Ss] ) return 0 ;;
            [nN] | [Nn][Oo] ) return 1 ;;
            * ) echo "Answer is yes or no" ;;
        esac
    done
}

ask_your_name() {
    if yes_or_no "suhyuk park"; then
        echo "nice to meet you!!"
    else
        echo "see ya"
    fi
}

echo_1
type1
ask_your_name

exit 0