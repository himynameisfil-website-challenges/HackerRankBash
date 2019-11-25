#!/usr/bin/env bash

inputFile=$1

uniq -c $inputFile | cut -b7-