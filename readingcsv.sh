#!/bin/bash
while IFS="," id name age
do 
    echo "ID is $id"
    echo "Name is $name"
    echo "Age is $age"
done < test.csv

