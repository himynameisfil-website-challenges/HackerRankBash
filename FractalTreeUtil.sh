#!/usr/bin/env bash


f_initializeFirstLine() {
    echo "_________________________________________________1__________________________________________________"
}

f_splitNextLine() {
    previousLine=$1
    newLineAsArray=()
    newLine=""
    previousCharIs1=false
    for ((i = 0; i < ${#previousLine}; i++)); do
        if [ "${previousCharIs1}" = "true" ]; then
            newLineAsArray+=("1");
            previousCharIs1=false;
        elif [ "${previousLine:i:1}" = "1" ]; then
#            echo "1 identified at ${i}"
#            echo "printing the size of the new line array: ${#newLineAsArray}"
            newLineAsArray[-1]="1";
            newLineAsArray+=("_");
            previousCharIs1=true;
        else
#            echo "_ identified at ${i}"
            newLineAsArray+=("_")
        fi
    done

    for character in "${newLineAsArray[@]}"; do
#        echo "Adding the character ${character}"
        newLine+="${character}"
    done

    echo "${newLine}"
}

f_printStraightUp() {
    previousLine=$1
    echo "${previousLine}"
}

f_printDiagonal() {
    previousLine=$1
        newLineAsArray=()
    newLine=""
    shouldPrintLeft=true
    nextChar1=false
    for ((i = 0; i < ${#previousLine}; i++)); do
        if [ ${nextChar1} = true ]; then
            newLineAsArray+=("1");
            nextChar1=false;
        elif [ "${previousLine:i:1}" = "1" ]; then
#            echo "1 identified at ${i}"
#            echo "printing the size of the new line array: ${#newLineAsArray}"
            if [ ${shouldPrintLeft} = true ]; then
                newLineAsArray[-1]="1";
                shouldPrintLeft=false
            else
                nextChar1=true
                shouldPrintLeft=true
            fi
            newLineAsArray+=("_");
            previousCharIs1=true;
        else
#            echo "_ identified at ${i}"
            newLineAsArray+=("_")
        fi
    done

    for character in "${newLineAsArray[@]}"; do
#        echo "Adding the character ${character}"
        newLine+="${character}"
    done

    echo "${newLine}"
}