#!/bin/bash

# old
#ssh level09@$(ifconfig | grep 'inet ' | awk 'NR==2 {print $2}') -p 4242

if [[ $# -eq 1 && "$1" -ge 0 && "$1" -le 14 ]]; then
    #lv="level$1"
    if [[ "$1" -lt 10 ]]; then
        lv="level0$1"
    else
        lv="level$1"
    fi
else
    lv="level00"
    #echo "~[0, 15)"
    #exit 1
fi

ssh ${lv}@$(ifconfig | grep 'inet ' | awk 'NR==2 {print $2}') -p 4242
