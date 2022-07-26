#!/bin/bash

user=`whoami`
current=`ls -1 | grep -P "$user" | wc -l`
numfiles=25
goal=$(($current+$numfiles))

filenamearray=`ls -1 | grep -P "${user}[0-9]+"`
#echo $filenamearray
filenamecount=`ls -1 | grep -P "${user}[0-9]+" | wc -l`
echo $filenamecount
filenumberarray=()

#echo ${#filenamearray[@]}

counter=00

for i in ${filenamearray[@]}; do
  echo $i
  [[ "$i" =~ (${user})([0-9]+) ]] #regex sorting for user and index
  if (( ${BASH_REMATCH[2]#0} == $counter )); then # the #0 forces decimal interpretation instead of octal
    ((counter=counter+1))
  echo $counter
  else
    echo "bash_rematch2 does not equal counter"
    mkdir "${user}0${counter}"
  fi
  filenumberarray+=(${BASH_REMATCH[2]}) #adds the index to the filenumberarray
done

echo ${filenumberarray[@]}



# max=${filenumberarray[0]}
# for n in "${filenumberarray[@]}" ; do
#     ((n > max)) && max=$n
# done
# echo $max

if (( $current < 10 )); then
  until (( $current == 10 )); do
  mkdir "${user}0${current}"
  ((current=current+1))
  done
fi

# while (( $current != $goal )); do
#   # echo "${user}${current}"
#   mkdir "${user}${current}"
#   ((current=current+1))
# done
