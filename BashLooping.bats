#!/usr/bin/env bash

@test "Looping 1 - 99 basic test" {
    run sh BashLooping.sh
    echo "${output}"

    [ "${status}" -eq 0 ]
    #[ "$output" = "99" ]
}