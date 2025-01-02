#!/bin/bash

arg="$1"
: "${arg:='00'}"

COLOR='\033[1;32m'
COLOR='\033[1;33m'
RESET='\033[0m'

if [[ "$arg" -ge 0 && "$arg" -le 14 ]]; then
    echo "enter this:";echo -ne "${COLOR}            "
    case $arg in
        0) echo "level00" ;;
        1) echo "x24ti5gi3x0ol2eh4esiuxias" ;;
        2) echo "f2av5il02puano7naaf6adaaf" ;;
        3) echo "kooda2puivaav1idi4f57q8iq" ;;
        4) echo "qi0maab88jeaj46qoumi7maus" ;;
        5) echo "ne2searoevaevoem4ov4ar8ap" ;;
        6) echo "viuaaale9huek52boumoomioc" ;;
        7) echo "wiok45aaoguiboiki2tuin6ub" ;;
        8) echo "fiumuikeil55xe9cu4dood66h" ;;
        9) echo "25749xKZ8L7DkSCwJkT9dyv6f" ;;
        10) echo "s5cAJpM8ev6XHw998pRWG728z" ;;
        11) echo "feulo4b72j7edeahuete3no7c" ;;
        12) echo "fa6v5ateaw21peobuub8ipe6s" ;;
        13) echo "g1qKMiRpXf53AWhDaU7FEkczr" ;;
    esac
    echo -e "${RESET}"
    # if [[ "$arg" -eq 0 ]]; then
    #     lv="level00"
    if [[ "$arg" -lt 10 ]]; then
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
