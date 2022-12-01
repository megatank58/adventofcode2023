day=$1
part=$2

RED="\e[91m"
GREEN="\e[92m"
CYAN="\e[96m"
BOLD="\e[1m"
FAINT="\e[2m"
NORMAL="\e[0m"

echo "${CYAN}${BOLD}AOC2022:${NORMAL} Initialising"

if [ -z "${day}" ]; then 
    echo "${RED}${BOLD}AOC2022:${NORMAL} Day must be specified\n\t Usage: run.sh [day](double-digits) [part](single-digits)"
    exit 1
fi

if [ -z "${part}" ]; then 
    echo "${RED}${BOLD}AOC2022:${NORMAL} Part must be specified\n\t Usage: run.sh [day](double-digits) [part](single-digits)"
    exit 1
fi

echo "${FAINT}---------------------${NORMAL}"

ruby "src/day${day}/part${part}.rb" < "src/day${day}/part${part}.txt"

echo "${FAINT}---------------------${NORMAL}"

echo "${GREEN}${BOLD}AOC2022:${NORMAL} Finished"