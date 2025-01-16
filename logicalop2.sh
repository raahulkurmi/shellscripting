#!/bin/bash
#logical operator
read -p "what is your age " age
read -p "what is your citizenship " country
if [[ $age -ge 18 && $country == "india" ]]
then
echo "you can vote"
else 
echo "you cant vote"
fi
