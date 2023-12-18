#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
person1=$1
person2=$2
echo " $\R hi my name is $person1"
echo " $\G hey common what a surprise , I am $person2"
Timestamp=$(date +%F-%H-%M-%s)
if($? -ne 0)
echo "$\R check the script once"
else
echo "${Y} success"
fi