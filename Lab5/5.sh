#!/bin/bash

if [ $# -eq 0 ]
then
        echo Avem nevoie de input
        exit 1
fi

if [ ! $(($# % 2)) -eq 0 ]
then
        echo Avem noveoie de perechi de elemente
        exit 1
fi


while [ ! $# -eq 0 ]
do
        echo "Fisierul :" $1
        echo "Cuvantul $2 apare de " $(grep -E -o $2 $1 | wc -l) "ori"

        shift 2
done

exit 0
