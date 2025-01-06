#!/bin/bash

# This script attempts to find the largest number in an array but contains a subtle bug.

array=(10 5 20 15 30)

largest=${array[0]}

for i in "${array[@]}"; do
  if [ "$i" -gt "$largest" ]; then
    largest="$i"
  fi
 done

echo "Largest number: $largest"