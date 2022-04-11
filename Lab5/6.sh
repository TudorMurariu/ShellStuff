#!/bin/bash

if [ $# -eq 0 ]; then
        echo No input
        exit 1
fi

for link in $(find $1 -type l)
do
        if [ ! -e $link ]
        then
                echo "Link $link is not valid"
        fi
done

exit 0
