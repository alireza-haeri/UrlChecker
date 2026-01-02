#!/usr/bin/env bash

# Read temp file
result=$(sort "$dataDirName/result" | uniq -c)

# Process result
echo "$result" | awk '{
txt = $1
count = $2
print txt " => " count
}'