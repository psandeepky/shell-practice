#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR"
    exit 1
if

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "error"
    exit 1
else
    echo "sucess"
fi