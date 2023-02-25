#!/bin/bash

words=( $(cat words.txt) )

declare -A frequency

for w in "${words[@]}"
do
  echo "$w"
  ((frequency[$w]++))
done

for w in "${!frequency[@]}"
do
  echo "$w ${frequency[$w]}"
done | sort -rn -k2
