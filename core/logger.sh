#!/usr/bin/env bash

log(){
   case "$1" in
      "-i") echo "[info] ${2}";;
      "-w") echo "[warn] ${2}";;
      "-e") echo "[err] ${2}";;
      *) echo "log is: ${1}"
   esac
}