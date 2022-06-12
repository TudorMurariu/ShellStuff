#!/bin?bash

if test $# -lt 1
then
        echo "Insificiente argumente"
        exit 1
fi

if [ ! -d $1 ]; then
        echo "Argumentul trebuie sa fie un director"
        exit 1
fi

find $1 -type f | grep -E -c "\.c$"
