#!/usr/bin/env bash

touch operation_history.txt

echo "Welcome to the basic calculator!" | tee -a operation_history.txt
echo "Enter an arithmetic operation or type 'quit' to quit:" | tee -a operation_history.txt
read -r input
echo "$input" >> operation_history.txt

while [ "$input" != "quit" ]
do

    re='^[-0-9\.]+ [-,+,*,/,^] [-0-9\.]+$'
    if [[ $input =~ $re ]]; then
        arithmetic_result=$(echo "scale=2; $input" | bc -l)
        printf "%s\n" "$arithmetic_result" | tee -a operation_history.txt
    else
        echo "Operation check failed!" | tee -a operation_history.txt
    fi
    echo "Enter an arithmetic operation or type 'quit' to quit:" | tee -a operation_history.txt
    read -r input
    echo "$input" >> operation_history.txt

done
echo "Goodbye!" | tee -a operation_history.txt
