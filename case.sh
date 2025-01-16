#!/bin/bash
echo "a to print date"
echo "b to print ls"
echo "c to print pwd"

read choice 
case $choice in
             a)date;;
             b)ls;;
             c)pwd;;
             *)echo "wrong choice"
esac
