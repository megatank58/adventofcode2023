#!/bin/sh

day=$1
part=$2

RED="\e[91m"
GREEN="\e[92m"
CYAN="\e[96m"
BOLD="\e[1m"
FAINT="\e[2m"
NORMAL="\e[0m"

echo "${CYAN}${BOLD}AOC2023:${NORMAL} initialising"

if [ -z "${day}" ]; then 
    echo "${RED}${BOLD}AOC2023:${NORMAL} day must be specified\n\t Usage: run.sh [day](double-digits) [part](single-digits)"
    exit 1
fi

if [ -z "${part}" ]; then 
    echo "${RED}${BOLD}AOC2023:${NORMAL} part must be specified\n\t Usage: run.sh [day](double-digits) [part](single-digits)"
    exit 1
fi

echo "${FAINT}---------------------${NORMAL}"

ruby "src/day${day}/part${part}.rb" < "src/day${day}/input.txt"

if [ $? -ne 0 ]; then
    echo "${FAINT}---------------------${NORMAL}"
    echo "${RED}${BOLD}AOC2023:${NORMAL} error in middle of execution"
    exit 1
fi

echo "${FAINT}---------------------${NORMAL}"

echo "${GREEN}${BOLD}AOC2023:${NORMAL} finished"