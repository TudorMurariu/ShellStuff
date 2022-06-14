#!/bin/bash

if [ $# -lt 2 ]; then
        echo macar 2 argumente
        exit 1
fi

if [ $(($# % 2)) -eq 1 ]; then
        echo nr de arg trebuie sa fie par
        exit 1
fi

while [ ! $# -eq 0 ]; do

        if [ ! -f $1 ]; then
                echo trebuie sa fie fisier
                exit 1
        fi

        echo "$1 -  $(grep -E -o "$2 " "$1" | wc -l)"

        shift 2
done
