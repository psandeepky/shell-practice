#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR"
    exit 1
fi

validatesandeep(){
    if [ $1 -ne 0 ]; then
        echo "install error $2"
        exit 1
    else
        echo "install sucess $2"
    fi
}


dnf install mysql -y

validatesandeep $? "mysql"

dnf install nginx -y
validatesandeep $? "nginx"