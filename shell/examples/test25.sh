#!/bin/bash

foo="helloworld"
declare | grep helloworld | wc -l

unset foo
declare | grep helloworld | wc -l
