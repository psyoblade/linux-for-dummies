#!/bin/bash

echo "Usage: ps ax | awk '{ print \$1, \$2 }' | grep \$\$"
tty=`ps ax | awk '{ print $1, $2 }' | grep $$ | awk '{ print $2 }'`

echo "Current tty is $tty"
printf "\n Hello suhyuk \t " > /dev/tty$tty
