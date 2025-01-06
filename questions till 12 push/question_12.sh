# 4. Write a shell program which takes maximum 8 integer type arguments through
# command line and do the following operation:
# i. If the first argument/last result (a) is divisible by send argument (b) then new
# result=a/b
# ii. Else If (a%b != 0) and b is divisible by 5 then new result=a*b
# iii. Else if (a>b) then new result=a-b
# iv. Else new result=a+b

#!/bin/bash

if [ $# -gt 8 ]; then
    echo "Error: Provide a maximum of 8 integer arguments."
    exit 1
fi

a=$1
b=$2

if (( a % b == 0 )); then
    result=$(( a / b ))
elif (( a % b != 0 && b % 5 == 0 )); then
    result=$(( a * b ))
elif (( a > b )); then
    result=$(( a - b ))
else
    result=$(( a + b ))
fi

echo "New result: $result"