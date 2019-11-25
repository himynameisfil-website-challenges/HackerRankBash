#!/usr/bin/env bash

while read line; do
    echo $line | cut -c-4
done
