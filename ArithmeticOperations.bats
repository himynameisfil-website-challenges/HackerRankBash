#!/usr/bin/env bash

@test "Arithmetic Operations case 1: 5+50*3/20 + (19*2)/7" {
    run sh ArithmeticOperations.sh << EOF
    5+50*3/20 + (19*2)/7
EOF
    expectedOutput="17.929"
    echo "Actual Output : ${output}"
    echo "Expected Output: ${expectedOutput}"
    [ "${status}" -eq 0 ]
    [ "$output" = "${expectedOutput}" ]
}

@test "Arithmetic Operations case 2: -105+50*3/20 + (19^2)/7" {
    run sh ArithmeticOperations.sh << EOF
    -105+50*3/20 + (19^2)/7
EOF
    expectedOutput="-45.929"
    echo "Actual Output : ${output}"
    echo "Expected Output: ${expectedOutput}"
    [ "${status}" -eq 0 ]
    [ "$output" = "${expectedOutput}" ]
}

@test "Arithmetic Operations case 3: (-105.5*7+50*3)/20 + (19^2)/7" {
    run sh ArithmeticOperations.sh << EOF
    (-105.5*7+50*3)/20 + (19^2)/7
EOF
    expectedOutput="22.146"
    echo "Actual Output : ${output}"
    echo "Expected Output: ${expectedOutput}"
    [ "${status}" -eq 0 ]
    [ "$output" = "${expectedOutput}" ]
}