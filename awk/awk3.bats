#!/usr/bin/env bash

@test "awk 3" {
    run sh ./awk/awk3.sh << EOF
A 25 27 50
B 35 37 75
C 75 78 80
D 99 88 76
EOF
    expectedOutput="A 25 27 50 : FAIL
B 35 37 75 : FAIL
C 75 78 80 : B
D 99 88 76 : A"

    printf "\n*** Expected output : \n${expectedOutput}"
    printf "\n*** Actual output : \n${output}"

    [ $status -eq 0 ]
    [ "${output}" = "${expectedOutput}" ]

}