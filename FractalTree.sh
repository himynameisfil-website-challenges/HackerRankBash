#!/usr/bin/env bash

source ./FractalTreeUtil.sh

lineOfInterest=$(f_initializeFirstLine)
linesArr=(${lineOfInterest})
fractalSize=16
counter=0
printDiagonal=false

read fractalIterationCount

while [ $counter -lt $fractalIterationCount ]; do
    for ((i=0;i<fractalSize;i++)); do
        lineOfInterest=$(f_printStraightUp $lineOfInterest)
        linesArr+=($lineOfInterest)
    done
    lineOfInterest=$(f_splitNextLine $lineOfInterest)
    linesArr+=($lineOfInterest)

    for ((i=0;i<fractalSize-1;i++)); do
        lineOfInterest=$(f_printDiagonal $lineOfInterest)
        linesArr+=($lineOfInterest)
    done

    fractalSize=$((${fractalSize} / 2))
    counter=$(($counter + 1))
done
emptyLinePrinterCount=$(echo "(2 ^ (6 - ${fractalIterationCount})) - 1"| bc -l)
for ((i=0; i< $emptyLinePrinterCount; i++)); do
    echo "____________________________________________________________________________________________________"
done

for ((i = ${#linesArr[@]}-1 ; i >0 ; i--)); do
    echo "${linesArr[i]}";
done

