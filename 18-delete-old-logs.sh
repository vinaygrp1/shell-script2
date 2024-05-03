#!/bin.bash

SOURCE_DIRECTORY=/tmp/app-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if[ -d $SOURCE_DIRECTORY ]
then
    echo -e "$G Source_Directory Exists $N"
else
    echo -e "$RPlease make sure $SOURCE-DIRECTORY exists $N"
    exit 1
fi