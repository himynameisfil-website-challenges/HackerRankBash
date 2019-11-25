#!/usr/bin/env bash


@test "Text Processing Cut 3 : Scenario Initial case" {
    run sh TextProcessingCut3.sh << EOF
    Hello
    World
    how are you
EOF
    expectedOutput="""ello
orld
ow are"""
    echo "Printing the Expected Output: ${expectedOutput}"
    echo "Printing the Actual Output: ${output}"

    [ $status -eq 0 ]
    [ "$output" = "$expectedOutput" ]
}