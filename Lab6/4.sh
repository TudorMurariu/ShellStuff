#!/bin/bash

if [ $# -eq 0 ]
then
        echo "Avem nevoie de input"
fi

if [ ! -d $1 ]
then
        echo $1 "trebuie sa fie un director"
        exit 1
fi


for file in $(find $1 -type f)
do
        nr=$(grep -E -c "[1-9]([0-9]){4,}" $file)
        echo $nr
        if [ $nr -gt 0 ]
        then
                echo $file
        fi
done
