#!/bin/bash
#how to store the key value pair
declare -A myarray
myarray=( 
          [name]=prasihant 
          [age]=28
          [city]=paris
         )
#echo "the name is${myarray[name]}"
echo "The name is ${myarray[name]}"
