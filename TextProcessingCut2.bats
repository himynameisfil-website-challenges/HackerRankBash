#!/usr/bin/env bash

@test "Text Processing Cut 2 : Scenario Initial case" {
    run sh TextProcessingCut2.sh << EOF
    Hello
    World
    how are you
EOF
    expectedOutput="""e
o
oe"""
    echo "Printing the Expected Output: ${expectedOutput}"
    echo "Printing the Actual Output: ${output}"

    [ $status -eq 0 ]
    [ "$output" = "$expectedOutput" ]
}