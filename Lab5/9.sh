#!//bin/bash

if [ $# -eq 0 ]; then
        echo not enough args
        exit 1
fi

if [ ! -r $1 ]; then
        echo the file needs to be readable
        exit 1
fi

str=""
while read line
do
        str="$line@scs.ubbcluj.ro,$str"
done < $1

str=$(echo $str | sed -E "s/,$//")

echo $str
