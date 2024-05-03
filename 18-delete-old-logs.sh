#!/bin.bash

SOURCE_DIRECTORY=/tmp/appfgj-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]
then
    echo -e "$G Source_Directory exists $N"
else
    echo -e "$R Please make sure $SOURCE-DIRECTORY exists $N"
    exit 1
fi