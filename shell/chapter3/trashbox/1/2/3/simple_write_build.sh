#!/bin/bash

echo "gcc simple_write.c -o simple_write"
gcc simple_write.c -o simple_write

printf "\n\nWrite some word here : "
./simple_write
