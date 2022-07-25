#!/bin/bash

user=`whoami`
current=`ls -1 | wc -l`
numfiles=25
goal=$(($current+$numfiles))

filenamearray=`ls -1 | grep -P "${user}[0-9]+"`
filenamecount=`ls -1 | grep -P "${user}[0-9]+" | wc -l`
filenumberarray=()

# echo $filenamearray

echo $filenamecount

#echo ${#filenamearray[@]}


# for i in ${filenamearray[@]}; do
#   [[ "$i" =~ (${user})([0-9]+) ]]
#   # echo "${BASH_REMATCH[2]}"
#   filenumberarray+=(${BASH_REMATCH[2]})
# done

# echo $filenumberarray

# max=${ar[0]}
# for n in "${ar[@]}" ; do
#     ((n > max)) && max=$n
# done
# echo $max

# if (( $current < 10 )); then
#   until (( $current == 10 )); do
#   mkdir "${user}0${current}"
#   ((current=current+1))
#   done
# fi

# while (( $current != $goal )); do
#   # echo "${user}${current}"
#   mkdir "${user}${current}"
#   ((current=current+1))
# done
