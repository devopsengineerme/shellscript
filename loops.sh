#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
echo -e  " $R number of packages to install are : $N $# "
echo -e " $G packages to install are : $N $@ "
if [ $(id -u) -eq 0 ]
then
echo -e " $G you can proceed with the root user "
else
echo -e " $R please proceed with the root user "
exit
fi
timestamp=$(date +%F)
logfile="/tmp/$0-$timestamp.log"
validate()
{
    if [ $1 -eq 0 ]
    then
    echo -e " $2 ......... $G installed successfully"
    else 
    echo -e " $2 ......... $R installation failed"
    fi
}
for package in {$@}
do
yum list installed $package &>> $logfile
if [ $? -eq 0 ]
then 
echo -e " $G $package was already  installed .... so skipping "
else
yum install $package -y  &>> $logfile
validate $? "installation of $package" 
fi
done