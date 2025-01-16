#!/bin/bash
#or operator
read -p "enter the age : " age
read -p "enter the country : " country
if [[ $age -ge 18 ]] || [[ $country == india ]]
then 
echo "you can vote"
else
echo "you cant vote"
fi
