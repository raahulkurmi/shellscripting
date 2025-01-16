#!/bin/bash
read -p "enter the age : " age
[[ $age -ge 18 ]] && echo "Adult" || echo "Minor"
