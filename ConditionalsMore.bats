#!/usr/bin/env bash

@test "Conditions More : Scalene Triangle " {
    run sh ConditionalsMore.sh << EOF
    2
    3
    4
EOF
    expectedOutput="SCALENE"
    [ $status -eq 0 ]
    [ $output = $expectedOutput ]
}

@test "Conditions More : Equilateral Triangle " {
    run sh ConditionalsMore.sh << EOF
    6
    6
    6
EOF
    expectedOutput="EQUILATERAL"
    [ $status -eq 0 ]
    [ $output = $expectedOutput ]
}

@test "Conditions More : Isosolese Triangle " {
    run sh ConditionalsMore.sh << EOF
    5
    3
    5
EOF
    expectedOutput="ISOSCELES"
    [ $status -eq 0 ]
    [ $output = $expectedOutput ]
}