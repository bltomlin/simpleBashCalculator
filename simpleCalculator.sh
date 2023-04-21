#!/usr/bin/env bash

echo "Enter an arithmetic operation:"
read input
re='^[-0-9\.]+ [-,+,*,/,^] [-0-9\.]+$'
if [[ $input =~ $re ]]; then
    arithmetic_result=$(echo "scale=2; $input" | bc -l)
    printf "%s\n" "$arithmetic_result"
else
    echo "Operation check failed!"
fi
