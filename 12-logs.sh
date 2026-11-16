
#!/bin/bash

log_folder = "/var/log/shell-practise"
log_file="${log_folder}/$0.log"

mkdir -p $log_folder



echo " check the user id"
userid=$(id -u)
echo " User id is ${userid}"
if [ $userid -ne 0 ]; then
    echo " Run the script with Sudo access...."
    # exit 1
else
    echo " User is a sudo user , user id is ${userid}"
fi

function install_package()
{
    echo " Install the package : $1"
    dnf install $1 -y &>> $log_file
    #echo " check if package $1 is installed "
    if [ $? -ne 0 ]; then
         echo " command failed to install $1 " | tee -a $log_file
        exit 1
    else
        echo " The $1 package installed successfully" } | tee -a $log_file
    fi

}

echo " procedding to install other packages"
install_package nginx
install_package mysql
