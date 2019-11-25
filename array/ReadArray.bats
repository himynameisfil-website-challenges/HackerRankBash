#!/usr/bin/env bash

@test "Read an array " {
    run sh ./array/ReadArray.sh << EOF
Namibia
Nauru
Nepal
Netherlands
NewZealand
Nicaragua
Niger
Nigeria
NorthKorea
Norway
EOF
    expectedOuput="Namibia Nauru Nepal Netherlands NewZealand Nicaragua Niger Nigeria NorthKorea Norway"

    printf "\n*** Expected output : \n${expectedOuput}"
    printf "\n*** Actual output : \n${output}"

    [ $status -eq 0 ]
    [ "${output}" = "${expectedOuput}" ]

}