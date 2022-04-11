#!/bin/bash

if [ $# -eq 0 ]; then
        dir="."
else
        dir=$1
fi

for fisier in $(find $dir -type f)
do
        # probabil putem citi din el idk
        size=$(wc -c <$fisier)
        perms=$(ls -l $fisier  | cut -d " " -f 1)
        nr_lines=$(grep "." $fisier | sort | uniq | wc -l)
        echo "Fisierul : $fisier"
        echo $size $perms $nr_lines
done

exit 0
