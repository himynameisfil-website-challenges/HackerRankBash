#!/usr/bin/env bash

@test "awk 2" {
    run sh ./awk/awk2.sh << EOF
A 25 27 50
B 35 37 75
C 75 78 80
D 99 88 76
EOF
    expectedOutput="A : Fail
B : Fail
C : Pass
D : Pass"

    printf "\n*** Expected output : \n${expectedOutput}"
    printf "\n*** Actual output : \n${output}"

    [ $status -eq 0 ]
    [ "${output}" = "${expectedOutput}" ]

}