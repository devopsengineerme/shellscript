#!/bin/bash
array=(20 30 40 50 90 sfdsf fgg ffdsg d 100)
echo " length of the array is ${array[*]} "
echo " length of the array is ${array[@]} " 
echo " 1st 5 items are ${array[@]:1:5} "
echo " no of items are ${#array[@]}"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
echo -e " $R checking the colours and $Y checking and $Y recheck and  $N normal colour "
timestamp=$(date +%F-%H-%M-%s)
logfile="/tmp/$0-$timestamp.log"
yum install git -y &>>$logfile
if [ $? -eq 0 ]
then 
echo -e " $G success "
else
echo -e " $R failed to install "
fi