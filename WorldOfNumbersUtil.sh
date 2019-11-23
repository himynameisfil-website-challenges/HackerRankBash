#!/usr/bin/env bash

f_add() {
    echo $((${1} + ${2}))
}

f_subtract() {
    echo $((${1} - ${2}))
}

f_multiply() {
    echo $((${1} * ${2}))
}

f_divide() {
    echo $((${1} / ${2}))
}