#!/usr/bin/env bash
# This script takes the first letter of each argument
#  Expected './acronyms.sh [Liquid-crystal] [display]' outputs 'LCD'

# Functions
strip() {
 echo "$1" | tr -dc '[:alnum:] -'
}
for var in "$@"
do
strip "$var" | sed -e 's/\-/ /g' -e 's/\B\w*//g;s/\s//g' | tr '[:lower:][:upper:]' '[:upper:][:upper:]'
done
