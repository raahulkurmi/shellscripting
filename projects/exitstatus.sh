#!/bin/bash
read -p "enter the website " site
ping -c 1 $site

if [[ $? -eq 0 ]]
then 
    echo "connection succesfull"
else
   echo "connection failed"
fi
