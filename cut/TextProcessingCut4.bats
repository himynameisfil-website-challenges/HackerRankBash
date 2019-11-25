#!/usr/bin/env bash

@test "Text Processing Cut 4 : Scenario Initial case" {
    run sh ./cut/TextProcessingCut4.sh << EOF
    Hello
    World
    how are you
EOF
    expectedOutput="""Hell
Worl
how """
    echo "Printing the Expected Output: ${expectedOutput}"
    echo "Printing the Actual Output: ${output}"

    [ $status -eq 0 ]
    [ "$output" = "$expectedOutput" ]
}