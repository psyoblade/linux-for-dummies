#!/bin/bash

if [ $1 -eq 0 ]; then
	echo "0"
elif [ $1 -gt 0 ]; then
	echo "양수"
else
	echo "음수"
fi

