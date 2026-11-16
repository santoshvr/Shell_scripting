#!/bin/bash
log_folder="/var/log/shell-practise"
log_file="${log_folder}/${0}.log"
echo " ====================================== Test started ====================================="
mkdir -p $log_folder
echo "log file path  is $log_file"


#echo " check the user id"
userid=$(id -u)
#echo " User id is ${userid}"
if [ $userid -ne 0 ]; then
    echo " Run the script with Sudo access...."
    exit 1
else
    echo "Sudo user accessing"
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

echo "---- Proceeding to install  packages ----"
for package in $@
do
        dnf list installed $package &>>$log_file
        if [ $? -eq 0 ]; then
                echo " $package package already installed .. SKIPPING installation"
        else
                echo " going to install ${package} "
                install_package ${package}
        fi
done
echo "============================================= Test completed ====================================="
