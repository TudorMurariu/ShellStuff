#!/bin/bash

# $1 o sa fie directorul !!!

find $1 -type f | grep -E "\.log$"

for file in $(find $1 -type f | grep -E "\.log$")
do
        grep -E "." $file | sort > "aux.txt"
        rm $file
        mv "aux.txt" $file
done

exit 0
