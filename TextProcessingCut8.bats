#!/usr/bin/env bash

@test "Text Processing cut 8 base test case" {
    run sh TextProcessingCut8.sh "TextProcessingCut8TestFile.txt"
    expectedOutput="New York is
New York is
New York is
About one third
Henry Hudson's 1609
"
    printf "Expected output :\n${expectedOutput}"
    printf "Actual output :\n${output}"
    diff <(echo ${expectedOutput}) <(echo ${output})
    DIFF=$?
    [ $status -eq 0 ]
    [ $DIFF -eq 0 ]
}