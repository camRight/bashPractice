#!/usr/bin/env bash

# Comparing strings of same length, erroring elsewise.

string1="$1"
string2="$2"
counter=0
if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <string1> <string2>"
    exit 1
fi
if [ ${#string1} -ne ${#string2} ]; then
echo "left and right strands must be of equal length"
exit 1
else
    for (( i=0; i<${#string1}; i++ )); do
    char1=${string1:i:1}
    char2=${string2:i:1}
    if [ "$char1" != "$char2" ]; then
    counter=$((counter+=1))
    fi
    done
        echo $counter 
fi