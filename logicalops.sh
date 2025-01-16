#!/bin/bash
#and operator
read -p "what is your age : " age
read -p "what is your citizenship : " country
if [[ $age -ge 18 ]] && [[ $country -eq "india" ]]
then 
    echo "you can vote"
else 
    echo "you can't wait"
fi 
