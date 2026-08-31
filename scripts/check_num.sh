#!/bin/bash

# 1. Check if $1 is empty using -z
if [[ -z "$1" ]]; then
    echo "Error: Please provide a number!"
    exit 1
fi

# 2. Compare the number using integer operators (-gt, -lt, -eq)
if [[ "$1" -gt 0 ]]; then
    echo "$1 is positive"
elif [[ "$1" -lt 0 ]]; then
    echo "$1 is negative"
else
    echo "The number is zero"
fi
