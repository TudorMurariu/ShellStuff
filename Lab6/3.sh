#!/bin/bash

for file in $(find . -type f)
do
        if [ ! -r $file ]
        then
                continue
        fi


        NL=$(wc -l < $file)
        if [ $NL -ge 10 ]
        then
                echo "***************************************************************\n"
                echo "  Fisierul :" $file
                echo primele
                head -n 5 $file
                echo ultimele
                tail -n 5 $file

        else
                echo "***************************************************************\n"
                echo "  Fisierul :" $file
                cat $file
        fi
done
