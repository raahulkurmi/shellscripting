#!/bin/bash
#root usercheck
if [[ $uid -eq 0 ]]
then 
    echo "user is root"
else 
   echo "user is not root"
fi

