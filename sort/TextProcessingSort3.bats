#!/usr/bin/env bash

@test "Text Processing Sort 3" {
    run sh ./sort/TextProcessingSort3.sh "./sort/TextProcessingSort3.text"

    expectedOutput="2
2.1
2.2
2.3
4
4.5
4.6
4.7
9.1
9.2
9.3
42.7
43.5
43.7
44.6
46.6
47.4
55.6
62.1
66.6"
    printf "*** Expected output : \n${expectedOutput}"
    printf "*** Actual output : \n${output}"
    diff <(printf "${expectedOutput}") <(printft "${output}") | cat -t

    [ $status -eq 0 ]
    [ "${output}" = "${expectedOutput}" ]
}