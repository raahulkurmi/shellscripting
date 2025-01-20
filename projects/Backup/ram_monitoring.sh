#!/bin/bash
freespace=$(free -mt | grep total | awk '{print $4}')
th=500
if [[ $freespace -lt $th ]]
then
    echo "Warning,Ram is running low"
else 
    echo "Ram is sufficent $freespace "
fi
