#!/bin/bash

#Corrected script to handle negative numbers and leading spaces

array=(10 5 -20 15 30  '  100')

largest=${array[0]}

for i in "${array[@]}"; do
  # Remove leading/trailing spaces and convert to integer for comparison
  num=$(echo "$i" | tr -d '[:space:]')
  if [[ -z "$num" ]]; then
    continue # skip empty strings
  fi
  if (( num > largest )); then
    largest=$num
  fi
 done

echo "Largest number: $largest"