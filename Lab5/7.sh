#!/bin/bash

if [ $# -eq 0 ]
then
        echo not enough args
        exit 1
fi

if [ ! -d $1 ]
then
        echo the input need to be a directory
fi

find $1 -type f | awk -F "/" '{print $NF}' | sort | uniq -c
