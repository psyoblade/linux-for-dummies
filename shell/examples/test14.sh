#!/bin/bash

rm -f foo
touch bar
if [ -f foo ] || [ -f bar ]; then
    echo "OK"
fi
rm -f bar
