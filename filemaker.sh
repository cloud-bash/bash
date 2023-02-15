#!/bin/bash

#makes number of directories use inputs as an argument
#if range of directories (1-quantity) is missing any numbers, remake them
#repeating the script run with the same quantity each time will only create quantity maximum
#for more directories increase the quantity

#script use: ./filemaker.sh [number of files to make] [name of files]
#example: ./filemaker 10 test
#makes file1, file2...file10

quantity=$1
name=$2

for i in $(seq 1 "$quantity"); do
  if [[ -e "$name""$i" || -e "$name""$i" ]]; then
    if [[ $i -lt 10 ]]; then
      echo "$name""$i"" already exists"
    else
      echo "$name""$i"" already exists"
    fi
  else
    if [[ $i -lt 10 ]]; then
      touch "$name""$i"
    else
      touch "$name""$i"
    fi
  fi
done
