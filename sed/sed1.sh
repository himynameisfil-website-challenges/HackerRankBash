#!/usr/bin/env bash

inputFile=$1

sed 's/\bthe\b/this/1' ${inputFile}