#!/usr/bin/env bash

awk '{
    if (NR % 2 == 1) {
        printf $0";"
    } else {
        printf $0"\n"
    }
}'