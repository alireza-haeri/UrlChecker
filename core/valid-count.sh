#!/urs/bin/env bash

check-valid-count() {
  local count=$1
  
  if (("$count" < 1 || "$count" > 1000))
  then
    log "-e" "Count is not valid!"
    exit 1;
  fi
}