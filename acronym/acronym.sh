#!/usr/bin/env bash
set -ue

# Strip hyphens, underscores, and asterisks. How do I generalize this?
result=""
input="${*//-/ }"
input="${input//_/ }"
input="${input//\*/ }"

for word in $input; do
    result+="${word:0:1}"
done

echo "${result^^}"
