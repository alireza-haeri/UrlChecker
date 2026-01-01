#!/usr/bin/env bash
log "-i" "Starting test..."
declare -A result

for ((i=1; i<="$2";i++))
  do
    code=$(curl "${1}" -s -w "%{http_code}" -o /dev/null)
    ((result["$code"]++))
  done
  
. "$(dirname "${BASH_SOURCE[0]}")/writer.sh"

log "-i" "Ending test..."