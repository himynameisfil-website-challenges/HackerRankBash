#!/usr/bin/env bash

@test "Base example average" {
    run sh ComputeAverage.sh << EOF
    4
    1
    2
    9
    8
EOF
    expectedOutput="5.000"
    echo "Printing the Actual output : ${output}"
    echo "Printing the Expected Output : ${expectedOutput}"

    [ $status -eq 0 ]
    [ $output = $expectedOutput ]
}