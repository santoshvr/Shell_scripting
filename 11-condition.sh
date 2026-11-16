#!/bin/bash

echo " check the user id"
userid=$(id -u)
echo " User id is ${userid}"
if [ $userid -ne 0 ]; then
    echo " Run the script with Sudo access...."
    # exit 1
else
    echo " User is a sudo user , user id is ${userid}"
fi

echo " procedding to install other packages"
install_package ngnix 
install_package mysql 
# echo "installing ngnix package"
# dnf install nginx -y
# echo " Check the  completion status check"
# if [ $? -ne 0 ]; then
#     echo " command failed to install "
#     exit 1
# else
#     echo " The command return status is $?"
# fi

# echo "installing mysql package"
# dnf install mysql -y
# echo " Check the  completion status check"


func install_package()
{
    echo " Install the package : $1"
    dnf install $1 -y
    echo " check if package $1 is installed "
    if [ $? -ne 0 ]; then
    echo " command failed to install $1 "
    exit 1
    else
        echo " The $1 package installed successfully"
    fi

}