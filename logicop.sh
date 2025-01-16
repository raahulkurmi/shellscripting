#!/bin/bash
# AND operator

read -p "What is your age: " age
read -p "What is your citizenship: " country

# Check if age is 18 or older and citizenship is India
if [[ $age -ge 18 ]] && [[ $country == "india" ]]; then
    echo "You can vote"
else
    echo "You can't vote"
fi

