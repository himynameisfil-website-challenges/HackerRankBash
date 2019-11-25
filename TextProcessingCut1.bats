#!/usr/bin/env bash

@test "Text Processing Cut 1 : process hello" {
    run sh TextProcessingCut1.sh << EOF
    Hello
EOF
    expectedOutput="l"
    echo "Printing the expected output : ${expectedOutput}"
    echo "Printing the actual Output : ${output}"
    [ $status -eq 0 ]
    [ $output = $expectedOutput ]
}

@test "Text Processing Cut 1 : process World" {
    run sh TextProcessingCut1.sh << EOF
    World
EOF
    expectedOutput="r"
    echo "Printing the expected output : ${expectedOutput}"
    echo "Printing the actual Output : ${output}"
    [ $status -eq 0 ]
    [ $output = $expectedOutput ]
}

@test "Text Processing Cut 1 : process how are you" {
    run sh TextProcessingCut1.sh << EOF
    how are you
EOF
    expectedOutput="w"
    echo "Printing the expected output : ${expectedOutput}"
    echo "Printing the actual Output : ${output}"
    [ $status -eq 0 ]
    [ $output = $expectedOutput ]
}