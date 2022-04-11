#!/bin/bash

if [ $# -eq 0 ]; then
        echo Scrieti parametri in consola
fi

for fisier in $@
do
        if test -f $fisier
        then
                wc -l < $fisier
        fi
done | sort -n
