#!/usr/bin/env bash

@test "Paste 1 test : Base Case" {
    run sh ./paste/paste1.sh "./paste/paste1.txt"
    expectedOuput="Albany, N.Y.;Albuquerque, N.M.;Anchorage, Alaska;Asheville, N.C.;Atlanta, Ga.;Atlantic City, N.J.;Austin, Texas;Baltimore, Md.;Baton Rouge, La.;Billings, Mont.;Birmingham, Ala.;Bismarck, N.D.;Boise, Idaho;Boston, Mass.;Bridgeport, Conn."
    printf "\n*** Expected output : \n${expectedOuput}"
    printf "\n*** Actual output : \n${output}"

    [ $status -eq 0 ]
    [ "${output}" = "${expectedOuput}" ]
}