#!/usr/bin/env bash

read x
read y
read z

if [ $x -eq $y ] && [ $y -eq $z ]; then
    echo "EQUILATERAL"
elif [ ! $x -eq $y ] && [ ! $y -eq $z ] && [ ! $x -eq $z ]; then
    echo "SCALENE"
else
    echo "ISOSCELES"
fi