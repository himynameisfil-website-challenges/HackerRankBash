#!/usr/bin/env bash


@test "World Of Numbers Acceptance Test Base case" {
    run sh WorldOfNumbers.sh << EOF
    5
    2
EOF
    echo "${output}"
    expectedOutput=$'7\n3\n10\n2'
    echo "Printing the expected output: ${expectedOutput}"

    [ "${status}" -eq 0 ]
    [ "$output" = "${expectedOutput}" ]
}

@test "World Of Numbers Acceptance Unit Test Adding " {
    source WorldOfNumbersUtil.sh
    run f_add 5 2
    expectedOutput="7"
    [ "${status}" -eq 0 ]
    [ "$output" = "${expectedOutput}" ]
}

@test "World Of Numbers Acceptance Unit Test Subtracting" {
    source WorldOfNumbersUtil.sh
    run f_subtract 5 2
    expectedOutput="3"
    [ "${status}" -eq 0 ]
    [ "$output" = "${expectedOutput}" ]
}


@test "World Of Numbers Acceptance Unit Test Multiplying" {
    source WorldOfNumbersUtil.sh
    run f_multiply 5 2
    expectedOutput="10"
    [ "${status}" -eq 0 ]
    [ "$output" = "${expectedOutput}" ]
}


@test "World Of Numbers Acceptance Unit Test Dividing" {
    source WorldOfNumbersUtil.sh
    run f_divide 5 2
    expectedOutput="2"
    [ "${status}" -eq 0 ]
    [ "$output" = "${expectedOutput}" ]
}

