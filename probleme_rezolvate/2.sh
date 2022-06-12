#!/bin/bash

for arg in $@
do
        if [ -d $arg ]; then
                echo $arg este un director
        elif [ -f $arg ];then
                echo $arg este un fisier
        else
                echo $arg este altceva idk bro
        fi
done
