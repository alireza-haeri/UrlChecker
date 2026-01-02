#!/usr/bin/env bash

RED='\e[31m'
YELLOW='\e[33m'
CYAN='\e[36m'
NC='\e[0m'

log(){
   case "$1" in
      "-i") echo -e "${CYAN}[info] ${2}${NC}";;
      "-w") echo -e "${YELLOW}[warn] ${2}${NC}";;
      "-e") echo -e "${RED}[err] ${2}${NC}";;
      *) echo "log is: ${1}"
   esac
}
