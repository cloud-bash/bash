#!/bin/bash

#makes number of directories use inputs as an argument
#if range of directories (00-quantity) is missing any numbers, remake them
#repeating the script run with the same quantity each time will only create quantity maximum
#for more directories increase the quantity
#only works for 01-99

quantity=$1

for i in $(seq 1 "$quantity"); do
  if [[ -e "$USER""0$i" || -e "$USER""$i" ]]; then
    if [[ $i -lt 10 ]]; then
      echo "$USER""0$i"" already exists"
    else
      echo "$USER""$i"" already exists"
    fi
  else
    if [[ $i -lt 10 ]]; then
      mkdir "$USER""0$i"
    else
      mkdir "$USER""$i"
    fi
  fi
done
