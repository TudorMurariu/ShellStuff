#!/bin/bash

for i in $@
do
        if [ -f $i ]  # fisier
        then
                echo "Fisier :" $i
                Nrl=$(grep -c "." $i)
                echo "Numarul de linii este :" $Nrl
                NrC=$(wc -m < $i)
                echo "Numarul de caractere este :" $NrC

        elif [ -d $i ]  # director
        then
                echo "Directorul :" $i
                Nrf=$(find $i -type f | grep -c ".")
                echo "Numarul de fisiere este :" $Nrf

        else
                echo "'$i' nu este nici fisier nici director"
        fi
done

exit 0
