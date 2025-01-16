#!/bin/bash
read -p "enter your mark:\n" marks
if [[ $mark -gt 40 ]]
then 
      echo "you are pass"
else 
      echo "you are fail"
fi
