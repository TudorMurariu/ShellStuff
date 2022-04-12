#!/bin/bash

if [ $# -eq 0 ]
then
        echo not enough args
        exit 1
fi

if [ ! -d $1 ]
then
        echo Argumentul trebuie sa fie un director
fi

nr=0
for fisier in $(find $1 -type f | grep -E "\.c$")
do
        if [ $nr -eq 2 ]; then
                exit 0
        fi

        if [ $(wc -l <$fisier) -ge 500 ]
        then
                echo $fisier | awk -F "/" '{print $NF}'
                let nr++
        fi
done

echo NU AU FOST DOUA FISIERE GASITE
exit 0
