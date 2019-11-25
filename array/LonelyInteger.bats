#!/usr/bin/env bash

@test "Lonely Integer : Case 1" {
    run sh ./array/LonelyInteger.sh << EOF
    1
    1
EOF
    expectedOutput="1"

    printf "\n*** Expected output : \n${expectedOutput}"
    printf "\n*** Actual output : \n${output}"

    [ $status -eq 0 ]
    [ "${output}" = "${expectedOutput}" ]

}

@test "Lonely Integer : Case 2" {
    run sh ./array/LonelyInteger.sh << EOF
    3
    1 1 2
EOF
    expectedOutput="2"

    printf "\n*** Expected output : \n${expectedOutput}"
    printf "\n*** Actual output : \n${output}"

    [ $status -eq 0 ]
    [ "${output}" = "${expectedOutput}" ]

}

@test "Lonely Integer : Case 3" {
    run sh ./array/LonelyInteger.sh << EOF
    5
    0 0 1 2 1
EOF
    expectedOutput="2"

    printf "\n*** Expected output : \n${expectedOutput}"
    printf "\n*** Actual output : \n${output}"

    [ $status -eq 0 ]
    [ "${output}" = "${expectedOutput}" ]

}