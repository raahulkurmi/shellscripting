#!/bin/bash
#script should be executed with sudo/root users

if [[ "${UID}" -ne 0 ]]
then 
    echo "please run with sudo/root access"
    exit 1
fi

#user should provide atleast one argument as username else guide him

if [[ ${#} -lt 1 ]]
then 
     echo "usage : ${0} USER_NAME [COMMENT]"
     echo "create a user with user_name and comment field of comment"
     exit 1
fi
#store first argument as username
User_name="{1}"



#incase of more than one argument,store it as comments
shift
comment="${@}"



#create password
password=$(date+%s%N)
echo $password


#create user
useradd -c $comment -m $User_name


#check if the user is successfully created or not
if [[ $? -ne 0 ]]
then 
    echo "user has been succesfully created "
    exit 1
fi


#set the password for the user
passwd $password $User_name


#check if the password is successfully set or not
passwd -e $User_name


#display the username,password host where is is created
 echo "username $user_name"
 echo "password $password"
 echo  $(hostname)





