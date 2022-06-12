#!/bin/bash

if test $# -lt 1
then
        echo "Insificiente argumente"
        exit 1
fi

if [ ! -d $1 ]; then
        echo "Argumentul trebuie sa fie un director"
        exit 1
fi

echo $(find $1 | grep -E "\.c$")

total=0
for file in $(find $1 | grep -E "\.c$"); do
                count=$(grep -E -c -v "^[ \t]*$" $file)
                let total+=count
                echo $file $count
done

echo $total
