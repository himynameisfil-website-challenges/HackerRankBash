#!/usr/bin/env bash

@test "Grep 1 : Base case" {
    run sh ./grep/grep1.sh ./grep/grep1.txt
    expectedOutput="But as the riper should by time decease,
Thou that art now the world's fresh ornament,
And only herald to the gaudy spring,
Pity the world, or else this glutton be,
To eat the world's due, by the grave and thee.
Where all the treasure of thy lusty days;"

    printf "\n*** Expected output : \n${expectedOutput}"
    printf "\n*** Actual output : \n${output}"

    [ $status -eq 0 ]
    [ "${output}" = "${expectedOutput}" ]

}