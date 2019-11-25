#!/usr/bin/env bash


read N
read line2
arrayOfInterest=($line2)
arrayOfInterest2=($(echo ${arrayOfInterest[*]} | tr " " "\n" |sort -n))

#sortedArrayNewLine=$(printf '%s\n' ${arrayOfInterest2[@]})
printf '%s\n' ${arrayOfInterest2[@]} | uniq -u


