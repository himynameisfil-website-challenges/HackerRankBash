#!/usr/bin/env bash


while read line; do
    firstLetter=$(echo $line | cut -c2)
    secondLetter=$(echo  $line |cut -c7)
    echo "${firstLetter}${secondLetter}"
done