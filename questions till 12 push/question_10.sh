# 2. Write a shell script to verify whether the given string is a palindrome or not.
#!/bin/bash

echo "Enter a string:"
read string

if [ "$string" == "$(echo $string | rev)" ]; then
    echo "The string is a palindrome."
else
    echo "The string is not a palindrome."
fi