#!/usr/bin/env bash

@test "awk 3" {
    run sh ./awk/awk4.sh << EOF
A 25 27 50
B 35 37 75
C 75 78 80
D 99 88 76
EOF
    expectedOutput="A 25 27 50;B 35 37 75
C 75 78 80;D 99 88 76"

    printf "\n*** Expected output : \n${expectedOutput}"
    printf "\n*** Actual output : \n${output}"
    diff <(printf ${output}) <(printf ${expectedOutput}) | cat -t
    [ $status -eq 0 ]
    [ "${output}" = "${expectedOutput}" ]

}