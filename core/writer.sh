#!/usr/bin/env bash

for code in "${!result[@]}"
  do
    echo "$code => ${result[$code]}"
  done