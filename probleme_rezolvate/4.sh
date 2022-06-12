#!/bin/bash

for file in $@; do
        if test -f $file; then
                wc -m $file
        fi
done | sort
