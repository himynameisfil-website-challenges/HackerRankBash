#!/usr/bin/env bash


@test "Head 1 Sample input test " {
    run sh ./head/head1.sh "./head/head1.test"

    expectedOutput="From fairest creatures we desire increase,
That thereby beauty's rose might never die,
But as the riper should by time decease,
His tender heir might bear his memory:
But thou contracted to thine own bright eyes,
Feed'st thy light's flame with self-substantial fuel,
Making a famine where abundance lies,
Thy self thy foe, to thy sweet self too cruel:
Thou that art now the world's fresh ornament,
And only herald to the gaudy spring,
Within thine own bud buriest thy content,
And tender churl mak'st waste in niggarding:
Pity the world, or else this glutton be,
To eat the world's due, by the grave and thee.
When forty winters shall besiege thy brow,
And dig deep trenches in thy beauty's field,
Thy youth's proud livery so gazed on now,
Will be a tattered weed of small worth held:
Then being asked, where all thy beauty lies,
Where all the treasure of thy lusty days;"

    printf "\n***Expected output :\n${expectedOutput}"
    printf "\n***Actual output :\n${output}" |cat -t
    echo ${expectedOutput} |cat -t
    echo ${output}|cat -t
    [ $status -eq 0 ]
    [ "${output}" = "${expectedOutput}" ]
}