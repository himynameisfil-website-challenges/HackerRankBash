#!/usr/bin/env bash

@test "awk 1" {
    run sh ./awk/awk1.sh << EOF
A 25 27 50
B 35 75
C 75 78
D 99 88 76
EOF
    expectedOutput="Not all scores are available for B
Not all scores are available for C"

    printf "\n*** Expected output : \n${expectedOutput}"
    printf "\n*** Actual output : \n${output}"

    [ $status -eq 0 ]
    [ "${output}" = "${expectedOutput}" ]

}