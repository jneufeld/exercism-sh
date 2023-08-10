#!/usr/bin/env bash
set -ue

result=""

# Double pipes only execute if the command fails
(($1 % 3)) || result+=Pling
(($1 % 5)) || result+=Plang
(($1 % 7)) || result+=Plong

# Check if result is empty
if [[ -z $result ]]; then
    echo "$1"
else
    echo $result
fi
