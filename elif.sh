#!/bin/bash
read -p "enter your mark" marks
if [[ $marks -gt 80 ]]
then 
    echo "first class distinction"
elif [[ $marks -gt 60 && $marks  -le 79 ]]
then
     echo "second class"
else
     echo "fail"
fi
