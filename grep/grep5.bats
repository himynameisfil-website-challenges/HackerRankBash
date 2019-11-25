#!/usr/bin/env bash


@test "Grep 5 : Base case" {
    run sh ./grep/grep5.sh ./grep/grep5.txt
    expectedOutput="1234 5678 9101 1234
2999 5178 9101 2234
9999 5628 9201 1232"

    printf "\n*** Expected output : \n${expectedOutput}"
    printf "\n*** Actual output : \n${output}"

    [ $status -eq 0 ]
    [ "${output}" = "${expectedOutput}" ]

}