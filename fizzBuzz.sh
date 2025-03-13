#!/bin/bash

num="$1"
text=""
bool=false


if [ $(($num % 3)) -eq 0 ] ; then
text+="Pling"
bool=true
fi
if [ $(($num % 5)) -eq 0 ] ; then
text+="Plang"
bool=true
fi

if [ $(($num % 7)) -eq 0 ] ; then
text+="Plong"
bool=true
fi

case $bool in
    (true) echo "$text" ;;
    (false) echo "$1" ;;
    *) return ;;
esac