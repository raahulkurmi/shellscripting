file -$#!/bin/bash
echo "the first argument is $1"
echo "the second argument is $2"
echo "all the argument are - $@"
echo "number of argument are - $#"


#for loop to acces the value from the argument
for filename in $@
do 
 echo "copying file -$filename"
done

