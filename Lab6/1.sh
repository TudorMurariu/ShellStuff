#!/bin/bash

if [ $# -eq 0 ]
then
        echo "Numarul n trebuie dat ca argument."
        exit 1
fi

N=$1

i=1

while [ $i -le $N ]
do
        touch "file_$i.txt"
        let a=i*5-5+1
        sed -n ''$a',+4p' passwd.fake > "file_$i.txt"
        let i++
done
