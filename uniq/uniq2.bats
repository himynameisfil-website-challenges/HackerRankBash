#!/usr/bin/env bash

@test "Uniq 2 test: Base case" {
    run sh ./uniq/uniq2.sh "./uniq/uniq2.txt"
    expectedOutput="2 00
2 01
2 00
2 02
1 03
3 aa"
    echo "*** Expected output: ${expectedOutput}"
    echo "*** Actual output: ${output}"
    diff <(echo ${expectedOutput}) <(echo ${output})
    [ $status -eq 0 ]
    [ "${expectedOutput}" = "${output}" ]
}