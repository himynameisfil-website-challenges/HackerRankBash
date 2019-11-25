#!/usr/bin/env bash



@test "Sed 4 Base case:" {
    run sh ./sed/sed4.sh << EOF
1234 5678 9101 1234
2999 5178 9101 2234
9999 5628 9201 1232
8888 3678 9101 1232
EOF
    expectedOutput="**** **** **** 1234
**** **** **** 2234
**** **** **** 1232
**** **** **** 1232"
    printf "\n***Expected output :\n${expectedOutput}"
    printf "\n***Actual output :\n${output}" |cat -t
    [ $status -eq 0 ]
    [ "${output}" = "${expectedOutput}" ]
}