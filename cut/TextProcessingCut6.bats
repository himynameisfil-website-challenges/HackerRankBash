#!/usr/bin/env bash

@test "Text Processing Cut 6 : Given Sample" {
    run sh ./cut/TextProcessingCut6.sh "./cut/TextProcessingCut6SampleInput.txt"

    expectedOutput="""a state in the Northeastern and Mid-Atlantic regions of the United States.
the 27th-most extensive, the third-most populous populated of the 50 United States.
bordered by New Jersey and Pennsylvania to the south.
ird of all the battles of the Revolutionary War took place in New York.
's 1609 voyage marked the beginning of European involvement with the area."""

    echo "Printing the expected output : ${expectedOutput}"
    echo "Printing the actual output: ${output}"

    diff <(echo "${expectedOutput}") <(echo "${output}")

    [ $status -eq 0 ]
    [ "$output" = "${expectedOutput}" ]
}