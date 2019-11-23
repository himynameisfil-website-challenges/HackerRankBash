#!/usr/bin/env bash
read x
read y

if [ $x -gt $y ]; then
    compareDescription="is greater than"
elif [ $x -eq $y ]; then
    compareDescription="is equal to"
else
    compareDescription="is less than"
fi

echo "X ${compareDescription} Y"