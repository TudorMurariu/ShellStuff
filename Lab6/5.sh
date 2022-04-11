#!/bin/bash

s=0
nr=0

if [ $# -eq 0 ]
then
        echo Insuficienti parametri
        exit 1
fi

if [ ! -d $1 ]
then
        echo Parametrul dat trebuie sa fie un director
        exit 1
fi

for fisier in $(find $1 -type f)
do
        let nr++
        let s=s+$(wc -l < $fisier)
done

let raspuns=s/nr
echo $raspuns
