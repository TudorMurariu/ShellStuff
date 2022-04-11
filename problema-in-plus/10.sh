#!/bin/bash

j=0
array=()
frecv=()

for i in $@
do
        array[$j]=$i
        frecv[$j]=0
        let j++
done

ok=0
while [ $ok -eq 0 ]
do
        read file
        gata=1
        for (( i=1 ; i<=${#array[@]} ; i++ ))
        do
                let j=i-1
                echo " ${array[$j]} " $file
                grep -E -c " ${array[$j]} " $file
                if [ ! $(grep -E -c "\<${array[$j]}\>" $file) -eq 0 ]; then
                        frecv[$j]=1;
                fi

                if [ ${frecv[$j]} -eq 0 ]; then
                        gata=0
                fi
                echo ${array[$j]} ${frecv[$j]}
        done

        if [ $gata -eq 1 ]
        then
                ok=1
        fi

done

exit 0
