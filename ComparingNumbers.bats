#!/usr/bin/env bash

@test "Comparing Numbers case 1: x=5, y=2" {
    run sh ComparingNumbers.sh << EOF
    5
    2
EOF
    expectedOutput="X is greater than Y"
    [ "${status}" -eq 0 ]
    [ "$output" = "${expectedOutput}" ]
}

@test "Comparing Numbers case 2: x=2, y=2" {
    run sh ComparingNumbers.sh << EOF
    2
    2
EOF
    expectedOutput="X is equal to Y"
    [ "${status}" -eq 0 ]
    [ "$output" = "${expectedOutput}" ]
}

@test "Comparing Numbers case 3: x=2, y=3" {
    run sh ComparingNumbers.sh << EOF
    2
    3
EOF
    expectedOutput="X is less than Y"
    [ "${status}" -eq 0 ]
    [ "$output" = "${expectedOutput}" ]
}