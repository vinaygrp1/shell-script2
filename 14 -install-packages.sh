#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE(){
   if [ $1 -ne 0 ]
   then
        echo -e "$2...FAILURE"
        exit 1
    else
        echo -e "$2...SUCCESS"
    fi
}

if [ $USERID -ne 0 ]

then
    echo "please run this script with root access."
    exit 1 #manually exit if error comes
else
    echo "you are super user."
fi

for i in $@
do
    echo "packages to install:$i"
    dnf list installed $i
    if [ $? -eq 0]
    then
        echo "$! already installed...SKIPPING"
    else
        echo "$i not installed...Need to install"
    fi
    
done
