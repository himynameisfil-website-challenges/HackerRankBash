#!/usr/bin/env bash

read integerCount
sum=0

for ((i=0;i<$integerCount;i++)); do
    read nextNumber
    #echo "Printing the next Number: ${nextNumber}"
    sum=$(($nextNumber + $sum))
    #echo "Printing the Sum : ${sum}"
done

preround=$(echo "scale=10; $sum / $integerCount" | bc -l)
printf %.3f ${preround}