#!/bin/bash
USERID=$(id -u)
if [$USERID -ne 0 ]
then
    echo "Please run this script with root access."
else
    echo "you are super user."
fi

dnf install mysql -y
