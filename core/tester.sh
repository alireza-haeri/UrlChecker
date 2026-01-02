#!/usr/bin/env bash
log "-i" "Starting test..."

# Tester function
send_request() {
  code=$(curl "${1}" -s -w "%{http_code}" -o /dev/null -L)
  echo "$code" >> "$dataDirName/result"
}

# Run tester
for ((i=1; i<="$2";i++))
  do
    send_request "$url" &
  done
  
# Wait for requests
wait

cat "$dataDirName/result"
  
log "-w" "write"
  
# Write result
. "$(dirname "${BASH_SOURCE[0]}")/writer.sh"

# Remove temp file
rm -f "$dataDirName/result"

log "-i" "Ending test..."



