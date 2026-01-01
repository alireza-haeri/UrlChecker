#!/urs/bin/env bash

check-valid-url() {
  local url=$1
  
  if [[ "$url" =~ ^https?://([^/]+) ]]; then
      log "-i" "valid url: $url"
  else
      log "-e" "Url is not valid!"
      exit 1;
  fi
}