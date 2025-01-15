#!/bin/bash
#updating the value of arr
myarr=(1,2,3,4,5,6)
echo ${myarr[*]}
myarr+=(7,8,9)
echo ${myarr[*]}
