#!/usr/bin/env bash

awk '{
    sum=$2 + $3 + $4
    average= sum / 3
    if (average >= 80) {
        letterGrade="A"
    } else if (average >= 60) {
        letterGrade="B"
    } else if (average >= 50) {
        letterGrade="C"
    } else {
        letterGrade="FAIL"
    }
    print $1,$2,$3,$4" :",letterGrade
}'