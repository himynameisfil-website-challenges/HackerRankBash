#!/usr/bin/env bash


arrayOfInterest=()
while read line; do
    arrayOfInterest+=("${line}")
done

echo ${arrayOfInterest[@]}