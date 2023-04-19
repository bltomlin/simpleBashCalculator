#!/usr/bin/env bash

echo "Enter an arithmetic operation:"
read input
re='^[-0-9 ]+ [-,+,*,/] [-0-9]+$'
if [[ $input =~ $re ]]; then
    echo "Operation check passed!"
else
    echo "Operation check failed!"
fi
