#!/usr/bin/env bash
source ./WorldOfNumbersUtil.sh
read x
read y

echo $(f_add $x $y)
echo $(f_subtract $x $y)
echo $(f_multiply $x $y)
echo $(f_divide $x $y)