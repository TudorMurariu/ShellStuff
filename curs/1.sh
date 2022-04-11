#!/bin/bash

for nume in $(sort who.fake | cut -d " " -f1 | uniq)
do
        echo $nume $(grep -E -c "^$nume" ps.fake)
done


exit 0
