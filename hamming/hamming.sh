#!/usr/bin/env bash

if [[ ${#@} == 0 ]] || [[ ${#@} == 1 ]]; then
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
fi

arg1=$1
arg2=$2

if [[ ${#arg1} != ${#arg2} ]]; then
    echo "strands must be of equal length"
    exit 1
fi

hamming=0

for ((i = 0; i < ${#arg1}; i++)); do
    c1="${arg1:i:1}"
    c2="${arg2:i:1}"

    if [[ "$c1" != "$c2" ]]; then
        ((hamming++))
    fi
done

echo "$hamming"
