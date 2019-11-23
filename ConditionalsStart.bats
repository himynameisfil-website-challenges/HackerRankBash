#!/usr/bin/env bash

@test "Conditionals Start Case 1: input = y" {
    run sh ConditionalsStart.sh << EOF
    y
EOF
    expectedOutput="YES"
    [ $status -eq 0 ]
    [ $output = ${expectedOutput} ]
}

@test "Conditionals Start Case 2: input = Y" {
    run sh ConditionalsStart.sh << EOF
    Y
EOF
    expectedOutput="YES"
    [ $status -eq 0 ]
    [ $output = ${expectedOutput} ]
}

@test "Conditionals Start Case 3: input = n" {
    run sh ConditionalsStart.sh << EOF
    n
EOF
    expectedOutput="NO"
    [ $status -eq 0 ]
    [ $output = ${expectedOutput} ]
}

@test "Conditionals Start Case 4: input = N" {
    run sh ConditionalsStart.sh << EOF
    N
EOF
    expectedOutput="NO"
    [ $status -eq 0 ]
    [ $output = ${expectedOutput} ]
}