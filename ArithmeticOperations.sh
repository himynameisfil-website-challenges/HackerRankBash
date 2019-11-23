#!/usr/bin/env bash

read input

preround=$(echo "scale=10; ${input}" | bc -l)
printf %.3f ${preround}