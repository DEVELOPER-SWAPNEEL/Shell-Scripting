# 1. Write a shell script to reverse a given integer.

#!/bin/bash

echo "Enter an integer:"
read number

reverse=0
while [ $number -ne 0 ]; do
    reverse=$((reverse * 10 + number % 10))
    number=$((number / 10))
done

echo "Reversed integer: $reverse"
