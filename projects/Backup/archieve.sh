#!/bin/bash
<< comment
in the given directory ,if you find file size more than 
particular size or older than give day move them to archieve
comment

#variables
Base=/Users/rahulchaudhary/Desktop/mm
#path needed to be archived
Days=10
DEPTH=1
RUN=0

#check if the directory is present or not 
if [[ ! -d Base ]]
then 
   echo "directory is not present : $Base"
         exit 1
fi

#create archieve directory if not present 
if [[ ! -d $Base/archieve
then 
   mkdir $Base/archieve
fi
 

#find the file larger than 20 mb
for i in 'find $base -maxdepth $DEPTH -type f -size +20M'
do
     if [[ $RUN -eq 0 ]]
     do
          echo "[ $(date "+%Y-%m-%d %H:%M:%S") ] archiving $i ==> $Base/archieve" 
          gzip $i || exit 1
          mv $i.gz $base/archieve || exit 1
     fi 
done
 

